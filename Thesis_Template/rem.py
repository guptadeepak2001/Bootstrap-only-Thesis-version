import os

# Define the replacements
replacements = {
    '–': '--',   # en-dash
    '—': '---',  # em-dash
    '\u202F': ' ',  # narrow no-break space
    '\u00A0': ' ',  # non-breaking space
}

# Get current directory
directory = os.getcwd()
print(f"Processing directory: {directory}")

# Process all .tex files
for filename in os.listdir(directory):
    if filename.endswith('.tex'):
        filepath = os.path.join(directory, filename)
        print(f"Processing file: {filename}")

        # Read file content
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        # Apply replacements
        for target, replacement in replacements.items():
            content = content.replace(target, replacement)

        # Write back updated content
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

        print(f"✅ Fixed: {filename}")

print("✅ All .tex files processed successfully!")
