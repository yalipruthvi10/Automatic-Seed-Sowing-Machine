module storage_monitor(
    input high_temp,
    input high_humidity,
    output alert
);

assign alert = high_temp | high_humidity;

endmodule
