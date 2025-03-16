; ModuleID = 'sjpegerr.c'
source_filename = "sjpegerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@jpeg_std_message_table = internal constant [121 x ptr] [ptr @JMSG_NOMESSAGE, ptr @JERR_ARITH_NOTIMPL, ptr @JERR_BAD_ALIGN_TYPE, ptr @JERR_BAD_ALLOC_CHUNK, ptr @JERR_BAD_BUFFER_MODE, ptr @JERR_BAD_COMPONENT_ID, ptr @JERR_BAD_DCTSIZE, ptr @JERR_BAD_IN_COLORSPACE, ptr @JERR_BAD_J_COLORSPACE, ptr @JERR_BAD_LENGTH, ptr @JERR_BAD_LIB_VERSION, ptr @JERR_BAD_MCU_SIZE, ptr @JERR_BAD_POOL_ID, ptr @JERR_BAD_PRECISION, ptr @JERR_BAD_PROGRESSION, ptr @JERR_BAD_PROG_SCRIPT, ptr @JERR_BAD_SAMPLING, ptr @JERR_BAD_SCAN_SCRIPT, ptr @JERR_BAD_STATE, ptr @JERR_BAD_STRUCT_SIZE, ptr @JERR_BAD_VIRTUAL_ACCESS, ptr @JERR_BUFFER_SIZE, ptr @JERR_CANT_SUSPEND, ptr @JERR_CCIR601_NOTIMPL, ptr @JERR_COMPONENT_COUNT, ptr @JERR_CONVERSION_NOTIMPL, ptr @JERR_DAC_INDEX, ptr @JERR_DAC_VALUE, ptr @JERR_DHT_COUNTS, ptr @JERR_DHT_INDEX, ptr @JERR_DQT_INDEX, ptr @JERR_EMPTY_IMAGE, ptr @JERR_EMS_READ, ptr @JERR_EMS_WRITE, ptr @JERR_EOI_EXPECTED, ptr @JERR_FILE_READ, ptr @JERR_FILE_WRITE, ptr @JERR_FRACT_SAMPLE_NOTIMPL, ptr @JERR_HUFF_CLEN_OVERFLOW, ptr @JERR_HUFF_MISSING_CODE, ptr @JERR_IMAGE_TOO_BIG, ptr @JERR_INPUT_EMPTY, ptr @JERR_INPUT_EOF, ptr @JERR_MISMATCHED_QUANT_TABLE, ptr @JERR_MISSING_DATA, ptr @JERR_MODE_CHANGE, ptr @JERR_NOTIMPL, ptr @JERR_NOT_COMPILED, ptr @JERR_NO_BACKING_STORE, ptr @JERR_NO_HUFF_TABLE, ptr @JERR_NO_IMAGE, ptr @JERR_NO_QUANT_TABLE, ptr @JERR_NO_SOI, ptr @JERR_OUT_OF_MEMORY, ptr @JERR_QUANT_COMPONENTS, ptr @JERR_QUANT_FEW_COLORS, ptr @JERR_QUANT_MANY_COLORS, ptr @JERR_SOF_DUPLICATE, ptr @JERR_SOF_NO_SOS, ptr @JERR_SOF_UNSUPPORTED, ptr @JERR_SOI_DUPLICATE, ptr @JERR_SOS_NO_SOF, ptr @JERR_TFILE_CREATE, ptr @JERR_TFILE_READ, ptr @JERR_TFILE_SEEK, ptr @JERR_TFILE_WRITE, ptr @JERR_TOO_LITTLE_DATA, ptr @JERR_UNKNOWN_MARKER, ptr @JERR_VIRTUAL_BUG, ptr @JERR_WIDTH_OVERFLOW, ptr @JERR_XMS_READ, ptr @JERR_XMS_WRITE, ptr @JMSG_COPYRIGHT, ptr @JMSG_VERSION, ptr @JTRC_16BIT_TABLES, ptr @JTRC_ADOBE, ptr @JTRC_APP0, ptr @JTRC_APP14, ptr @JTRC_DAC, ptr @JTRC_DHT, ptr @JTRC_DQT, ptr @JTRC_DRI, ptr @JTRC_EMS_CLOSE, ptr @JTRC_EMS_OPEN, ptr @JTRC_EOI, ptr @JTRC_HUFFBITS, ptr @JTRC_JFIF, ptr @JTRC_JFIF_BADTHUMBNAILSIZE, ptr @JTRC_JFIF_MINOR, ptr @JTRC_JFIF_THUMBNAIL, ptr @JTRC_MISC_MARKER, ptr @JTRC_PARMLESS_MARKER, ptr @JTRC_QUANTVALS, ptr @JTRC_QUANT_3_NCOLORS, ptr @JTRC_QUANT_NCOLORS, ptr @JTRC_QUANT_SELECTED, ptr @JTRC_RECOVERY_ACTION, ptr @JTRC_RST, ptr @JTRC_SMOOTH_NOTIMPL, ptr @JTRC_SOF, ptr @JTRC_SOF_COMPONENT, ptr @JTRC_SOI, ptr @JTRC_SOS, ptr @JTRC_SOS_COMPONENT, ptr @JTRC_SOS_PARAMS, ptr @JTRC_TFILE_CLOSE, ptr @JTRC_TFILE_OPEN, ptr @JTRC_UNKNOWN_IDS, ptr @JTRC_XMS_CLOSE, ptr @JTRC_XMS_OPEN, ptr @JWRN_ADOBE_XFORM, ptr @JWRN_BOGUS_PROGRESSION, ptr @JWRN_EXTRANEOUS_DATA, ptr @JWRN_HIT_MARKER, ptr @JWRN_HUFF_BAD_CODE, ptr @JWRN_JFIF_MAJOR, ptr @JWRN_JPEG_EOF, ptr @JWRN_MUST_RESYNC, ptr @JWRN_NOT_SEQUENTIAL, ptr @JWRN_TOO_MUCH_DATA, ptr null], align 16
@JMSG_NOMESSAGE = internal constant [22 x i8] c"Bogus message code %d\00", align 16
@JERR_ARITH_NOTIMPL = internal constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 16
@JERR_BAD_ALIGN_TYPE = internal constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 16
@JERR_BAD_ALLOC_CHUNK = internal constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 16
@JERR_BAD_BUFFER_MODE = internal constant [26 x i8] c"Bogus buffer control mode\00", align 16
@JERR_BAD_COMPONENT_ID = internal constant [31 x i8] c"Invalid component ID %d in SOS\00", align 16
@JERR_BAD_DCTSIZE = internal constant [40 x i8] c"IDCT output block size %d not supported\00", align 16
@JERR_BAD_IN_COLORSPACE = internal constant [23 x i8] c"Bogus input colorspace\00", align 16
@JERR_BAD_J_COLORSPACE = internal constant [22 x i8] c"Bogus JPEG colorspace\00", align 16
@JERR_BAD_LENGTH = internal constant [20 x i8] c"Bogus marker length\00", align 16
@JERR_BAD_LIB_VERSION = internal constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 16
@JERR_BAD_MCU_SIZE = internal constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 16
@JERR_BAD_POOL_ID = internal constant [28 x i8] c"Invalid memory pool code %d\00", align 16
@JERR_BAD_PRECISION = internal constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 16
@JERR_BAD_PROGRESSION = internal constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 16
@JERR_BAD_PROG_SCRIPT = internal constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 16
@JERR_BAD_SAMPLING = internal constant [23 x i8] c"Bogus sampling factors\00", align 16
@JERR_BAD_SCAN_SCRIPT = internal constant [32 x i8] c"Invalid scan script at entry %d\00", align 16
@JERR_BAD_STATE = internal constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 16
@JERR_BAD_STRUCT_SIZE = internal constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 16
@JERR_BAD_VIRTUAL_ACCESS = internal constant [27 x i8] c"Bogus virtual array access\00", align 16
@JERR_BUFFER_SIZE = internal constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 16
@JERR_CANT_SUSPEND = internal constant [28 x i8] c"Suspension not allowed here\00", align 16
@JERR_CCIR601_NOTIMPL = internal constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 16
@JERR_COMPONENT_COUNT = internal constant [38 x i8] c"Too many color components: %d, max %d\00", align 16
@JERR_CONVERSION_NOTIMPL = internal constant [37 x i8] c"Unsupported color conversion request\00", align 16
@JERR_DAC_INDEX = internal constant [19 x i8] c"Bogus DAC index %d\00", align 16
@JERR_DAC_VALUE = internal constant [21 x i8] c"Bogus DAC value 0x%x\00", align 16
@JERR_DHT_COUNTS = internal constant [17 x i8] c"Bogus DHT counts\00", align 16
@JERR_DHT_INDEX = internal constant [19 x i8] c"Bogus DHT index %d\00", align 16
@JERR_DQT_INDEX = internal constant [19 x i8] c"Bogus DQT index %d\00", align 16
@JERR_EMPTY_IMAGE = internal constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 16
@JERR_EMS_READ = internal constant [21 x i8] c"Read from EMS failed\00", align 16
@JERR_EMS_WRITE = internal constant [20 x i8] c"Write to EMS failed\00", align 16
@JERR_EOI_EXPECTED = internal constant [33 x i8] c"Didn't expect more than one scan\00", align 16
@JERR_FILE_READ = internal constant [22 x i8] c"Input file read error\00", align 16
@JERR_FILE_WRITE = internal constant [47 x i8] c"Output file write error --- out of disk space?\00", align 16
@JERR_FRACT_SAMPLE_NOTIMPL = internal constant [40 x i8] c"Fractional sampling not implemented yet\00", align 16
@JERR_HUFF_CLEN_OVERFLOW = internal constant [33 x i8] c"Huffman code size table overflow\00", align 16
@JERR_HUFF_MISSING_CODE = internal constant [33 x i8] c"Missing Huffman code table entry\00", align 16
@JERR_IMAGE_TOO_BIG = internal constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 16
@JERR_INPUT_EMPTY = internal constant [17 x i8] c"Empty input file\00", align 16
@JERR_INPUT_EOF = internal constant [28 x i8] c"Premature end of input file\00", align 16
@JERR_MISMATCHED_QUANT_TABLE = internal constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 16
@JERR_MISSING_DATA = internal constant [39 x i8] c"Scan script does not transmit all data\00", align 16
@JERR_MODE_CHANGE = internal constant [39 x i8] c"Invalid color quantization mode change\00", align 16
@JERR_NOTIMPL = internal constant [20 x i8] c"Not implemented yet\00", align 16
@JERR_NOT_COMPILED = internal constant [46 x i8] c"Requested feature was omitted at compile time\00", align 16
@JERR_NO_BACKING_STORE = internal constant [28 x i8] c"Backing store not supported\00", align 16
@JERR_NO_HUFF_TABLE = internal constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 16
@JERR_NO_IMAGE = internal constant [34 x i8] c"JPEG datastream contains no image\00", align 16
@JERR_NO_QUANT_TABLE = internal constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 16
@JERR_NO_SOI = internal constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 16
@JERR_OUT_OF_MEMORY = internal constant [30 x i8] c"Insufficient memory (case %d)\00", align 16
@JERR_QUANT_COMPONENTS = internal constant [46 x i8] c"Cannot quantize more than %d color components\00", align 16
@JERR_QUANT_FEW_COLORS = internal constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 16
@JERR_QUANT_MANY_COLORS = internal constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 16
@JERR_SOF_DUPLICATE = internal constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 16
@JERR_SOF_NO_SOS = internal constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 16
@JERR_SOF_UNSUPPORTED = internal constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 16
@JERR_SOI_DUPLICATE = internal constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 16
@JERR_SOS_NO_SOF = internal constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 16
@JERR_TFILE_CREATE = internal constant [35 x i8] c"Failed to create temporary file %s\00", align 16
@JERR_TFILE_READ = internal constant [30 x i8] c"Read failed on temporary file\00", align 16
@JERR_TFILE_SEEK = internal constant [30 x i8] c"Seek failed on temporary file\00", align 16
@JERR_TFILE_WRITE = internal constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 16
@JERR_TOO_LITTLE_DATA = internal constant [42 x i8] c"Application transferred too few scanlines\00", align 16
@JERR_UNKNOWN_MARKER = internal constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 16
@JERR_VIRTUAL_BUG = internal constant [35 x i8] c"Virtual array controller messed up\00", align 16
@JERR_WIDTH_OVERFLOW = internal constant [39 x i8] c"Image too wide for this implementation\00", align 16
@JERR_XMS_READ = internal constant [21 x i8] c"Read from XMS failed\00", align 16
@JERR_XMS_WRITE = internal constant [20 x i8] c"Write to XMS failed\00", align 16
@JMSG_COPYRIGHT = internal constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 16
@JMSG_VERSION = internal constant [13 x i8] c"6a  7-Feb-96\00", align 1
@JTRC_16BIT_TABLES = internal constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 16
@JTRC_ADOBE = internal constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 16
@JTRC_APP0 = internal constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 16
@JTRC_APP14 = internal constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 16
@JTRC_DAC = internal constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 16
@JTRC_DHT = internal constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 16
@JTRC_DQT = internal constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 16
@JTRC_DRI = internal constant [27 x i8] c"Define Restart Interval %u\00", align 16
@JTRC_EMS_CLOSE = internal constant [20 x i8] c"Freed EMS handle %u\00", align 16
@JTRC_EMS_OPEN = internal constant [23 x i8] c"Obtained EMS handle %u\00", align 16
@JTRC_EOI = internal constant [13 x i8] c"End Of Image\00", align 1
@JTRC_HUFFBITS = internal constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 16
@JTRC_JFIF = internal constant [36 x i8] c"JFIF APP0 marker, density %dx%d  %d\00", align 16
@JTRC_JFIF_BADTHUMBNAILSIZE = internal constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 16
@JTRC_JFIF_MINOR = internal constant [43 x i8] c"Unknown JFIF minor revision number %d.%02d\00", align 16
@JTRC_JFIF_THUMBNAIL = internal constant [33 x i8] c"    with %d x %d thumbnail image\00", align 16
@JTRC_MISC_MARKER = internal constant [34 x i8] c"Skipping marker 0x%02x, length %u\00", align 16
@JTRC_PARMLESS_MARKER = internal constant [25 x i8] c"Unexpected marker 0x%02x\00", align 16
@JTRC_QUANTVALS = internal constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 16
@JTRC_QUANT_3_NCOLORS = internal constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 16
@JTRC_QUANT_NCOLORS = internal constant [24 x i8] c"Quantizing to %d colors\00", align 16
@JTRC_QUANT_SELECTED = internal constant [36 x i8] c"Selected %d colors for quantization\00", align 16
@JTRC_RECOVERY_ACTION = internal constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 16
@JTRC_RST = internal constant [6 x i8] c"RST%d\00", align 1
@JTRC_SMOOTH_NOTIMPL = internal constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 16
@JTRC_SOF = internal constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 16
@JTRC_SOF_COMPONENT = internal constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 16
@JTRC_SOI = internal constant [15 x i8] c"Start of Image\00", align 1
@JTRC_SOS = internal constant [29 x i8] c"Start Of Scan: %d components\00", align 16
@JTRC_SOS_COMPONENT = internal constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 16
@JTRC_SOS_PARAMS = internal constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 16
@JTRC_TFILE_CLOSE = internal constant [25 x i8] c"Closed temporary file %s\00", align 16
@JTRC_TFILE_OPEN = internal constant [25 x i8] c"Opened temporary file %s\00", align 16
@JTRC_UNKNOWN_IDS = internal constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 16
@JTRC_XMS_CLOSE = internal constant [20 x i8] c"Freed XMS handle %u\00", align 16
@JTRC_XMS_OPEN = internal constant [23 x i8] c"Obtained XMS handle %u\00", align 16
@JWRN_ADOBE_XFORM = internal constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 16
@JWRN_BOGUS_PROGRESSION = internal constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 16
@JWRN_EXTRANEOUS_DATA = internal constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 16
@JWRN_HIT_MARKER = internal constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 16
@JWRN_HUFF_BAD_CODE = internal constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 16
@JWRN_JFIF_MAJOR = internal constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 16
@JWRN_JPEG_EOF = internal constant [27 x i8] c"Premature end of JPEG file\00", align 16
@JWRN_MUST_RESYNC = internal constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 16
@JWRN_NOT_SEQUENTIAL = internal constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 16
@JWRN_TOO_MUCH_DATA = internal constant [43 x i8] c"Application transferred too many scanlines\00", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @gs_jpeg_message_table() local_unnamed_addr #0 {
  ret ptr @jpeg_std_message_table
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
