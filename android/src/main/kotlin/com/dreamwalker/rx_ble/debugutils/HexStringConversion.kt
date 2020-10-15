package com.dreamwalker.rx_ble.debugutils

fun ByteArray.toHexString() = joinToString("") { String.format("%02x", it) }
