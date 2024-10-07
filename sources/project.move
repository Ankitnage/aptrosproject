module MyModule::DigitalArtAuth {

    use aptos_framework::signer;
    use std::vector;

    /// Struct representing a digital artwork.
    struct Artwork has store, key {
        artist: address,        // Address of the artist
        title: vector<u8>,      // Title of the artwork
        hash: vector<u8>,       // Unique hash to authenticate the artwork
    }

    /// Function for an artist to register their digital artwork.
    public fun register_artwork(artist: &signer, title: vector<u8>, hash: vector<u8>) {
        let artwork = Artwork {
            artist: signer::address_of(artist),
            title,
            hash,
        };
        move_to(artist, artwork);
    }

    /// Function to verify if an artwork is registered by providing the hash.
    public fun verify_artwork(artist_address: address, hash: vector<u8>) acquires Artwork {
        let artwork = borrow_global<Artwork>(artist_address);

        // Ensure the provided hash matches the registered artwork hash
        assert!(artwork.hash == hash, 1);
    }
}
