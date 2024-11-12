# Active Windows 7

A simple tool for activating Windows 7.

## 🗄 Overview

This project provides a straightforward method to activate Windows 7. The tool is designed to streamline the activation process and ensure that your Windows 7 installation is genuine and properly activated.

## 💪 Features

- Easy Activation: Simplify the Windows 7 activation process with a user-friendly interface.
- Compatibility: Works with various editions of Windows 7.
- Efficiency: Quick and effective activation.

## 🧩 Requirements

- Operating System: Windows 7
- Permissions: Administrator rights required

## 🛠️  Installation
### **Method 1**
1. Download: Obtain the latest version of the tool from the [releases page](https://github.com/oop7/Active-windows7/releases).
2. Extract: Unzip the downloaded file to a directory of your choice.

### **Method 2**
1. **Open PowerShell**:
   - Right-click the Start menu and select **Windows PowerShell** or **Windows Terminal**.
   - If prompted by User Account Control (UAC), click **Yes** to allow PowerShell to run with administrative privileges.

2. Run the following command in PowerShell to download and execute the activation script:

   ```powershell
   irm https://github.com/oop7/Active-windows7/releases/download/v1.1/v1.1.zip -OutFile v1.1.zip; Expand-Archive v1.1.zip -DestinationPath . -Force; cmd.exe /c .\v1.1\script.bat
   ```

## 💻  Usage

1. Launch the tool with administrative rights.
2. Follow the on-screen instructions to activate your Windows 7 installation.
3. Restart your computer if prompted to complete the activation process.

## ✅ Troubleshooting

- Activation Failed: Ensure you are running the tool as an administrator
- Compatibility Issues: Verify that you are using the correct version of the tool for your Windows 7 edition.

## 📜  License

This project is licensed under the MIT License.

## ℹ️ **Credit**

- Special thanks to  `Dir3ctr1x`, `MASSGRAVE`, `DEAM0` and `Daz` which was instrumental in this script's functionality.

## ❓ Contact

For questions or support, please open an issue on the GitHub repository.
