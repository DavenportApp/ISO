# Markdown to Word Conversion Guide

## Overview

This guide explains how to convert the ISO 9001:2026 QMS documentation from Markdown (.md) to Microsoft Word (.docx) format. This is useful for:

- 📝 Reviewing and editing in Microsoft Word
- 📤 Sharing with stakeholders who prefer Word documents
- 🖨️ Printing with professional formatting
- 📁 Archival in organizational document management systems
- ✍️ Adding tracked changes and comments

---

## 🚀 Quick Start - Three Methods

### Method 1: Using Pandoc (Recommended) ⭐

**Pandoc** is a universal document converter that produces high-quality Word documents.

#### Install Pandoc

**Windows:**
```bash
# Using Chocolatey
choco install pandoc

# Or download installer from: https://pandoc.org/installing.html
```

**Mac:**
```bash
# Using Homebrew
brew install pandoc
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt-get install pandoc

# Fedora
sudo dnf install pandoc

# Or download from: https://pandoc.org/installing.html
```

#### Convert Single File

```bash
# Basic conversion
pandoc README.md -o README.docx

# With better formatting
pandoc README.md -o README.docx --reference-doc=reference.docx

# With table of contents
pandoc README.md -o README.docx --toc

# Complete with all options
pandoc README.md -o README.docx --toc --number-sections --highlight-style=tango
```

#### Convert All Files (Use Our Script!)

We've provided a conversion script for your convenience:

```bash
# Make sure you're in the ISO directory
cd /path/to/ISO

# Run the conversion script
./convert-to-docx.sh

# Or convert specific folder
./convert-to-docx.sh clause-4-context
```

This creates a `docx-output` folder with all converted files maintaining the same structure.

---

### Method 2: Online Converters (No Installation)

If you can't install software, use online converters:

**Recommended Online Tools:**

1. **CloudConvert** - https://cloudconvert.com/md-to-docx
   - ✅ High quality
   - ✅ Batch conversion
   - ✅ Free for reasonable use
   
2. **Convertio** - https://convertio.co/md-docx/
   - ✅ Simple interface
   - ✅ Fast conversion
   - ✅ Supports multiple files

3. **OnlineConvert** - https://document.online-convert.com/convert-to-docx
   - ✅ Additional formatting options
   - ✅ No registration required

**Steps:**
1. Go to one of the websites above
2. Upload your .md file(s)
3. Click "Convert"
4. Download the resulting .docx file(s)

⚠️ **Privacy Note:** Be aware that online converters upload your files to their servers. For sensitive documentation, use local conversion methods.

---

### Method 3: VS Code Extensions

If you use Visual Studio Code:

**Markdown PDF Extension:**
1. Install "Markdown PDF" extension by yzane
2. Open any .md file
3. Right-click in editor → "Markdown PDF: Export (pdf)" 
4. Then convert PDF to Word if needed

**Docs-Markdown Extension:**
1. Install "Docs Markdown" extension
2. Provides enhanced Markdown editing
3. Can export to various formats

---

## 📋 Detailed Pandoc Usage

### Basic Syntax

```bash
pandoc [input-file.md] -o [output-file.docx] [options]
```

### Useful Options

| Option | Description | Example |
|--------|-------------|---------|
| `--toc` | Generate table of contents | `pandoc file.md -o file.docx --toc` |
| `--toc-depth=N` | TOC depth (1-6) | `pandoc file.md -o file.docx --toc --toc-depth=3` |
| `--number-sections` | Number headings | `pandoc file.md -o file.docx --number-sections` |
| `--reference-doc=FILE` | Use Word template | `pandoc file.md -o file.docx --reference-doc=template.docx` |
| `--highlight-style=STYLE` | Code syntax highlighting | `pandoc file.md -o file.docx --highlight-style=tango` |
| `--metadata title="TITLE"` | Set document title | `pandoc file.md -o file.docx --metadata title="QMS Doc"` |

### Advanced Examples

**Convert with custom styling:**
```bash
pandoc README.md -o README.docx \
  --toc \
  --toc-depth=3 \
  --number-sections \
  --highlight-style=tango \
  --metadata title="ISO 9001:2026 QMS Documentation" \
  --metadata author="Quality Management Team" \
  --metadata date="2026-02-15"
```

