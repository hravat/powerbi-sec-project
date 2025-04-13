import os
import zipfile
import shutil

# Hardcoded path to the folder containing ZIP files
zip_folder = "C:/Users/Hussain/Desktop/SEC"
extract_to = "C:/Users/Hussain/Desktop/extracted_files"  # Path where files will be extracted

# Step 1: Iterate over all ZIP files in the directory
for zip_file in os.listdir(zip_folder):
    if zip_file.endswith(".zip"):
        zip_file_path = os.path.join(zip_folder, zip_file)

        # Extract the base name of the zip file (e.g., "2024q1.zip" -> "2024q1")
        base_name = zip_file.split(".")[0]

        # Extract files from the ZIP file
        with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
            zip_ref.extractall(extract_to)
        print(f"Extracted {zip_file} to: {extract_to}")

        # Step 2: Rename the extracted files based on the zip file's name (e.g., 2024q1)
        for filename in os.listdir(extract_to):
            file_path = os.path.join(extract_to, filename)
            if os.path.isfile(file_path):
                # Renaming based on the year and quarter (e.g., 2024q1 -> num-2024-Q1)
                if "num" in filename:
                    new_name = f"num-{base_name.replace('q', '-Q')}.txt"
                elif "pre" in filename:
                    new_name = f"pre-{base_name.replace('q', '-Q')}.txt"
                elif "sub" in filename:
                    new_name = f"sub-{base_name.replace('q', '-Q')}.txt"
                elif "tag" in filename:
                    new_name = f"tag-{base_name.replace('q', '-Q')}.txt"
                else:
                    continue  # Skip files that don't match any of the categories

                new_path = os.path.join(extract_to, new_name)
                os.rename(file_path, new_path)
                print(f"Renamed file {filename} to {new_name}")

                # Step 3: Move the renamed files into the respective folders
                folders = ['num', 'pre', 'sub', 'tag']
                for folder in folders:
                    folder_path = os.path.join(extract_to, folder)
                    if not os.path.exists(folder_path):
                        os.makedirs(folder_path)
                    if folder in new_name:
                        shutil.move(new_path, os.path.join(folder_path, new_name))
                        print(f"Moved {new_name} to folder {folder}")

print("Processing complete.")
