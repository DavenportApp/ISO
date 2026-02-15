#!/bin/bash

# ISO 9001:2026 QMS Documentation Packaging Script
# This script creates a clean ZIP package of all documentation without Git history

set -e  # Exit on error

# Configuration
PACKAGE_NAME="ISO-9001-2026-QMS-Documentation"
DATE_STAMP=$(date +%Y-%m-%d)
OUTPUT_FILE="${PACKAGE_NAME}-${DATE_STAMP}.zip"
TEMP_DIR="/tmp/${PACKAGE_NAME}"

echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                                                               ║"
echo "║     ISO 9001:2026 QMS Documentation Packaging Script         ║"
echo "║                                                               ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""

# Clean up any previous temp directory
if [ -d "$TEMP_DIR" ]; then
    echo "🧹 Cleaning up previous temporary files..."
    rm -rf "$TEMP_DIR"
fi

# Create temporary directory
echo "📁 Creating temporary directory..."
mkdir -p "$TEMP_DIR"

# Copy documentation files (excluding .git and other non-documentation files)
echo "📋 Copying documentation files..."

# Copy main documentation files
cp README.md "$TEMP_DIR/" 2>/dev/null || echo "Warning: README.md not found"
cp DOCUMENTATION-INDEX.md "$TEMP_DIR/" 2>/dev/null || echo "Warning: DOCUMENTATION-INDEX.md not found"
cp IMPLEMENTATION-GUIDE.md "$TEMP_DIR/" 2>/dev/null || echo "Warning: IMPLEMENTATION-GUIDE.md not found"
cp PROJECT-SUMMARY.md "$TEMP_DIR/" 2>/dev/null || echo "Warning: PROJECT-SUMMARY.md not found"

# Copy clause directories
echo "📚 Copying clause documentation..."
for clause_dir in clause-*; do
    if [ -d "$clause_dir" ]; then
        cp -r "$clause_dir" "$TEMP_DIR/"
        echo "   ✓ Copied $clause_dir"
    fi
done

# Copy supporting directories
echo "📦 Copying supporting documentation..."
for support_dir in new-requirements procedures forms templates; do
    if [ -d "$support_dir" ]; then
        cp -r "$support_dir" "$TEMP_DIR/"
        echo "   ✓ Copied $support_dir"
    fi
done

# Create a package info file
echo "📝 Creating package information file..."
cat > "$TEMP_DIR/PACKAGE-INFO.txt" << EOF
ISO 9001:2026 QMS Documentation Package
========================================

Package Date: $(date +"%Y-%m-%d %H:%M:%S")
Package Version: 2.0
Standard: ISO 9001:2026

Contents:
---------
✓ Complete ISO 9001:2026 clause documentation (Clauses 4-10)
✓ Climate change impact assessment
✓ Digital transformation roadmap
✓ Sustainability integration plan
✓ Essential procedures (risk management, internal audit, etc.)
✓ Implementation guide with 8-phase roadmap
✓ Complete documentation index
✓ Forms and templates directories

Total Files: 41+ markdown documents
Total Size: ~1.8MB

Getting Started:
----------------
1. Open README.md for QMS overview and navigation
2. Review DOCUMENTATION-INDEX.md for complete file reference
3. Read IMPLEMENTATION-GUIDE.md for implementation approach
4. Check PROJECT-SUMMARY.md for project details

Documentation Structure:
-----------------------
ISO-9001-2026-QMS-Documentation/
├── README.md
├── DOCUMENTATION-INDEX.md
├── IMPLEMENTATION-GUIDE.md
├── PROJECT-SUMMARY.md
├── clause-4-context/
├── clause-5-leadership/
├── clause-6-planning/
├── clause-7-support/
├── clause-8-operation/
├── clause-9-performance-evaluation/
├── clause-10-improvement/
├── new-requirements/
├── procedures/
├── forms/
└── templates/

For questions or support, refer to the contact information in PROJECT-SUMMARY.md

---
Document Reference: QMS-PKG-001
Version: 2.0
Effective Date: 2026-02-15
EOF

# Create the ZIP file
echo "🗜️  Creating ZIP package..."
cd /tmp
if command -v zip &> /dev/null; then
    zip -r "$OUTPUT_FILE" "${PACKAGE_NAME}" -q
    echo "   ✓ Package created using zip"
elif command -v 7z &> /dev/null; then
    7z a -tzip "$OUTPUT_FILE" "${PACKAGE_NAME}" > /dev/null
    echo "   ✓ Package created using 7z"
else
    echo "   ⚠️  Neither zip nor 7z found. Creating tar.gz instead..."
    tar -czf "${PACKAGE_NAME}-${DATE_STAMP}.tar.gz" "${PACKAGE_NAME}"
    OUTPUT_FILE="${PACKAGE_NAME}-${DATE_STAMP}.tar.gz"
fi

# Move to original directory
ORIGINAL_DIR="$OLDPWD"
mv "$OUTPUT_FILE" "$ORIGINAL_DIR/"

# Clean up temp directory
echo "🧹 Cleaning up temporary files..."
rm -rf "$TEMP_DIR"

# Display success message
echo ""
echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                                                               ║"
echo "║                    ✅ PACKAGE CREATED!                        ║"
echo "║                                                               ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""
echo "📦 Package: $OUTPUT_FILE"
echo "📍 Location: $ORIGINAL_DIR/$OUTPUT_FILE"
echo ""

# Get file size
if [ -f "$ORIGINAL_DIR/$OUTPUT_FILE" ]; then
    FILE_SIZE=$(ls -lh "$ORIGINAL_DIR/$OUTPUT_FILE" | awk '{print $5}')
    echo "📊 Size: $FILE_SIZE"
fi

echo ""
echo "📋 Next Steps:"
echo "   1. Extract the package: unzip $OUTPUT_FILE"
echo "   2. Open README.md to start reviewing"
echo "   3. Review DOCUMENTATION-INDEX.md for complete file reference"
echo ""
echo "🎉 Documentation package is ready for distribution!"
echo ""
