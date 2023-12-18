function orderIdInput(orderId) {
    orderId.value = orderId.value.replace(/[^\d]/g, '');
}