**Convert multiple files into one document:**
```bash
pandoc README.md IMPLEMENTATION-GUIDE.md PROJECT-SUMMARY.md \
  -o Complete-Documentation.docx \
  --toc \
  --number-sections
```

**Convert with custom Word template:**
```bash
# First create a reference.docx with your organization's styles
pandoc --print-default-data-file reference.docx > reference.docx

# Edit reference.docx with your styles in Word

# Then use it for conversion
pandoc README.md -o README.docx --reference-doc=reference.docx
```

---

## 🔧 Using the Conversion Script

### Script Features

The `convert-to-docx.sh` script provides:
- ✅ Batch conversion of all .md files
- ✅ Maintains folder structure
- ✅ Skips already converted files (optional)
- ✅ Progress indicators
- ✅ Error handling
- ✅ Creates organized output folder

### Usage

**Convert everything:**
```bash
./convert-to-docx.sh
```

**Convert specific folder:**
```bash
./convert-to-docx.sh clause-4-context
```

**Convert with custom options:**
```bash
# Edit the script to customize pandoc options
nano convert-to-docx.sh
# Then run
./convert-to-docx.sh
```

### Output Structure

```
docx-output/
├── README.docx
├── DOCUMENTATION-INDEX.docx
├── IMPLEMENTATION-GUIDE.docx
├── clause-4-context/
│   ├── README.docx
│   ├── 4.1-understanding-context.docx
│   └── ...
├── clause-5-leadership/
│   └── ...
└── procedures/
    └── ...
```

---

## 🎨 Customizing Word Output

### Creating a Reference Document

Pandoc can use a reference Word document to apply custom styles:

1. **Generate default reference:**
   ```bash
   pandoc --print-default-data-file reference.docx > my-reference.docx
   ```

2. **Customize in Word:**
   - Open `my-reference.docx` in Microsoft Word
   - Modify styles (Heading 1, Heading 2, Normal, etc.)
   - Change fonts, colors, spacing
   - Add headers/footers
   - Save and close

3. **Use your reference:**
   ```bash
   pandoc README.md -o README.docx --reference-doc=my-reference.docx
   ```

### Style Mapping

Markdown elements map to Word styles:

| Markdown | Word Style |
|----------|------------|
| `# Heading` | Heading 1 |
| `## Heading` | Heading 2 |
| `### Heading` | Heading 3 |
| Regular text | Normal |
| `> Quote` | Block Quote |
| `- List` | List Bullet |
| `1. List` | List Number |
| `` `code` `` | Verbatim Char |
| ```` ```code block``` ```` | Source Code |

---

## 📦 Batch Conversion Examples

### Convert All Clause Folders

```bash
for dir in clause-*; do
    mkdir -p "docx-output/$dir"
    for file in "$dir"/*.md; do
        filename=$(basename "$file" .md)
        pandoc "$file" -o "docx-output/$dir/$filename.docx" --toc --number-sections
    done
done
```

### Convert with Progress Bar

```bash
#!/bin/bash
files=(*.md **/*.md)
total=${#files[@]}
count=0

for file in "${files[@]}"; do
    ((count++))
    echo "Converting ($count/$total): $file"
    output="${file%.md}.docx"
    pandoc "$file" -o "docx-output/$output" --toc
done
```

---

## 🔍 Troubleshooting

### Pandoc Not Found

**Problem:** `bash: pandoc: command not found`

**Solution:**
1. Install Pandoc (see installation instructions above)
2. Restart your terminal
3. Verify: `pandoc --version`

### Poor Formatting

**Problem:** Output looks plain or poorly formatted

**Solution:**
- Use `--toc` for table of contents
- Use `--number-sections` for numbered headings
- Create a custom reference document with your styles
- Use `--highlight-style` for better code formatting

### Images Not Converting

**Problem:** Images don't appear in Word document

**Solution:**
- Ensure image paths are correct (relative or absolute)
- Use `--extract-media=.` to extract embedded images
- Or use `--self-contained` to embed images

### Large Files

**Problem:** Conversion is slow or fails for large files

**Solution:**
- Split large files into smaller sections
- Convert sections individually
- Combine later if needed in Word
- Increase memory if possible

### Tables Not Formatting Correctly

**Problem:** Markdown tables look wrong in Word

**Solution:**
- Ensure tables use proper Markdown syntax
- Use simple tables (no merged cells)
- Post-process in Word if needed
- Consider using a reference document with custom table styles

---

## 💡 Tips and Best Practices

