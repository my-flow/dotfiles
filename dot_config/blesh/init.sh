# Silence warnings for readline functions ble.sh marks as unsupported ("-").
# rlfunc2widget sets ret=ble/widget/- for these; defining it as a no-op
# prevents the "unsupported readline function" warning from being emitted.
function ble/widget/- { :; }
