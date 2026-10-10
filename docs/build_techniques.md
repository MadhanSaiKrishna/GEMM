## HW Build Techniques

- #112, first tiled engine (128 lanes, RS=8, 300 MHz). The B tile sits in URAM and the A tile in 16 skewed BRAM banks. Each cycle does RS×16 multiply-adds at II=1, with each accumulator revisited every 16 cycles to hide the 8-cycle float add. Loads and stores are 512-bit bursts. Load, compute and store run one after another, and N=1 pads one column out to 256. (13.091 / 79.734 / 72.047 ms, 7.19 tok/s)
- #124, the same design with 256 lanes (RS=16, 295.7 MHz). Only the rows per tile doubled. This halves the number of tiles, so square nearly halves. (7.207 / 46.983 / 38.603 ms, 11.50 tok/s)
- #157, 384 lanes (RS=24, 253.1 MHz). The same engine with 24 rows per tile and 32 banks. It is faster on square and N=32, but the N=1 path is still the padded one. (5.847 / 40.829 / 31.099 ms, 12.84 tok/s)
- #158, a dedicated N=1 path at 256 lanes (300 MHz). Matrix-vector is limited by memory, not arithmetic. A streams through 16 lanes along k in 16-row tiles, with the rows interleaved so each accumulator is revisited every 16 cycles. Results stay in URAM and go out in one burst. This was the big tok/s jump. (7.081 / 6.680 / 38.015 ms, 66.84 tok/s)
- #199, the N=1 path with load and compute overlapped (RS=24). It uses a three-stage DATAFLOW region: one flat burst read of A, a FIFO, a two-slot tile buffer, then the dot stage. N=1 and tok/s improved, but the build closed at only 156.2 MHz, so square and N=32 got slower. It was submitted after the deadline. (9.089 / 4.821 / 48.482 ms, 83.61 tok/s)
- 
