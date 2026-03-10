pub const ZERO_ADDRESS: felt252 = 0;

// Use distinct addresses in tests to avoid conflict with snforge predeployed contracts
#[cfg(feature: "testing")]
pub const STRK_ADDRESS: felt252 = 0x0112233445566778899aabbccddeeff00112233445566778899aabbccddeef;
#[cfg(not(feature: "testing"))]
pub const STRK_ADDRESS: felt252 = 0x49D36570D4E46F48E99674BD3FCC84644DDD6B96F7C741B1562B82F9E004DC7;

#[cfg(feature: "testing")]
pub const ORACLE_ADDRESS: felt252 = 0x02233445566778899aabbccddeeff0002233445566778899aabbccddeeff00;
#[cfg(not(feature: "testing"))]
pub const ORACLE_ADDRESS: felt252 = 0x07e6d6ac1f8be7817f218f8d7e83f91ef9181926625cb9929bba4d24575bbb02;

pub const TWO_POWER_128: felt252 = 340282366920938463463374607431768211456;
pub const MASK_250: u256 = 1809251394333065553493296640760748560207343510400633813116524750123642650623;
// Production: use deployed verifier. Testing: use class hash from test build (sumo_integrationtest_Groth16VerifierBN254).
#[cfg(feature: "testing")]
pub const GARAGA_VERIFY_CLASSHASH: felt252 = 0x0331714e3bf5bedffb8fe2f55dfaf3d4e5a59419e3ec74e6493c45ff2bcda194;
#[cfg(not(feature: "testing"))]
pub const GARAGA_VERIFY_CLASSHASH: felt252 = 0x013da60eb4381fca5d1e87941579bf09b5218b62db1f812bf6b59999002d230c;
pub const MODULUS_F: u256 = 6472322537804972268794034248194861302128540584786330577698326766016488520183;

pub const DEPLOY_FEE_GAS: u128 = 5000;
pub const LOGIN_FEE_GAS: u128 = 5000;

