#!/bin/bash

# ISO 9001:2026 QMS Documentation - Markdown to Word Conversion Script
# This script converts all Markdown files to Word (.docx) format using Pandoc

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
OUTPUT_DIR="docx-output"
PANDOC_OPTIONS="--toc --number-sections --highlight-style=tango"

echo -e "${BLUE}╔═══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                                                               ║${NC}"
echo -e "${BLUE}║     ISO 9001:2026 Markdown to Word Conversion Script         ║${NC}"
echo -e "${BLUE}║                                                               ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check if Pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo -e "${RED}❌ Error: Pandoc is not installed!${NC}"
    echo ""
    echo "Please install Pandoc first:"
    echo ""
    echo "  Windows:  choco install pandoc"
    echo "  Mac:      brew install pandoc"
    echo "  Linux:    sudo apt-get install pandoc"
    echo ""
    echo "Or download from: https://pandoc.org/installing.html"
    echo ""
    exit 1
fi

echo -e "${GREEN}✓ Pandoc found: $(pandoc --version | head -n1)${NC}"
echo ""

# Create output directory
echo -e "${BLUE}📁 Creating output directory...${NC}"
mkdir -p "$OUTPUT_DIR"
echo -e "${GREEN}   ✓ Created: $OUTPUT_DIR/${NC}"
echo ""

# Function to convert a single file
convert_file() {
    local input_file="$1"
    local relative_path="${input_file#./}"  # Remove leading ./
    local output_file="$OUTPUT_DIR/${relative_path%.md}.docx"
    local output_dir=$(dirname "$output_file")
    
    # Create output directory if it doesn't exist
    mkdir -p "$output_dir"
    
    # Convert the file
    echo -e "   ${YELLOW}Converting:${NC} $relative_path"
    
    if pandoc "$input_file" -o "$output_file" $PANDOC_OPTIONS 2>/dev/null; then
        echo -e "   ${GREEN}✓ Created:${NC} $output_file"
        return 0
    else
        echo -e "   ${RED}✗ Failed:${NC} $relative_path"
        return 1
    fi
}

# Determine what to convert
if [ $# -eq 0 ]; then
    # No arguments - convert everything
    echo -e "${BLUE}📋 Converting all Markdown files...${NC}"
    echo ""
    
    # Find all .md files
    mapfile -t md_files < <(find . -name "*.md" -not -path "./.git/*" -not -path "./docx-output/*" | sort)
    
    if [ ${#md_files[@]} -eq 0 ]; then
        echo -e "${YELLOW}⚠️  No Markdown files found!${NC}"
        exit 0
    fi
    
    total=${#md_files[@]}
    converted=0
    failed=0
    
    echo -e "${BLUE}Found $total Markdown files to convert${NC}"
    echo ""
    
    # Convert each file
    for file in "${md_files[@]}"; do
        if convert_file "$file"; then
            ((converted++))
        else
            ((failed++))
        fi
    done
    
else
    # Argument provided - convert specific folder or file
    TARGET="$1"
    
    if [ ! -e "$TARGET" ]; then
        echo -e "${RED}❌ Error: '$TARGET' does not exist!${NC}"
        exit 1
    fi
    
    if [ -f "$TARGET" ]; then
        # Single file
        echo -e "${BLUE}📄 Converting single file: $TARGET${NC}"
        echo ""
        if convert_file "$TARGET"; then
            converted=1
            failed=0
        else
            converted=0
            failed=1
        fi
    else
        # Directory
        echo -e "${BLUE}📁 Converting files in: $TARGET${NC}"
        echo ""
        
        mapfile -t md_files < <(find "$TARGET" -name "*.md" | sort)
        
        if [ ${#md_files[@]} -eq 0 ]; then
            echo -e "${YELLOW}⚠️  No Markdown files found in '$TARGET'!${NC}"
            exit 0
        fi
        
        total=${#md_files[@]}
        converted=0
        failed=0
        
        echo -e "${BLUE}Found $total Markdown files to convert${NC}"
        echo ""
        
        for file in "${md_files[@]}"; do
            if convert_file "$file"; then
                ((converted++))
            else
                ((failed++))
            fi
        done
    fi
fi

# Summary
echo ""
echo -e "${BLUE}╔═══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                                                               ║${NC}"
echo -e "${BLUE}║                    CONVERSION COMPLETE                        ║${NC}"
echo -e "${BLUE}║                                                               ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}✓ Successfully converted: $converted files${NC}"
if [ $failed -gt 0 ]; then
    echo -e "${RED}✗ Failed to convert: $failed files${NC}"
fi
echo ""
echo -e "${BLUE}📦 Output location: $(pwd)/$OUTPUT_DIR${NC}"
echo ""

# Show some of the converted files
echo -e "${BLUE}📄 Sample converted files:${NC}"
ls -lh "$OUTPUT_DIR"/*.docx 2>/dev/null | head -5 | awk '{print "   " $9 " (" $5 ")"}'
if [ $(find "$OUTPUT_DIR" -name "*.docx" | wc -l) -gt 5 ]; then
    echo "   ... and more"
fi
echo ""

# Next steps
echo -e "${BLUE}📋 Next Steps:${NC}"
echo "   1. Navigate to the '$OUTPUT_DIR' folder"
echo "   2. Open any .docx file in Microsoft Word"
echo "   3. Review formatting and make any final adjustments"
echo "   4. Add headers, footers, or page numbers as needed"
echo "   5. Save or export as needed"
echo ""

# Tips
echo -e "${BLUE}💡 Tips:${NC}"
echo "   • To convert a specific folder: ./convert-to-docx.sh clause-4-context"
echo "   • To convert a single file: ./convert-to-docx.sh README.md"
echo "   • To customize options: edit this script and modify PANDOC_OPTIONS"
echo "   • For better styling: create a reference.docx and use --reference-doc"
echo ""
echo -e "${GREEN}🎉 Conversion complete!${NC}"
echo ""
