

# Digital Art Authentication Smart Contract

## Vision

The Digital Art Authentication project aims to provide a decentralized solution for digital artists to authenticate and register their artwork on the blockchain. By assigning a unique hash to each digital artwork, this project offers a transparent and immutable registry for verifying artwork authenticity, ensuring protection for artists against forgery and unauthorized use.

## Features

- **Register Artwork**: Digital artists can register their artworks by providing a title and a unique hash representing the artwork, ensuring the authenticity of their digital creations.
- **Verify Artwork**: Anyone can verify whether a specific artwork is registered by providing the artist's address and the artwork's hash, ensuring that the artwork is genuine.
- **Immutable Records**: The artwork registration is stored on-chain, providing an immutable record of ownership and authenticity.

## Contract Address

- **Network**: Aptos Devnet
- **Contract Address**: `0x0b2fdbea5338fbfc75a6f9d8da5a20a77b3bc2441c9067734089dd84d7d2f9da`

## How It Works

1. **Register Artwork**:

   - Artists call the `register_artwork` function to register their artwork.
   - The function takes the artwork title and a unique hash as parameters and stores the artwork information, including the artist's address, on the blockchain.

2. **Verify Artwork**:
   - Anyone can call the `verify_artwork` function to check if an artwork is registered.
   - The function takes the artist's address and the artwork hash as parameters and verifies if the provided hash matches the registered artwork.

## Future Scope

- **Ownership Transfer**: Add functionality to enable artists to transfer ownership of registered artworks, making it possible to sell and track the artwork's history.
- **NFT Integration**: Integrate with NFTs to represent registered artworks as tradable tokens, providing additional protection and monetization options for artists.
- **Artwork Metadata**: Extend the registration process to include additional metadata, such as creation date, description, and medium, to provide a more detailed record.
- **Certificate of Authenticity**: Generate a digital certificate of authenticity that artists can share with potential buyers or collectors.
- **Search and Discovery**: Develop an interface to allow users to search for registered artworks by title or hash, making it easier for collectors and buyers to discover new artists and authenticate pieces.

## Getting Started

- Clone this repository and install the necessary dependencies for the Aptos blockchain.
- Deploy the contract using your preferred deployment tool.
- Once deployed, artists can register their artwork, and others can verify artwork authenticity through the smart contract functions.

## Contributing

We welcome contributions! If you have suggestions for improving the Digital Art Authentication platform or want to add new features, feel free to open an issue or submit a pull request.

---

Feel free to modify and expand the README as your project evolves and new features are added!
