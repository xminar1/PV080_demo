#include <stdlib.h>
#include "utils.h"

/*
 * 1. Receive a message
 * 2. Split it into IV and ciphertext
 * 3. Decrypt the message
 * 4. Print the IV and the plaintext
 */
int main(void) {
    uint8_t message[48];
    uint8_t iv[16];
    uint8_t ciphertext[32];
    uint8_t plaintext[32];
  
    // iv || ciphertext
    recv_message(message);
    
    memcpy(iv, message, 16);
    memcpy(ciphertext, message + 16, 48);

    decrypt_message(iv, ciphertext, plaintext);

    print_iv(iv);
    print_plaintext(plaintext);

}