### Before Conversion

1. **Review Markdown files** - Ensure they render correctly
2. **Fix broken links** - Update relative paths if needed
3. **Optimize images** - Use reasonable sizes
4. **Check tables** - Verify table syntax

### During Conversion

1. **Use consistent options** - Same pandoc flags for all files
2. **Test with one file first** - Verify formatting before batch conversion
3. **Keep originals** - Never delete .md files after conversion
4. **Use version control** - Commit before major conversions

### After Conversion

1. **Review in Word** - Check formatting, tables, images
2. **Add final touches** - Headers, footers, page numbers
3. **Save as template** - If you like the format
4. **Document the process** - Note which pandoc options you used

### For Distribution

1. **Add cover page** - Include title, date, version
2. **Add headers/footers** - Document name, page numbers
3. **Apply styles consistently** - Use Word's style system
4. **Generate TOC in Word** - Update after finalizing
5. **Save as PDF** - For read-only distribution

---

## 🎯 Common Conversion Scenarios

### Scenario 1: Convert for Review

```bash
# Quick conversion with TOC for management review
pandoc README.md -o README-Review.docx --toc --number-sections
```

### Scenario 2: Create Complete Manual

```bash
# Combine all documentation into one Word file
pandoc README.md \
       IMPLEMENTATION-GUIDE.md \
       clause-*/README.md \
       procedures/*.md \
       -o ISO-9001-2026-Complete-Manual.docx \
       --toc \
       --toc-depth=3 \
       --number-sections \
       --metadata title="ISO 9001:2026 QMS Complete Manual"
```

### Scenario 3: Department-Specific Documents

```bash
# Convert only leadership documentation
pandoc clause-5-leadership/*.md \
       -o Leadership-Documentation.docx \
       --toc \
       --number-sections
```

### Scenario 4: Print-Ready Version

```bash
# With custom reference for professional printing
pandoc README.md -o README-Print.docx \
       --reference-doc=print-template.docx \
       --toc \
       --toc-depth=2 \
       --number-sections
```

---

## 📚 Additional Resources

### Documentation

- **Pandoc Manual:** https://pandoc.org/MANUAL.html
- **Pandoc User's Guide:** https://pandoc.org/getting-started.html
- **Markdown Guide:** https://www.markdownguide.org/

### Alternatives to Pandoc

1. **Writage** - MS Word plugin for Markdown
   - https://www.writage.com/
   - Edit Markdown directly in Word

2. **Typora** - Markdown editor with export
   - https://typora.io/
   - WYSIWYG editor, export to Word

3. **MarkdownPad** (Windows)
   - http://markdownpad.com/
   - Live preview and export

4. **MacDown** (Mac)
   - https://macdown.uranusjr.com/
   - Open source Markdown editor

### Python Scripts

If you prefer Python:

```python
# Using pypandoc
import pypandoc
output = pypandoc.convert_file('README.md', 'docx', outputfile='README.docx')
```

---

## ❓ FAQ

**Q: Will formatting be preserved?**  
A: Mostly yes - headings, lists, tables, code blocks, and bold/italic text convert well. Complex formatting may need adjustment.

**Q: Can I convert back from Word to Markdown?**  
A: Yes! `pandoc document.docx -o document.md`

**Q: Do I need Microsoft Word installed?**  
A: No, Pandoc creates .docx files without needing Word installed. But you'll need Word to open them.

**Q: What about page breaks?**  
A: Pandoc doesn't handle page breaks automatically. Add them in Word after conversion.

**Q: Can I automate this in a CI/CD pipeline?**  
A: Yes, Pandoc works great in automation. Install it in your CI environment and run the conversion script.

**Q: Will links work in the Word document?**  
A: Internal links (to headings) work. External URLs work as clickable links. Internal file links may need adjustment.

**Q: What about the size of converted files?**  
A: Word files are typically larger than Markdown. A 100KB .md file might be 200-500KB as .docx depending on content.

---

## 🆘 Support

If you need help with conversion:

1. Check the Pandoc documentation
2. Review this guide's troubleshooting section
3. Try online converters as a quick alternative
4. Ask on GitHub issues for repository-specific problems
5. Consult the Pandoc mailing list for complex issues

---

**Document Reference:** QMS-CONV-001  
**Version:** 1.0  
**Last Updated:** 2026-02-15  
**Pandoc Version Used:** 2.x or higher
