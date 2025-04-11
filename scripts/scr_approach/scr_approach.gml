function approach(value, target, amount) {
    return value + clamp(target - value, -abs(amount), abs(amount));
}
