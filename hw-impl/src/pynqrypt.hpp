#pragma once

#include <cstdint>
#include <cstddef>
#include <ap_int.h>

namespace crypto {

static const int AES_ROUNDS = 10;
static const int NONCE_SIZE = 12;
static const int BLOCK_SIZE = 16;
static const int KEY_SIZE = 16;
static const int NUM_ROUNDS = 10;

using aes_atom = ap_uint<8>;
using aes_word = ap_uint<32>;
using aes_block = ap_uint<128>;
using aes_nonce = ap_uint<96>;
using off64_t = size_t;

class Pynqrypt {

    private:
        aes_block key;
        aes_nonce nonce;

        aes_block round_keys[AES_ROUNDS + 1];

        // ctr functions
        void ctr_compute_nonce(aes_block &block_nonce, off64_t offset);
        void ctr_xor_block(aes_block &block, aes_block block_nonce);

        // encryption functions
        void aes_encrypt_block(aes_block &state);
        void aes_sub_bytes(aes_block &state);
        void aes_shift_rows(aes_block &state);
        void aes_mix_columns(aes_block &state);

        // common functions
        void aes_generate_round_keys();
        void aes_rotate_word(aes_word &word);
        void aes_sub_word(aes_word &word);
        void aes_xor_round_constant(aes_word &word, int round);

        // utils
        void assign_swap_endianness(aes_block from, aes_block &to);

    public:
        Pynqrypt(aes_block key, aes_nonce nonce);

        void ctr_encrypt(
            size_t plaintext_length,
            aes_block *plaintext,
            aes_block *ciphertext
        );

};

}
