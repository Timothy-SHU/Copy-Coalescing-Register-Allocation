; ModuleID = 'libpng/pngrutil.c'
source_filename = "libpng/pngrutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_XYZ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_xy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_sPLT_struct = type { ptr, i8, ptr, i32 }
%struct.png_sPLT_entry_struct = type { i16, i16, i16, i16, i16 }
%struct.png_text_struct = type { i32, ptr, ptr, i64, i64, ptr, ptr }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [34 x i8] c"PNG unsigned integer out of range\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Not a PNG file\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"PNG file corrupted by ASCII conversion\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid chunklength\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Exceeded size limit while expanding chunk\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"png_inflate logic error\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Not enough memory to decompress chunk\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unknown compression type @1\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Out of place IHDR\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Invalid IHDR chunk\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Missing IHDR before PLTE\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Invalid PLTE after IDAT\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Duplicate PLTE chunk\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Ignoring PLTE chunk in grayscale PNG\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Invalid palette chunk\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Truncating incorrect tRNS chunk length\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Truncating incorrect info tRNS chunk length\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"No image in file\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Incorrect IEND chunk length\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Missing IHDR before gAMA\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Invalid gAMA after IDAT\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Out of place gAMA chunk\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Duplicate gAMA chunk\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Incorrect gAMA chunk length\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Ignoring gAMA chunk with out of range gamma\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"Ignoring incorrect gAMA value @1 when sRGB is also present\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Missing IHDR before sBIT\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Invalid sBIT after IDAT\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Out of place sBIT chunk\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Duplicate sBIT chunk\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Incorrect sBIT chunk length\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Missing IHDR before cHRM\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Invalid cHRM after IDAT\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"Out of place cHRM chunk\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Duplicate cHRM chunk\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Incorrect cHRM chunk length\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"Ignoring cHRM chunk with negative chromaticities\00", align 1
@.str.38 = private unnamed_addr constant [88 x i8] c"Ignoring incorrect cHRM white(@1,@2) r(@3,@4)g(@5,@6)b(@7,@8) when sRGB is also present\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"internal error handling cHRM coefficients\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"internal error handling cHRM->XYZ\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Missing IHDR before sRGB\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"Invalid sRGB after IDAT\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Out of place sRGB chunk\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Duplicate sRGB chunk\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Incorrect sRGB chunk length\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Unknown sRGB intent\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"Ignoring incorrect cHRM value when sRGB is also present\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Missing IHDR before iCCP\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Invalid iCCP after IDAT\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"Out of place iCCP chunk\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Duplicate iCCP chunk\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Malformed iCCP chunk\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"Ignoring nonzero compression type in iCCP chunk\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"Profile size field missing from iCCP chunk\00", align 1
@.str.55 = private unnamed_addr constant [67 x i8] c"Ignoring iCCP chunk with declared size = @1 and actual length = @2\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"No space in chunk cache for sPLT\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"Missing IHDR before sPLT\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"Invalid sPLT after IDAT\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"malformed sPLT chunk\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"sPLT chunk has bad length\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"sPLT chunk requires too much memory\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"Missing IHDR before tRNS\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"Invalid tRNS after IDAT\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"Duplicate tRNS chunk\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"Incorrect tRNS chunk length\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"Missing PLTE before tRNS\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"Zero length tRNS chunk\00", align 1
@.str.69 = private unnamed_addr constant [42 x i8] c"tRNS chunk not allowed with alpha channel\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"Missing IHDR before bKGD\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"Invalid bKGD after IDAT\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"Missing PLTE before bKGD\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"Duplicate bKGD chunk\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"Incorrect bKGD chunk length\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"Incorrect bKGD chunk index value\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"Missing IHDR before hIST\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"Invalid hIST after IDAT\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"Missing PLTE before hIST\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"Duplicate hIST chunk\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"Incorrect hIST chunk length\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"Missing IHDR before pHYs\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"Invalid pHYs after IDAT\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"Duplicate pHYs chunk\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"Incorrect pHYs chunk length\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"Missing IHDR before oFFs\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"Invalid oFFs after IDAT\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"Duplicate oFFs chunk\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"Incorrect oFFs chunk length\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"Missing IHDR before pCAL\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"Invalid pCAL after IDAT\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"Duplicate pCAL chunk\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"No memory for pCAL purpose\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"Invalid pCAL data\00", align 1
@.str.94 = private unnamed_addr constant [42 x i8] c"Invalid pCAL parameters for equation type\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"Unrecognized equation type for pCAL chunk\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"No memory for pCAL params\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"Missing IHDR before sCAL\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Invalid sCAL after IDAT\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"Duplicate sCAL chunk\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"sCAL chunk too short\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"Out of memory while processing sCAL chunk\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"Invalid sCAL ignored: invalid unit\00", align 1
@.str.103 = private unnamed_addr constant [45 x i8] c"Invalid sCAL chunk ignored: bad width format\00", align 1
@.str.104 = private unnamed_addr constant [47 x i8] c"Invalid sCAL chunk ignored: non-positive width\00", align 1
@.str.105 = private unnamed_addr constant [46 x i8] c"Invalid sCAL chunk ignored: bad height format\00", align 1
@.str.106 = private unnamed_addr constant [48 x i8] c"Invalid sCAL chunk ignored: non-positive height\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Out of place tIME chunk\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"Duplicate tIME chunk\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"Incorrect tIME chunk length\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"No space in chunk cache for tEXt\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"Missing IHDR before tEXt\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"No memory to process text chunk\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"Not enough memory to process text chunk\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"Insufficient memory to process text chunk\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"No space in chunk cache for zTXt\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"Missing IHDR before zTXt\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c"Out of memory processing zTXt chunk\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"Truncated zTXt chunk\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"Unknown compression type in zTXt chunk\00", align 1
@.str.120 = private unnamed_addr constant [40 x i8] c"Not enough memory to process zTXt chunk\00", align 1
@.str.121 = private unnamed_addr constant [40 x i8] c"Insufficient memory to store zTXt chunk\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"No space in chunk cache for iTXt\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"Missing IHDR before iTXt\00", align 1
@.str.124 = private unnamed_addr constant [32 x i8] c"No memory to process iTXt chunk\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"Truncated iTXt chunk\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"Unknown iTXt compression type or method\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"Malformed iTXt chunk\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"Not enough memory to process iTXt chunk\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"Insufficient memory to store iTXt chunk\00", align 1
@.str.130 = private unnamed_addr constant [42 x i8] c"No space in chunk cache for unknown chunk\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"unknown critical chunk\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"error in user chunk\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"invalid chunk type\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"internal row logic error\00", align 1
@.str.135 = private unnamed_addr constant [36 x i8] c"internal row size calculation error\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"internal row width error\00", align 1
@png_combine_row.row_mask = internal unnamed_addr constant [2 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 16843009, i32 269488144, i32 286331153, i32 1145324612, i32 1431655765, i32 -1431655766], [6 x i32] [i32 196611, i32 50332416, i32 50529027, i32 808464432, i32 858993459, i32 -858993460], [6 x i32] [i32 15, i32 983040, i32 983055, i32 251662080, i32 252645135, i32 -252645136]], [3 x [6 x i32]] [[6 x i32] [i32 -2139062144, i32 134744072, i32 -2004318072, i32 572662306, i32 -1431655766, i32 1431655765], [6 x i32] [i32 12583104, i32 -1073692672, i32 -1061109568, i32 202116108, i32 -858993460, i32 858993459], [6 x i32] [i32 240, i32 15728640, i32 15728880, i32 -268374016, i32 -252645136, i32 252645135]]], align 16
@png_combine_row.display_mask = internal unnamed_addr constant [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 -252645136, i32 1145324612, i32 -1431655766], [3 x i32] [i32 -16711936, i32 808464432, i32 -858993460], [3 x i32] [i32 -65536, i32 251662080, i32 -252645136]], [3 x [3 x i32]] [[3 x i32] [i32 252645135, i32 572662306, i32 1431655765], [3 x i32] [i32 -16711936, i32 202116108, i32 858993459], [3 x i32] [i32 -65536, i32 -268374016, i32 252645135]]], align 16
@.str.137 = private unnamed_addr constant [35 x i8] c"invalid user transform pixel depth\00", align 1
@png_do_read_interlace.png_pass_inc = internal unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@png_read_finish_row.png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_read_finish_row.png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"Not enough image data\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"Extra compressed data\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"Decompression Error\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"Extra compression data\00", align 1
@png_read_start_row.png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_read_start_row.png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@.str.142 = private unnamed_addr constant [45 x i8] c"Row has too many bytes to allocate in memory\00", align 1
@.str.143 = private unnamed_addr constant [38 x i8] c"Buffer error in compressed datastream\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"Data error in compressed datastream\00", align 1
@.str.145 = private unnamed_addr constant [33 x i8] c"Incomplete compressed datastream\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @png_get_uint_31(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !tbaa !34
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #10
  unreachable

22:                                               ; preds = %2
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_uint_32(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_int_32(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %0, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = zext i8 %8 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = zext i8 %10 to i32
  %14 = zext i8 %6 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %4
  %17 = or disjoint i32 %16, %13
  %18 = or disjoint i32 %17, %12
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i16 @png_get_uint_16(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i16
  %8 = or disjoint i16 %4, %7
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_sig(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 62
  %4 = load i8, ptr %3, align 1, !tbaa !37
  %5 = icmp ugt i8 %4, 7
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = zext nneg i8 %4 to i64
  %8 = sub nuw nsw i64 8, %7
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 17, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15
  %11 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 15, i64 %7
  tail call void @png_read_data(ptr noundef %0, ptr noundef nonnull %11, i64 noundef %8) #11
  store i8 8, ptr %3, align 1, !tbaa !37
  %12 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %7, i64 noundef %8) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = icmp ult i8 %4, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = sub nuw nsw i64 4, %7
  %18 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %7, i64 noundef %17) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  unreachable

21:                                               ; preds = %16, %14
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  unreachable

22:                                               ; preds = %6
  %23 = icmp ult i8 %4, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = or i32 %26, 4096
  store i32 %27, ptr %25, align 4, !tbaa !48
  br label %28

28:                                               ; preds = %22, %24, %2
  ret void
}

declare void @png_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @png_read_chunk_header(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 33, ptr %3, align 8, !tbaa !47
  call void @png_read_data(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 8) #11
  %4 = load i8, ptr %2, align 1, !tbaa !34
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds i8, ptr %2, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %2, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr inbounds i8, ptr %2, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #10
  unreachable

23:                                               ; preds = %1
  %24 = getelementptr inbounds i8, ptr %2, i64 4
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr inbounds i8, ptr %2, i64 5
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or disjoint i32 %31, %27
  %33 = getelementptr inbounds i8, ptr %2, i64 6
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or disjoint i32 %32, %36
  %38 = getelementptr inbounds i8, ptr %2, i64 7
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %37, %40
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %41, ptr %42, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef %0) #11
  call void @png_calculate_crc(ptr noundef %0, ptr noundef nonnull %24, i64 noundef 4) #11
  %43 = load i32, ptr %42, align 8, !tbaa !49
  br label %44

44:                                               ; preds = %23, %54
  %45 = phi i32 [ %43, %23 ], [ %55, %54 ]
  %46 = phi i32 [ 1, %23 ], [ %56, %54 ]
  %47 = and i32 %45, 255
  %48 = add nsw i32 %47, -123
  %49 = icmp ult i32 %48, -58
  %50 = add nsw i32 %47, -91
  %51 = icmp ult i32 %50, 6
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  call void @png_chunk_error(ptr noundef %0, ptr noundef nonnull @.str.133) #10
  unreachable

54:                                               ; preds = %44
  %55 = lshr i32 %45, 8
  %56 = add nuw nsw i32 %46, 1
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %44, !llvm.loop !50

58:                                               ; preds = %54
  store i32 65, ptr %3, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %20
}

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #4

declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_check_chunk_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %13
  %4 = phi i32 [ %1, %2 ], [ %14, %13 ]
  %5 = phi i32 [ 1, %2 ], [ %15, %13 ]
  %6 = and i32 %4, 255
  %7 = add nsw i32 %6, -123
  %8 = icmp ult i32 %7, -58
  %9 = add nsw i32 %6, -91
  %10 = icmp ult i32 %9, 6
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @png_chunk_error(ptr noundef %0, ptr noundef nonnull @.str.133) #10
  unreachable

13:                                               ; preds = %3
  %14 = lshr i32 %4, 8
  %15 = add nuw nsw i32 %5, 1
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %3, !llvm.loop !50

17:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_crc_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #11
  br label %6

6:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @png_crc_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = zext i32 %5 to i64
  %7 = zext i32 %1 to i64
  %8 = icmp ult i32 %5, %1
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  br label %12

12:                                               ; preds = %9, %18
  %13 = phi i64 [ %7, %9 ], [ %19, %18 ]
  br i1 %10, label %18, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %4, align 8, !tbaa !53
  %16 = zext i32 %15 to i64
  %17 = load ptr, ptr %11, align 8, !tbaa !54
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %17, i64 noundef %16) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %17, i64 noundef %16) #11
  br label %18

18:                                               ; preds = %12, %14
  %19 = sub i64 %13, %6
  %20 = icmp ugt i64 %19, %6
  br i1 %20, label %12, label %21, !llvm.loop !55

21:                                               ; preds = %18, %2
  %22 = phi i64 [ %7, %2 ], [ %19, %18 ]
  %23 = icmp eq i64 %22, 0
  %24 = icmp eq ptr %0, null
  %25 = or i1 %24, %23
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %28, i64 noundef %22) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %28, i64 noundef %22) #11
  br label %29

29:                                               ; preds = %26, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %31 = load i32, ptr %30, align 8, !tbaa !49
  %32 = and i32 %31, 536870912
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !56
  %36 = and i32 %35, 768
  %37 = icmp eq i32 %36, 768
  %38 = and i32 %35, 2048
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %33, i1 %39, i1 %37
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 129, ptr %41, align 8, !tbaa !47
  call void @png_read_data(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 4) #11
  br i1 %40, label %77, label %42

42:                                               ; preds = %29
  %43 = load i8, ptr %3, align 1, !tbaa !34
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = getelementptr inbounds i8, ptr %3, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or disjoint i32 %49, %45
  %51 = getelementptr inbounds i8, ptr %3, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or disjoint i32 %50, %54
  %56 = getelementptr inbounds i8, ptr %3, i64 3
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = zext i8 %57 to i32
  %59 = or disjoint i32 %55, %58
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %61 = load i32, ptr %60, align 4, !tbaa !57
  %62 = icmp eq i32 %59, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br i1 %62, label %78, label %63

63:                                               ; preds = %42
  %64 = load i32, ptr %30, align 8, !tbaa !49
  %65 = and i32 %64, 536870912
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %68 = load i32, ptr %67, align 8, !tbaa !56
  br i1 %66, label %72, label %69

69:                                               ; preds = %63
  %70 = and i32 %68, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %76

72:                                               ; preds = %63
  %73 = and i32 %68, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %69
  call void @png_chunk_warning(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  br label %78

76:                                               ; preds = %72, %69
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  br label %78

77:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %78

78:                                               ; preds = %77, %42, %75, %76
  %79 = phi i32 [ 1, %75 ], [ 0, %76 ], [ 0, %42 ], [ 0, %77 ]
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_crc_error(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = and i32 %4, 536870912
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = and i32 %8, 768
  %10 = icmp eq i32 %9, 768
  %11 = and i32 %8, 2048
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %6, i1 %12, i1 %10
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 129, ptr %14, align 8, !tbaa !47
  call void @png_read_data(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 4) #11
  br i1 %13, label %37, label %15

15:                                               ; preds = %1
  %16 = load i8, ptr %2, align 1, !tbaa !34
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = getelementptr inbounds i8, ptr %2, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or disjoint i32 %22, %18
  %24 = getelementptr inbounds i8, ptr %2, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or disjoint i32 %23, %27
  %29 = getelementptr inbounds i8, ptr %2, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = or disjoint i32 %28, %31
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %34 = load i32, ptr %33, align 4, !tbaa !57
  %35 = icmp ne i32 %32, %34
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %1, %15
  %38 = phi i32 [ %36, %15 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %38
}

declare void @png_chunk_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_decompress_chunk(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [8 x [32 x i8]], align 16
  %7 = icmp ugt i64 %3, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  br label %49

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds i8, ptr %13, i64 %3
  %15 = sub i64 %2, %3
  %16 = tail call fastcc i64 @png_inflate(ptr noundef %0, ptr noundef %14, i64 noundef %15, ptr noundef null, i64 noundef 0)
  %17 = icmp ult i64 %3, -2
  %18 = sub nuw i64 -2, %3
  %19 = icmp ult i64 %16, %18
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 138
  %23 = load i64, ptr %22, align 8, !tbaa !59
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = add i64 %16, %3
  %27 = add i64 %23, -1
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.5) #11
  br label %49

30:                                               ; preds = %25, %21
  %31 = icmp eq i64 %16, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %30
  %33 = add i64 %16, %3
  %34 = add i64 %33, 1
  %35 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %34) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %12, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %38, i64 %3, i1 false)
  %39 = getelementptr inbounds i8, ptr %38, i64 %3
  %40 = getelementptr inbounds i8, ptr %35, i64 %3
  %41 = tail call fastcc i64 @png_inflate(ptr noundef %0, ptr noundef %39, i64 noundef %15, ptr noundef nonnull %40, i64 noundef %16)
  %42 = getelementptr inbounds i8, ptr %35, i64 %33
  store i8 0, ptr %42, align 1, !tbaa !34
  %43 = icmp eq i64 %41, %16
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load ptr, ptr %12, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %45) #11
  store ptr %35, ptr %12, align 8, !tbaa !58
  br label %63

46:                                               ; preds = %37
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %35) #11
  br label %49

47:                                               ; preds = %32
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  br label %49

48:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, i32 noundef %1) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #11
  br label %49

49:                                               ; preds = %47, %46, %30, %29, %48, %8
  %50 = phi i64 [ 0, %8 ], [ %3, %48 ], [ %3, %29 ], [ %3, %30 ], [ %3, %46 ], [ %3, %47 ]
  %51 = add i64 %50, 1
  %52 = call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %51) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = icmp eq i64 %50, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr align 1 %58, i64 %50, i1 false)
  br label %59

59:                                               ; preds = %56, %54
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  call void @png_free(ptr noundef %0, ptr noundef %61) #11
  store ptr %52, ptr %60, align 8, !tbaa !58
  %62 = getelementptr inbounds i8, ptr %52, i64 %50
  store i8 0, ptr %62, align 1, !tbaa !34
  br label %63

63:                                               ; preds = %49, %59, %44
  %64 = phi i64 [ %33, %44 ], [ %50, %59 ], [ %50, %49 ]
  store i64 %64, ptr %4, align 8, !tbaa !60
  ret void
}

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @png_inflate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  store ptr %1, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %12 = icmp ne ptr %3, null
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  br label %14

14:                                               ; preds = %64, %5
  %15 = phi i64 [ 0, %5 ], [ %53, %64 ]
  %16 = phi i64 [ %2, %5 ], [ %29, %64 ]
  %17 = phi i64 [ undef, %5 ], [ %65, %64 ]
  %18 = load i32, ptr %7, align 8, !tbaa !62
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i64 %16, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = icmp ult i64 %16, 4294967296
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = trunc i64 %16 to i32
  store i32 %25, ptr %7, align 8, !tbaa !62
  br label %28

26:                                               ; preds = %22
  store i32 -1, ptr %7, align 8, !tbaa !62
  %27 = add i64 %16, -4294967295
  br label %28

28:                                               ; preds = %24, %26, %14
  %29 = phi i64 [ 0, %24 ], [ %27, %26 ], [ %16, %14 ]
  %30 = load ptr, ptr %8, align 8, !tbaa !54
  store ptr %30, ptr %9, align 8, !tbaa !63
  %31 = load i32, ptr %10, align 8, !tbaa !53
  store i32 %31, ptr %11, align 8, !tbaa !64
  %32 = tail call i32 @inflate(ptr noundef nonnull %6, i32 noundef 0) #11
  %33 = load i32, ptr %10, align 8, !tbaa !53
  %34 = load i32, ptr %11, align 8, !tbaa !64
  %35 = sub i32 %33, %34
  %36 = icmp eq i32 %32, 0
  %37 = icmp eq i32 %32, 1
  %38 = icmp ult i32 %32, 2
  %39 = icmp sgt i32 %35, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = zext nneg i32 %35 to i64
  %43 = icmp ult i64 %15, %4
  %44 = select i1 %12, i1 %43, i1 false
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = sub i64 %4, %15
  %47 = tail call i64 @llvm.umin.i64(i64 %46, i64 %42)
  %48 = getelementptr inbounds i8, ptr %3, i64 %15
  %49 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %49, i64 %47, i1 false)
  br label %50

50:                                               ; preds = %45, %41
  %51 = add i64 %15, %42
  br label %52

52:                                               ; preds = %28, %50
  %53 = phi i64 [ %51, %50 ], [ %15, %28 ]
  br i1 %36, label %64, label %54, !llvm.loop !65

54:                                               ; preds = %52
  store i32 0, ptr %7, align 8, !tbaa !62
  %55 = tail call i32 @inflateReset(ptr noundef nonnull %6) #11
  br i1 %37, label %64, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %13, align 8, !tbaa !66
  %58 = icmp eq ptr %57, null
  %59 = icmp eq i32 %32, -3
  %60 = select i1 %59, ptr @.str.144, ptr @.str.145
  %61 = icmp eq i32 %32, -5
  %62 = select i1 %61, ptr @.str.143, ptr %60
  %63 = select i1 %58, ptr %62, ptr %57
  tail call void @png_chunk_warning(ptr noundef %0, ptr noundef nonnull %63) #11
  br label %64

64:                                               ; preds = %54, %52, %56
  %65 = phi i64 [ 0, %56 ], [ %17, %52 ], [ %53, %54 ]
  br i1 %36, label %14, label %66

66:                                               ; preds = %64
  ret i64 %65
}

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_warning_parameter_signed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @png_formatted_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 13
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  unreachable

13:                                               ; preds = %10
  %14 = or disjoint i32 %6, 1
  store i32 %14, ptr %5, align 4, !tbaa !48
  %15 = icmp eq ptr %0, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 13) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 13) #11
  br label %17

17:                                               ; preds = %13, %16
  %18 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %19 = load i8, ptr %4, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = getelementptr inbounds i8, ptr %4, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or disjoint i32 %25, %21
  %27 = getelementptr inbounds i8, ptr %4, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or disjoint i32 %26, %30
  %32 = getelementptr inbounds i8, ptr %4, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = or disjoint i32 %31, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #10
  unreachable

38:                                               ; preds = %17
  %39 = getelementptr inbounds i8, ptr %4, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 %41, 24
  %43 = getelementptr inbounds i8, ptr %4, i64 5
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or disjoint i32 %46, %42
  %48 = getelementptr inbounds i8, ptr %4, i64 6
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = or disjoint i32 %47, %51
  %53 = getelementptr inbounds i8, ptr %4, i64 7
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %52, %55
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #10
  unreachable

59:                                               ; preds = %38
  %60 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 8
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 9
  %63 = load i8, ptr %62, align 1, !tbaa !34
  %64 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 10
  %65 = load i8, ptr %64, align 1, !tbaa !34
  %66 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 11
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 12
  %69 = load i8, ptr %68, align 1, !tbaa !34
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  store i32 %35, ptr %70, align 8, !tbaa !68
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  store i32 %56, ptr %71, align 4, !tbaa !69
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  store i8 %61, ptr %72, align 8, !tbaa !70
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  store i8 %69, ptr %73, align 4, !tbaa !71
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  store i8 %63, ptr %74, align 1, !tbaa !72
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  store i8 %67, ptr %75, align 4, !tbaa !73
  %76 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 134
  store i8 %65, ptr %76, align 8, !tbaa !74
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %78 = icmp ult i8 %63, 7
  %79 = zext i8 %63 to i56
  %80 = shl nuw nsw i56 %79, 3
  %81 = lshr i56 1127008025379073, %80
  %82 = trunc i56 %81 to i8
  %83 = select i1 %78, i8 %82, i8 1
  store i8 %83, ptr %77, align 1, !tbaa !75
  %84 = mul i8 %83, %61
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  store i8 %84, ptr %85, align 2, !tbaa !76
  %86 = icmp ugt i8 %84, 7
  %87 = zext nneg i32 %35 to i64
  br i1 %86, label %88, label %92

88:                                               ; preds = %59
  %89 = lshr i8 %84, 3
  %90 = zext nneg i8 %89 to i64
  %91 = mul nuw nsw i64 %90, %87
  br label %97

92:                                               ; preds = %59
  %93 = zext nneg i8 %84 to i64
  %94 = mul nuw nsw i64 %93, %87
  %95 = add nuw nsw i64 %94, 7
  %96 = lshr i64 %95, 3
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i64 [ %91, %88 ], [ %96, %92 ]
  %99 = zext i8 %69 to i32
  %100 = zext i8 %67 to i32
  %101 = zext i8 %65 to i32
  %102 = zext i8 %63 to i32
  %103 = zext i8 %61 to i32
  %104 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  store i64 %98, ptr %104, align 8, !tbaa !77
  call void @png_set_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef %35, i32 noundef %56, i32 noundef %103, i32 noundef %102, i32 noundef %99, i32 noundef %101, i32 noundef %100) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %4) #11
  ret void
}

declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_PLTE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x %struct.png_color_struct], align 16
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %82

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  unreachable

20:                                               ; preds = %16
  %21 = or disjoint i32 %7, 2
  store i32 %21, ptr %6, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %23 = load i8, ptr %22, align 1, !tbaa !72
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  %27 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %82

28:                                               ; preds = %20
  %29 = icmp ult i32 %2, 769
  %30 = urem i32 %2, 3
  %31 = udiv i32 %2, 3
  %32 = icmp eq i32 %30, 0
  %33 = and i1 %29, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = icmp eq i8 %23, 3
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  %37 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %82

38:                                               ; preds = %34
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  unreachable

39:                                               ; preds = %28
  %40 = icmp ult i32 %2, 3
  br i1 %40, label %58, label %41

41:                                               ; preds = %39
  %42 = icmp eq ptr %0, null
  %43 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  %44 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  br label %45

45:                                               ; preds = %41, %49
  %46 = phi ptr [ %4, %41 ], [ %56, %49 ]
  %47 = phi i32 [ 0, %41 ], [ %55, %49 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  br i1 %42, label %49, label %48

48:                                               ; preds = %45
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 3) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 3) #11
  br label %49

49:                                               ; preds = %45, %48
  %50 = load i8, ptr %5, align 1, !tbaa !34
  store i8 %50, ptr %46, align 1, !tbaa !78
  %51 = load i8, ptr %43, align 1, !tbaa !34
  %52 = getelementptr inbounds %struct.png_color_struct, ptr %46, i64 0, i32 1
  store i8 %51, ptr %52, align 1, !tbaa !80
  %53 = load i8, ptr %44, align 1, !tbaa !34
  %54 = getelementptr inbounds %struct.png_color_struct, ptr %46, i64 0, i32 2
  store i8 %53, ptr %54, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  %55 = add nuw nsw i32 %47, 1
  %56 = getelementptr inbounds %struct.png_color_struct, ptr %46, i64 1
  %57 = icmp eq i32 %55, %31
  br i1 %57, label %58, label %45, !llvm.loop !82

58:                                               ; preds = %49, %39
  %59 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  call void @png_set_PLTE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %31) #11
  %60 = load i8, ptr %22, align 1, !tbaa !72
  %61 = icmp eq i8 %60, 3
  %62 = icmp ne ptr %1, null
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !83
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %71 = load i16, ptr %70, align 8, !tbaa !86
  %72 = zext i16 %71 to i32
  %73 = trunc i32 %31 to i16
  %74 = icmp ult i32 %31, %72
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  store i16 %73, ptr %70, align 8, !tbaa !86
  br label %76

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %78 = load i16, ptr %77, align 2, !tbaa !87
  %79 = zext i16 %78 to i32
  %80 = icmp ult i32 %31, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  store i16 %73, ptr %77, align 2, !tbaa !87
  br label %82

82:                                               ; preds = %58, %76, %81, %64, %36, %26, %14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #11
  ret void
}

declare void @png_set_PLTE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_IEND(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 5
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  unreachable

9:                                                ; preds = %3
  %10 = or i32 %5, 24
  store i32 %10, ptr %4, align 4, !tbaa !48
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_gAMA(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  %5 = alloca [8 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.20) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.21) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %72

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.22) #11
  br label %20

20:                                               ; preds = %19, %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = and i32 %24, 2049
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  %28 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %72

29:                                               ; preds = %22, %20
  %30 = icmp eq i32 %2, 4
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  %32 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %72

33:                                               ; preds = %29
  %34 = icmp eq ptr %0, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 4) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 4) #11
  br label %36

36:                                               ; preds = %33, %35
  %37 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load i8, ptr %4, align 1, !tbaa !34
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 %41, 24
  %43 = getelementptr inbounds i8, ptr %4, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or disjoint i32 %46, %42
  %48 = getelementptr inbounds i8, ptr %4, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = or disjoint i32 %47, %51
  %53 = getelementptr inbounds i8, ptr %4, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %52, %55
  %57 = call i32 @llvm.smax.i32(i32 %56, i32 -1)
  %58 = icmp slt i32 %56, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %72

60:                                               ; preds = %39
  br i1 %21, label %70, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !83
  %64 = and i32 %63, 2048
  %65 = icmp ne i32 %64, 0
  %66 = add nsw i32 %57, -46001
  %67 = icmp ult i32 %66, -1001
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 5, i32 noundef %57) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  br label %72

70:                                               ; preds = %61, %60
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  store i32 %57, ptr %71, align 4, !tbaa !88
  call void @png_set_gAMA_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %57) #11
  br label %72

72:                                               ; preds = %36, %70, %69, %59, %31, %27, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

declare void @png_set_gAMA_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_sBIT(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %6 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  %7 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  store i32 0, ptr %4, align 4
  %9 = load i32, ptr %8, align 4, !tbaa !48
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.27) #10
  unreachable

13:                                               ; preds = %3
  %14 = and i32 %9, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.28) #11
  %17 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %73

18:                                               ; preds = %13
  %19 = and i32 %9, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.29) #11
  br label %22

22:                                               ; preds = %21, %18
  %23 = icmp eq ptr %1, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.30) #11
  %30 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %73

31:                                               ; preds = %24, %22
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %33 = load i8, ptr %32, align 1, !tbaa !72
  %34 = icmp eq i8 %33, 3
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %37 = load i8, ptr %36, align 1, !tbaa !75
  %38 = zext i8 %37 to i64
  br label %39

39:                                               ; preds = %31, %35
  %40 = phi i64 [ %38, %35 ], [ 3, %31 ]
  %41 = zext i32 %2 to i64
  %42 = icmp ne i64 %40, %41
  %43 = icmp ugt i32 %2, 4
  %44 = or i1 %43, %42
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.31) #11
  %46 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %73

47:                                               ; preds = %39
  %48 = icmp eq ptr %0, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %40) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %40) #11
  br label %50

50:                                               ; preds = %47, %49
  %51 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load i8, ptr %32, align 1, !tbaa !72
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  %57 = load i8, ptr %4, align 4, !tbaa !34
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 2
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 4
  br i1 %56, label %65, label %61

61:                                               ; preds = %53
  store i8 %57, ptr %58, align 8, !tbaa !89
  %62 = load i8, ptr %7, align 1, !tbaa !34
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  store i8 %62, ptr %63, align 1, !tbaa !90
  %64 = load i8, ptr %6, align 2, !tbaa !34
  br label %68

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 3
  store i8 %57, ptr %66, align 1, !tbaa !91
  store i8 %57, ptr %58, align 8, !tbaa !89
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  store i8 %57, ptr %67, align 1, !tbaa !90
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i8 [ %57, %65 ], [ %64, %61 ]
  %70 = phi ptr [ %7, %65 ], [ %5, %61 ]
  store i8 %69, ptr %59, align 2, !tbaa !92
  %71 = load i8, ptr %70, align 1, !tbaa !34
  store i8 %71, ptr %60, align 4, !tbaa !93
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  call void @png_set_sBIT(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %72) #11
  br label %73

73:                                               ; preds = %50, %68, %45, %29, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

declare void @png_set_sBIT(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [8 x [32 x i8]], align 16
  %6 = alloca %struct.png_XYZ, align 4
  %7 = alloca %struct.png_xy, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  unreachable

16:                                               ; preds = %3
  %17 = and i32 %12, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.33) #11
  %20 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %337

21:                                               ; preds = %16
  %22 = and i32 %12, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.34) #11
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp eq ptr %1, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !83
  %30 = and i32 %29, 2052
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  %33 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %337

34:                                               ; preds = %27, %25
  %35 = icmp eq i32 %2, 32
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.36) #11
  %37 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %337

38:                                               ; preds = %34
  %39 = icmp eq ptr %0, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 32) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 32) #11
  br label %41

41:                                               ; preds = %38, %40
  %42 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %337

44:                                               ; preds = %41
  %45 = load i8, ptr %4, align 16, !tbaa !34
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 %46, 24
  %48 = getelementptr inbounds i8, ptr %4, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 16
  %52 = or disjoint i32 %51, %47
  %53 = getelementptr inbounds i8, ptr %4, i64 2
  %54 = load i8, ptr %53, align 2, !tbaa !34
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 8
  %57 = or disjoint i32 %52, %56
  %58 = getelementptr inbounds i8, ptr %4, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !34
  %60 = zext i8 %59 to i32
  %61 = or disjoint i32 %57, %60
  %62 = call i32 @llvm.smax.i32(i32 %61, i32 -1)
  %63 = getelementptr inbounds i8, ptr %4, i64 4
  %64 = load i8, ptr %63, align 4, !tbaa !34
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = getelementptr inbounds i8, ptr %4, i64 5
  %68 = load i8, ptr %67, align 1, !tbaa !34
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = or disjoint i32 %70, %66
  %72 = getelementptr inbounds i8, ptr %4, i64 6
  %73 = load i8, ptr %72, align 2, !tbaa !34
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or disjoint i32 %71, %75
  %77 = getelementptr inbounds i8, ptr %4, i64 7
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = zext i8 %78 to i32
  %80 = or disjoint i32 %76, %79
  %81 = call i32 @llvm.smax.i32(i32 %80, i32 -1)
  %82 = getelementptr inbounds i8, ptr %4, i64 8
  %83 = load i8, ptr %82, align 8, !tbaa !34
  %84 = zext i8 %83 to i32
  %85 = shl nuw i32 %84, 24
  %86 = getelementptr inbounds i8, ptr %4, i64 9
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 16
  %90 = or disjoint i32 %89, %85
  %91 = getelementptr inbounds i8, ptr %4, i64 10
  %92 = load i8, ptr %91, align 2, !tbaa !34
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or disjoint i32 %90, %94
  %96 = getelementptr inbounds i8, ptr %4, i64 11
  %97 = load i8, ptr %96, align 1, !tbaa !34
  %98 = zext i8 %97 to i32
  %99 = or disjoint i32 %95, %98
  %100 = call i32 @llvm.smax.i32(i32 %99, i32 -1)
  %101 = getelementptr inbounds i8, ptr %4, i64 12
  %102 = load i8, ptr %101, align 4, !tbaa !34
  %103 = zext i8 %102 to i32
  %104 = shl nuw i32 %103, 24
  %105 = getelementptr inbounds i8, ptr %4, i64 13
  %106 = load i8, ptr %105, align 1, !tbaa !34
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = or disjoint i32 %108, %104
  %110 = getelementptr inbounds i8, ptr %4, i64 14
  %111 = load i8, ptr %110, align 2, !tbaa !34
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or disjoint i32 %109, %113
  %115 = getelementptr inbounds i8, ptr %4, i64 15
  %116 = load i8, ptr %115, align 1, !tbaa !34
  %117 = zext i8 %116 to i32
  %118 = or disjoint i32 %114, %117
  %119 = call i32 @llvm.smax.i32(i32 %118, i32 -1)
  %120 = getelementptr inbounds i8, ptr %4, i64 16
  %121 = load i8, ptr %120, align 16, !tbaa !34
  %122 = zext i8 %121 to i32
  %123 = shl nuw i32 %122, 24
  %124 = getelementptr inbounds i8, ptr %4, i64 17
  %125 = load i8, ptr %124, align 1, !tbaa !34
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or disjoint i32 %127, %123
  %129 = getelementptr inbounds i8, ptr %4, i64 18
  %130 = load i8, ptr %129, align 2, !tbaa !34
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = or disjoint i32 %128, %132
  %134 = getelementptr inbounds i8, ptr %4, i64 19
  %135 = load i8, ptr %134, align 1, !tbaa !34
  %136 = zext i8 %135 to i32
  %137 = or disjoint i32 %133, %136
  %138 = call i32 @llvm.smax.i32(i32 %137, i32 -1)
  %139 = getelementptr inbounds i8, ptr %4, i64 20
  %140 = load i8, ptr %139, align 4, !tbaa !34
  %141 = zext i8 %140 to i32
  %142 = shl nuw i32 %141, 24
  %143 = getelementptr inbounds i8, ptr %4, i64 21
  %144 = load i8, ptr %143, align 1, !tbaa !34
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 16
  %147 = or disjoint i32 %146, %142
  %148 = getelementptr inbounds i8, ptr %4, i64 22
  %149 = load i8, ptr %148, align 2, !tbaa !34
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 8
  %152 = or disjoint i32 %147, %151
  %153 = getelementptr inbounds i8, ptr %4, i64 23
  %154 = load i8, ptr %153, align 1, !tbaa !34
  %155 = zext i8 %154 to i32
  %156 = or disjoint i32 %152, %155
  %157 = call i32 @llvm.smax.i32(i32 %156, i32 -1)
  %158 = getelementptr inbounds i8, ptr %4, i64 24
  %159 = load i8, ptr %158, align 8, !tbaa !34
  %160 = zext i8 %159 to i32
  %161 = shl nuw i32 %160, 24
  %162 = getelementptr inbounds i8, ptr %4, i64 25
  %163 = load i8, ptr %162, align 1, !tbaa !34
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 16
  %166 = or disjoint i32 %165, %161
  %167 = getelementptr inbounds i8, ptr %4, i64 26
  %168 = load i8, ptr %167, align 2, !tbaa !34
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %169, 8
  %171 = or disjoint i32 %166, %170
  %172 = getelementptr inbounds i8, ptr %4, i64 27
  %173 = load i8, ptr %172, align 1, !tbaa !34
  %174 = zext i8 %173 to i32
  %175 = or disjoint i32 %171, %174
  %176 = call i32 @llvm.smax.i32(i32 %175, i32 -1)
  %177 = getelementptr inbounds i8, ptr %4, i64 28
  %178 = load i8, ptr %177, align 4, !tbaa !34
  %179 = zext i8 %178 to i32
  %180 = shl nuw i32 %179, 24
  %181 = getelementptr inbounds i8, ptr %4, i64 29
  %182 = load i8, ptr %181, align 1, !tbaa !34
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 16
  %185 = or disjoint i32 %184, %180
  %186 = getelementptr inbounds i8, ptr %4, i64 30
  %187 = load i8, ptr %186, align 2, !tbaa !34
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 8
  %190 = or disjoint i32 %185, %189
  %191 = getelementptr inbounds i8, ptr %4, i64 31
  %192 = load i8, ptr %191, align 1, !tbaa !34
  %193 = zext i8 %192 to i32
  %194 = or disjoint i32 %190, %193
  %195 = call i32 @llvm.smax.i32(i32 %194, i32 -1)
  %196 = icmp slt i32 %61, 0
  %197 = icmp slt i32 %80, 0
  %198 = select i1 %196, i1 true, i1 %197
  %199 = icmp slt i32 %99, 0
  %200 = select i1 %198, i1 true, i1 %199
  %201 = icmp slt i32 %118, 0
  %202 = select i1 %200, i1 true, i1 %201
  %203 = icmp slt i32 %137, 0
  %204 = select i1 %202, i1 true, i1 %203
  %205 = icmp slt i32 %156, 0
  %206 = select i1 %204, i1 true, i1 %205
  %207 = icmp slt i32 %175, 0
  %208 = select i1 %206, i1 true, i1 %207
  %209 = icmp slt i32 %194, 0
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %44
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.37) #11
  br label %337

212:                                              ; preds = %44
  br i1 %26, label %250, label %213

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %215 = load i32, ptr %214, align 8, !tbaa !83
  %216 = and i32 %215, 2048
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %250, label %218

218:                                              ; preds = %213
  %219 = add nsw i32 %62, -32271
  %220 = icmp ult i32 %219, -2001
  %221 = icmp slt i32 %80, 31900
  %222 = select i1 %220, i1 true, i1 %221
  %223 = icmp sgt i32 %80, 33900
  %224 = select i1 %222, i1 true, i1 %223
  %225 = icmp slt i32 %99, 63000
  %226 = select i1 %224, i1 true, i1 %225
  %227 = icmp sgt i32 %99, 65000
  %228 = select i1 %226, i1 true, i1 %227
  %229 = icmp slt i32 %118, 32000
  %230 = select i1 %228, i1 true, i1 %229
  %231 = icmp sgt i32 %118, 34000
  %232 = select i1 %230, i1 true, i1 %231
  %233 = icmp slt i32 %137, 29000
  %234 = select i1 %232, i1 true, i1 %233
  %235 = icmp sgt i32 %137, 31000
  %236 = select i1 %234, i1 true, i1 %235
  %237 = icmp slt i32 %156, 59000
  %238 = select i1 %236, i1 true, i1 %237
  %239 = icmp sgt i32 %156, 61000
  %240 = select i1 %238, i1 true, i1 %239
  %241 = icmp slt i32 %175, 14000
  %242 = select i1 %240, i1 true, i1 %241
  %243 = icmp sgt i32 %175, 16000
  %244 = select i1 %242, i1 true, i1 %243
  %245 = icmp slt i32 %194, 5000
  %246 = select i1 %244, i1 true, i1 %245
  %247 = icmp sgt i32 %194, 7000
  %248 = select i1 %246, i1 true, i1 %247
  br i1 %248, label %249, label %337

249:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 5, i32 noundef %62) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 5, i32 noundef %81) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 3, i32 noundef 5, i32 noundef %100) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 4, i32 noundef 5, i32 noundef %119) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 5, i32 noundef 5, i32 noundef %138) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 6, i32 noundef 5, i32 noundef %157) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 7, i32 noundef 5, i32 noundef %176) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 8, i32 noundef 5, i32 noundef %195) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.38) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  br label %337

250:                                              ; preds = %213, %212
  %251 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 122
  %252 = load i8, ptr %251, align 2, !tbaa !94
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %336

254:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  store i32 %100, ptr %7, align 8, !tbaa !95
  %255 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 1
  store i32 %119, ptr %255, align 4, !tbaa !97
  %256 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 2
  store i32 %138, ptr %256, align 8, !tbaa !98
  %257 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 3
  store i32 %157, ptr %257, align 4, !tbaa !99
  %258 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 4
  store i32 %176, ptr %258, align 8, !tbaa !100
  %259 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 5
  store i32 %195, ptr %259, align 4, !tbaa !101
  %260 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 6
  store i32 %62, ptr %260, align 8, !tbaa !102
  %261 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 7
  store i32 %81, ptr %261, align 4, !tbaa !103
  %262 = call i32 @png_XYZ_from_xy_checked(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.png_xy) align 8 %7) #11
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %335, label %264

264:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %265 = getelementptr inbounds %struct.png_XYZ, ptr %6, i64 0, i32 1
  %266 = load i32, ptr %265, align 4, !tbaa !104
  %267 = call i32 @png_muldiv(ptr noundef nonnull %8, i32 noundef %266, i32 noundef 32768, i32 noundef 100000) #11
  %268 = icmp ne i32 %267, 0
  %269 = load i32, ptr %8, align 4
  %270 = icmp sgt i32 %269, -1
  %271 = select i1 %268, i1 %270, i1 false
  %272 = icmp slt i32 %269, 32769
  %273 = select i1 %271, i1 %272, i1 false
  br i1 %273, label %274, label %334

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.png_XYZ, ptr %6, i64 0, i32 4
  %276 = load i32, ptr %275, align 4, !tbaa !106
  %277 = call i32 @png_muldiv(ptr noundef nonnull %9, i32 noundef %276, i32 noundef 32768, i32 noundef 100000) #11
  %278 = icmp ne i32 %277, 0
  %279 = load i32, ptr %9, align 4
  %280 = icmp sgt i32 %279, -1
  %281 = select i1 %278, i1 %280, i1 false
  %282 = icmp slt i32 %279, 32769
  %283 = select i1 %281, i1 %282, i1 false
  br i1 %283, label %284, label %334

284:                                              ; preds = %274
  %285 = getelementptr inbounds %struct.png_XYZ, ptr %6, i64 0, i32 7
  %286 = load i32, ptr %285, align 4, !tbaa !107
  %287 = call i32 @png_muldiv(ptr noundef nonnull %10, i32 noundef %286, i32 noundef 32768, i32 noundef 100000) #11
  %288 = icmp ne i32 %287, 0
  %289 = load i32, ptr %10, align 4
  %290 = icmp sgt i32 %289, -1
  %291 = select i1 %288, i1 %290, i1 false
  %292 = icmp slt i32 %289, 32769
  %293 = select i1 %291, i1 %292, i1 false
  br i1 %293, label %294, label %334

294:                                              ; preds = %284
  %295 = load i32, ptr %8, align 4, !tbaa !108
  %296 = load i32, ptr %9, align 4, !tbaa !108
  %297 = add i32 %295, %289
  %298 = add i32 %297, %296
  %299 = icmp slt i32 %298, 32770
  br i1 %299, label %300, label %334

300:                                              ; preds = %294
  %301 = icmp ne i32 %298, 32769
  %302 = icmp sgt i32 %298, 32767
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i32
  %305 = and i1 %301, %302
  %306 = select i1 %301, i32 %304, i32 -1
  br i1 %305, label %321, label %307

307:                                              ; preds = %300
  %308 = icmp slt i32 %296, %295
  %309 = icmp slt i32 %296, %289
  %310 = select i1 %308, i1 true, i1 %309
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  %312 = add nsw i32 %306, %296
  store i32 %312, ptr %9, align 4, !tbaa !108
  br label %321

313:                                              ; preds = %307
  %314 = icmp slt i32 %295, %296
  %315 = icmp slt i32 %295, %289
  %316 = select i1 %314, i1 true, i1 %315
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = add nsw i32 %306, %295
  store i32 %318, ptr %8, align 4, !tbaa !108
  br label %321

319:                                              ; preds = %313
  %320 = add nsw i32 %306, %289
  store i32 %320, ptr %10, align 4, !tbaa !108
  br label %321

321:                                              ; preds = %311, %319, %317, %300
  %322 = load i32, ptr %8, align 4, !tbaa !108
  %323 = load i32, ptr %9, align 4, !tbaa !108
  %324 = add nsw i32 %323, %322
  %325 = load i32, ptr %10, align 4, !tbaa !108
  %326 = add nsw i32 %324, %325
  %327 = icmp eq i32 %326, 32768
  br i1 %327, label %329, label %328

328:                                              ; preds = %321
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.39) #10
  unreachable

329:                                              ; preds = %321
  %330 = trunc i32 %322 to i16
  %331 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  store i16 %330, ptr %331, align 4, !tbaa !109
  %332 = trunc i32 %323 to i16
  %333 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  store i16 %332, ptr %333, align 2, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %335

334:                                              ; preds = %294, %284, %274, %264
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.40) #10
  unreachable

335:                                              ; preds = %329, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  br label %336

336:                                              ; preds = %335, %250
  call void @png_set_cHRM_fixed(ptr noundef %0, ptr noundef %1, i32 noundef %62, i32 noundef %81, i32 noundef %100, i32 noundef %119, i32 noundef %138, i32 noundef %157, i32 noundef %176, i32 noundef %195) #11
  br label %337

337:                                              ; preds = %249, %218, %41, %336, %211, %36, %32, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

declare i32 @png_XYZ_from_xy_checked(ptr noundef, ptr noundef, ptr noundef byval(%struct.png_xy) align 8) local_unnamed_addr #4

declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @png_set_cHRM_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [8 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.41) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.42) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %110

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.43) #11
  br label %20

20:                                               ; preds = %19, %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.44) #11
  %28 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %110

29:                                               ; preds = %22, %20
  %30 = icmp eq i32 %2, 1
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  %32 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %110

33:                                               ; preds = %29
  %34 = icmp eq ptr %0, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 1) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 1) #11
  br label %36

36:                                               ; preds = %33, %35
  %37 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %110

39:                                               ; preds = %36
  %40 = load i8, ptr %4, align 1, !tbaa !34
  %41 = zext i8 %40 to i32
  %42 = icmp ugt i8 %40, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.46) #11
  br label %110

44:                                               ; preds = %39
  br i1 %21, label %101, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !83
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !111
  %53 = add i32 %52, -46001
  %54 = icmp ult i32 %53, -1001
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 5, i32 noundef %52) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  br label %56

56:                                               ; preds = %45, %55, %50
  %57 = load i32, ptr %46, align 8, !tbaa !83
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %101, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %62 = load i32, ptr %61, align 8, !tbaa !112
  %63 = add i32 %62, -32271
  %64 = icmp ult i32 %63, -2001
  br i1 %64, label %100, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %67 = load i32, ptr %66, align 4, !tbaa !113
  %68 = add i32 %67, -33901
  %69 = icmp ult i32 %68, -2001
  br i1 %69, label %100, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %72 = load i32, ptr %71, align 8, !tbaa !114
  %73 = add i32 %72, -65001
  %74 = icmp ult i32 %73, -2001
  br i1 %74, label %100, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %77 = load i32, ptr %76, align 4, !tbaa !115
  %78 = add i32 %77, -34001
  %79 = icmp ult i32 %78, -2001
  br i1 %79, label %100, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %82 = load i32, ptr %81, align 8, !tbaa !116
  %83 = add i32 %82, -31001
  %84 = icmp ult i32 %83, -2001
  br i1 %84, label %100, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %87 = load i32, ptr %86, align 4, !tbaa !117
  %88 = add i32 %87, -61001
  %89 = icmp ult i32 %88, -2001
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %92 = load i32, ptr %91, align 8, !tbaa !118
  %93 = add i32 %92, -16001
  %94 = icmp ult i32 %93, -2001
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %97 = load i32, ptr %96, align 4, !tbaa !119
  %98 = add i32 %97, -7001
  %99 = icmp ult i32 %98, -2001
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %90, %85, %80, %75, %70, %65, %60
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.47) #11
  br label %101

101:                                              ; preds = %44, %95, %100, %56
  %102 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 120
  store i8 1, ptr %102, align 8, !tbaa !120
  %103 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 122
  %104 = load i8, ptr %103, align 2, !tbaa !94
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  store i16 6968, ptr %107, align 4, !tbaa !109
  %108 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  store i16 23434, ptr %108, align 2, !tbaa !110
  store i8 1, ptr %103, align 2, !tbaa !94
  br label %109

109:                                              ; preds = %106, %101
  call void @png_set_sRGB_gAMA_and_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %41) #11
  br label %110

110:                                              ; preds = %36, %109, %43, %31, %27, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret void
}

declare void @png_set_sRGB_gAMA_and_cHRM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca [8 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.48) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.49) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %103

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.50) #11
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, ptr %6, align 4, !tbaa !48
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = icmp eq ptr %1, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !83
  %29 = and i32 %28, 6144
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %20
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.51) #11
  %32 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %103

33:                                               ; preds = %26, %24
  %34 = or disjoint i32 %21, 16384
  store i32 %34, ptr %6, align 4, !tbaa !48
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %36) #11
  %37 = add i32 %2, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %38) #11
  store ptr %39, ptr %35, align 8, !tbaa !58
  %40 = zext i32 %2 to i64
  %41 = icmp eq ptr %0, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %39, i64 noundef %40) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %39, i64 noundef %40) #11
  br label %43

43:                                               ; preds = %33, %42
  %44 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %35, align 8, !tbaa !58
  br i1 %45, label %48, label %47

47:                                               ; preds = %43
  tail call void @png_free(ptr noundef %0, ptr noundef %46) #11
  store ptr null, ptr %35, align 8, !tbaa !58
  br label %103

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %46, i64 %40
  store i8 0, ptr %49, align 1, !tbaa !34
  %50 = load ptr, ptr %35, align 8, !tbaa !58
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %50, %48 ], [ %55, %51 ]
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  br i1 %54, label %56, label %51, !llvm.loop !121

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %52, i64 1
  %58 = getelementptr inbounds i8, ptr %50, i64 %40
  %59 = getelementptr inbounds i8, ptr %58, i64 -1
  %60 = icmp ult ptr %57, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void @png_free(ptr noundef %0, ptr noundef %50) #11
  store ptr null, ptr %35, align 8, !tbaa !58
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.52) #11
  br label %103

62:                                               ; preds = %56
  %63 = getelementptr inbounds i8, ptr %52, i64 2
  %64 = load i8, ptr %57, align 1, !tbaa !34
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.53) #11
  br label %67

67:                                               ; preds = %66, %62
  %68 = load ptr, ptr %35, align 8, !tbaa !58
  %69 = ptrtoint ptr %63 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  call void @png_decompress_chunk(ptr noundef %0, i32 noundef 0, i64 noundef %40, i64 noundef %71, ptr noundef nonnull %4)
  %72 = load i64, ptr %4, align 8, !tbaa !60
  %73 = sub i64 %72, %71
  %74 = icmp ugt i64 %71, %72
  %75 = icmp ult i64 %73, 4
  %76 = or i1 %74, %75
  %77 = load ptr, ptr %35, align 8, !tbaa !58
  br i1 %76, label %78, label %79

78:                                               ; preds = %67
  tail call void @png_free(ptr noundef %0, ptr noundef %77) #11
  store ptr null, ptr %35, align 8, !tbaa !58
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.54) #11
  br label %103

79:                                               ; preds = %67
  %80 = getelementptr inbounds i8, ptr %77, i64 %71
  %81 = load i8, ptr %80, align 1, !tbaa !34
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 %82, 24
  %84 = getelementptr inbounds i8, ptr %80, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = or disjoint i32 %87, %83
  %89 = getelementptr inbounds i8, ptr %80, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or disjoint i32 %88, %92
  %94 = getelementptr inbounds i8, ptr %80, i64 3
  %95 = load i8, ptr %94, align 1, !tbaa !34
  %96 = zext i8 %95 to i32
  %97 = or disjoint i32 %93, %96
  %98 = zext i32 %97 to i64
  %99 = icmp ult i64 %73, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %79
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  tail call void @png_free(ptr noundef %0, ptr noundef %77) #11
  store ptr null, ptr %35, align 8, !tbaa !58
  call void @png_warning_parameter_unsigned(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i64 noundef %98) #11
  call void @png_warning_parameter_unsigned(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 1, i64 noundef %73) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.55) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  br label %103

101:                                              ; preds = %79
  tail call void @png_set_iCCP(ptr noundef %0, ptr noundef %1, ptr noundef %77, i32 noundef 0, ptr noundef nonnull %80, i32 noundef %97) #11
  %102 = load ptr, ptr %35, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %102) #11
  store ptr null, ptr %35, align 8, !tbaa !58
  br label %103

103:                                              ; preds = %101, %100, %78, %61, %47, %31, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @png_warning_parameter_unsigned(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @png_set_iCCP(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_sPLT(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.png_sPLT_struct, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %6 = load i32, ptr %5, align 4, !tbaa !122
  switch i32 %6, label %9 [
    i32 0, label %14
    i32 1, label %7
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %156

9:                                                ; preds = %3
  %10 = add i32 %6, -1
  store i32 %10, ptr %5, align 4, !tbaa !122
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.56) #11
  %13 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %156

14:                                               ; preds = %3, %9
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.57) #10
  unreachable

20:                                               ; preds = %14
  %21 = and i32 %16, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.58) #11
  %24 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %156

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %27) #11
  %28 = add i32 %2, 1
  %29 = zext i32 %28 to i64
  %30 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %29) #11
  store ptr %30, ptr %26, align 8, !tbaa !58
  %31 = zext i32 %2 to i64
  %32 = icmp eq ptr %0, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %30, i64 noundef %31) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %30, i64 noundef %31) #11
  br label %34

34:                                               ; preds = %25, %33
  %35 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %26, align 8, !tbaa !58
  br i1 %36, label %39, label %38

38:                                               ; preds = %34
  tail call void @png_free(ptr noundef %0, ptr noundef %37) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  br label %156

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, ptr %37, i64 %31
  store i8 0, ptr %40, align 1, !tbaa !34
  %41 = load ptr, ptr %26, align 8, !tbaa !58
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %41, %39 ], [ %46, %42 ]
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  br i1 %45, label %47, label %42, !llvm.loop !123

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  %49 = getelementptr inbounds i8, ptr %41, i64 %31
  %50 = getelementptr inbounds i8, ptr %49, i64 -2
  %51 = icmp ugt ptr %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @png_free(ptr noundef %0, ptr noundef %41) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.59) #11
  br label %156

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, ptr %43, i64 2
  %55 = load i8, ptr %48, align 1, !tbaa !34
  %56 = getelementptr inbounds %struct.png_sPLT_struct, ptr %4, i64 0, i32 1
  store i8 %55, ptr %56, align 8, !tbaa !124
  %57 = icmp eq i8 %55, 8
  %58 = select i1 %57, i32 6, i32 10
  %59 = ptrtoint ptr %54 to i64
  %60 = ptrtoint ptr %41 to i64
  %61 = sub i64 %60, %59
  %62 = trunc i64 %61 to i32
  %63 = add i32 %62, %2
  %64 = urem i32 %63, %58
  %65 = udiv i32 %63, %58
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  tail call void @png_free(ptr noundef %0, ptr noundef %41) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.60) #11
  br label %156

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.png_sPLT_struct, ptr %4, i64 0, i32 3
  store i32 %65, ptr %69, align 8, !tbaa !126
  %70 = zext nneg i32 %65 to i64
  %71 = mul nuw nsw i64 %70, 10
  %72 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %71) #11
  %73 = getelementptr inbounds %struct.png_sPLT_struct, ptr %4, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !127
  %74 = icmp eq ptr %72, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr %69, align 8, !tbaa !126
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %152

78:                                               ; preds = %75
  %79 = load i8, ptr %56, align 8, !tbaa !124
  %80 = icmp eq i8 %79, 8
  %81 = zext nneg i32 %76 to i64
  br label %83

82:                                               ; preds = %68
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.62) #11
  br label %156

83:                                               ; preds = %78, %139
  %84 = phi i64 [ 0, %78 ], [ %150, %139 ]
  %85 = phi ptr [ %54, %78 ], [ %149, %139 ]
  %86 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84
  br i1 %80, label %87, label %103

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %85, i64 1
  %89 = load i8, ptr %85, align 1, !tbaa !34
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %86, align 2, !tbaa !128
  %91 = getelementptr inbounds i8, ptr %85, i64 2
  %92 = load i8, ptr %88, align 1, !tbaa !34
  %93 = zext i8 %92 to i16
  %94 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 1
  store i16 %93, ptr %94, align 2, !tbaa !130
  %95 = getelementptr inbounds i8, ptr %85, i64 3
  %96 = load i8, ptr %91, align 1, !tbaa !34
  %97 = zext i8 %96 to i16
  %98 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 2
  store i16 %97, ptr %98, align 2, !tbaa !131
  %99 = getelementptr inbounds i8, ptr %85, i64 4
  %100 = load i8, ptr %95, align 1, !tbaa !34
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 3
  store i16 %101, ptr %102, align 2, !tbaa !132
  br label %139

103:                                              ; preds = %83
  %104 = load i8, ptr %85, align 1, !tbaa !34
  %105 = zext i8 %104 to i16
  %106 = shl nuw i16 %105, 8
  %107 = getelementptr inbounds i8, ptr %85, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !34
  %109 = zext i8 %108 to i16
  %110 = or disjoint i16 %106, %109
  store i16 %110, ptr %86, align 2, !tbaa !128
  %111 = getelementptr inbounds i8, ptr %85, i64 2
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = zext i8 %112 to i16
  %114 = shl nuw i16 %113, 8
  %115 = getelementptr inbounds i8, ptr %85, i64 3
  %116 = load i8, ptr %115, align 1, !tbaa !34
  %117 = zext i8 %116 to i16
  %118 = or disjoint i16 %114, %117
  %119 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 1
  store i16 %118, ptr %119, align 2, !tbaa !130
  %120 = getelementptr inbounds i8, ptr %85, i64 4
  %121 = load i8, ptr %120, align 1, !tbaa !34
  %122 = zext i8 %121 to i16
  %123 = shl nuw i16 %122, 8
  %124 = getelementptr inbounds i8, ptr %85, i64 5
  %125 = load i8, ptr %124, align 1, !tbaa !34
  %126 = zext i8 %125 to i16
  %127 = or disjoint i16 %123, %126
  %128 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 2
  store i16 %127, ptr %128, align 2, !tbaa !131
  %129 = getelementptr inbounds i8, ptr %85, i64 6
  %130 = load i8, ptr %129, align 1, !tbaa !34
  %131 = zext i8 %130 to i16
  %132 = shl nuw i16 %131, 8
  %133 = getelementptr inbounds i8, ptr %85, i64 7
  %134 = load i8, ptr %133, align 1, !tbaa !34
  %135 = zext i8 %134 to i16
  %136 = or disjoint i16 %132, %135
  %137 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 3
  store i16 %136, ptr %137, align 2, !tbaa !132
  %138 = getelementptr inbounds i8, ptr %85, i64 8
  br label %139

139:                                              ; preds = %103, %87
  %140 = phi ptr [ %99, %87 ], [ %138, %103 ]
  %141 = load i8, ptr %140, align 1, !tbaa !34
  %142 = zext i8 %141 to i16
  %143 = shl nuw i16 %142, 8
  %144 = getelementptr inbounds i8, ptr %140, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !34
  %146 = zext i8 %145 to i16
  %147 = or disjoint i16 %143, %146
  %148 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %72, i64 %84, i32 4
  store i16 %147, ptr %148, align 2, !tbaa !133
  %149 = getelementptr inbounds i8, ptr %140, i64 2
  %150 = add nuw nsw i64 %84, 1
  %151 = icmp eq i64 %150, %81
  br i1 %151, label %152, label %83, !llvm.loop !134

152:                                              ; preds = %139, %75
  %153 = load ptr, ptr %26, align 8, !tbaa !58
  store ptr %153, ptr %4, align 8, !tbaa !135
  call void @png_set_sPLT(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #11
  %154 = load ptr, ptr %26, align 8, !tbaa !58
  call void @png_free(ptr noundef %0, ptr noundef %154) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  %155 = load ptr, ptr %73, align 8, !tbaa !127
  call void @png_free(ptr noundef %0, ptr noundef %155) #11
  br label %156

156:                                              ; preds = %152, %82, %67, %52, %38, %23, %12, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

declare void @png_set_sPLT(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_tRNS(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [2 x i8], align 1
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #11
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.63) #10
  unreachable

12:                                               ; preds = %3
  %13 = and i32 %8, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.64) #11
  %16 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %118

17:                                               ; preds = %12
  %18 = icmp eq ptr %1, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !83
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.65) #11
  %25 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %118

26:                                               ; preds = %19, %17
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %28 = load i8, ptr %27, align 1, !tbaa !72
  switch i8 %28, label %107 [
    i8 0, label %29
    i8 2, label %47
    i8 3, label %83
  ]

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  %30 = icmp eq i32 %2, 2
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.66) #11
  %32 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %46

33:                                               ; preds = %29
  %34 = icmp eq ptr %0, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 2) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 2) #11
  br label %36

36:                                               ; preds = %33, %35
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 1, ptr %37, align 8, !tbaa !86
  %38 = load i8, ptr %5, align 1, !tbaa !34
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  %41 = getelementptr inbounds i8, ptr %5, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = zext i8 %42 to i16
  %44 = or disjoint i16 %40, %43
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 4
  store i16 %44, ptr %45, align 8, !tbaa !136
  br label %46

46:                                               ; preds = %36, %31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br i1 %30, label %109, label %118

47:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  %48 = icmp eq i32 %2, 6
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.66) #11
  %50 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %82

51:                                               ; preds = %47
  %52 = icmp eq ptr %0, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 6) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 6) #11
  br label %54

54:                                               ; preds = %51, %53
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 1, ptr %55, align 8, !tbaa !86
  %56 = load i8, ptr %6, align 1, !tbaa !34
  %57 = zext i8 %56 to i16
  %58 = shl nuw i16 %57, 8
  %59 = getelementptr inbounds i8, ptr %6, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = zext i8 %60 to i16
  %62 = or disjoint i16 %58, %61
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 1
  store i16 %62, ptr %63, align 2, !tbaa !137
  %64 = getelementptr inbounds i8, ptr %6, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !34
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = getelementptr inbounds i8, ptr %6, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !34
  %70 = zext i8 %69 to i16
  %71 = or disjoint i16 %67, %70
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 2
  store i16 %71, ptr %72, align 4, !tbaa !138
  %73 = getelementptr inbounds i8, ptr %6, i64 4
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = zext i8 %74 to i16
  %76 = shl nuw i16 %75, 8
  %77 = getelementptr inbounds i8, ptr %6, i64 5
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = zext i8 %78 to i16
  %80 = or disjoint i16 %76, %79
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 3
  store i16 %80, ptr %81, align 2, !tbaa !139
  br label %82

82:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  br i1 %48, label %109, label %118

83:                                               ; preds = %26
  %84 = and i32 %8, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.67) #11
  br label %87

87:                                               ; preds = %86, %83
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %89 = load i16, ptr %88, align 8, !tbaa !140
  %90 = zext i16 %89 to i32
  %91 = icmp ult i32 %90, %2
  %92 = icmp ugt i32 %2, 256
  %93 = or i1 %92, %91
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.66) #11
  %95 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %118

96:                                               ; preds = %87
  %97 = icmp eq i32 %2, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.68) #11
  %99 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  br label %118

100:                                              ; preds = %96
  %101 = icmp eq ptr %0, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = zext nneg i32 %2 to i64
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %103) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %103) #11
  br label %104

104:                                              ; preds = %100, %102
  %105 = trunc i32 %2 to i16
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 %105, ptr %106, align 8, !tbaa !86
  br label %109

107:                                              ; preds = %26
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.69) #11
  %108 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %118

109:                                              ; preds = %104, %82, %46
  %110 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %111 = icmp eq i32 %110, 0
  %112 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  br i1 %111, label %114, label %113

113:                                              ; preds = %109
  store i16 0, ptr %112, align 8, !tbaa !86
  br label %118

114:                                              ; preds = %109
  %115 = load i16, ptr %112, align 8, !tbaa !86
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86
  call void @png_set_tRNS(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %116, ptr noundef nonnull %117) #11
  br label %118

118:                                              ; preds = %46, %82, %114, %113, %107, %98, %94, %24, %15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #11
  ret void
}

declare void @png_set_tRNS(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_bKGD(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.png_color_16_struct, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.70) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.71) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %121

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %18 = load i8, ptr %17, align 1, !tbaa !72
  %19 = icmp eq i8 %18, 3
  %20 = and i32 %7, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %21, %19
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.72) #11
  %24 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %121

25:                                               ; preds = %16
  %26 = icmp eq ptr %1, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !83
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.73) #11
  %33 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %121

34:                                               ; preds = %25, %27
  %35 = and i8 %18, 2
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i64 2, i64 6
  %38 = select i1 %19, i64 1, i64 %37
  %39 = zext i32 %2 to i64
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.74) #11
  %42 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %121

43:                                               ; preds = %34
  %44 = icmp eq ptr %0, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %38) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %38) #11
  br label %46

46:                                               ; preds = %43, %45
  %47 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %121

49:                                               ; preds = %46
  %50 = load i8, ptr %17, align 1, !tbaa !72
  %51 = icmp eq i8 %50, 3
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  %53 = load i8, ptr %4, align 1, !tbaa !34
  store i8 %53, ptr %5, align 2, !tbaa !141
  br i1 %26, label %78, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %56 = load i16, ptr %55, align 8, !tbaa !142
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %54
  %59 = zext i8 %53 to i16
  %60 = icmp ugt i16 %56, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.75) #11
  br label %121

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  %65 = zext i8 %53 to i64
  %66 = getelementptr inbounds %struct.png_color_struct, ptr %64, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !78
  %68 = zext i8 %67 to i16
  %69 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 %68, ptr %69, align 2, !tbaa !144
  %70 = getelementptr inbounds %struct.png_color_struct, ptr %64, i64 %65, i32 1
  %71 = load i8, ptr %70, align 1, !tbaa !80
  %72 = zext i8 %71 to i16
  %73 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 %72, ptr %73, align 2, !tbaa !145
  %74 = getelementptr inbounds %struct.png_color_struct, ptr %64, i64 %65, i32 2
  %75 = load i8, ptr %74, align 1, !tbaa !81
  %76 = zext i8 %75 to i16
  %77 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 %76, ptr %77, align 2, !tbaa !146
  br label %82

78:                                               ; preds = %54, %52
  %79 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 0, ptr %79, align 2, !tbaa !146
  %80 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 0, ptr %80, align 2, !tbaa !145
  %81 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 0, ptr %81, align 2, !tbaa !144
  br label %82

82:                                               ; preds = %78, %62
  %83 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 4
  store i16 0, ptr %83, align 2, !tbaa !147
  br label %120

84:                                               ; preds = %49
  %85 = and i8 %50, 2
  %86 = icmp eq i8 %85, 0
  store i8 0, ptr %5, align 2, !tbaa !141
  %87 = load i8, ptr %4, align 1, !tbaa !34
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  %90 = getelementptr inbounds i8, ptr %4, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !34
  %92 = zext i8 %91 to i16
  %93 = or disjoint i16 %89, %92
  br i1 %86, label %94, label %99

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 4
  store i16 %93, ptr %95, align 2, !tbaa !147
  %96 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 %93, ptr %96, align 2, !tbaa !146
  %97 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 %93, ptr %97, align 2, !tbaa !145
  %98 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 %93, ptr %98, align 2, !tbaa !144
  br label %120

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 %93, ptr %100, align 2, !tbaa !144
  %101 = getelementptr inbounds i8, ptr %4, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !34
  %103 = zext i8 %102 to i16
  %104 = shl nuw i16 %103, 8
  %105 = getelementptr inbounds i8, ptr %4, i64 3
  %106 = load i8, ptr %105, align 1, !tbaa !34
  %107 = zext i8 %106 to i16
  %108 = or disjoint i16 %104, %107
  %109 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 %108, ptr %109, align 2, !tbaa !145
  %110 = getelementptr inbounds i8, ptr %4, i64 4
  %111 = load i8, ptr %110, align 1, !tbaa !34
  %112 = zext i8 %111 to i16
  %113 = shl nuw i16 %112, 8
  %114 = getelementptr inbounds i8, ptr %4, i64 5
  %115 = load i8, ptr %114, align 1, !tbaa !34
  %116 = zext i8 %115 to i16
  %117 = or disjoint i16 %113, %116
  %118 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 %117, ptr %118, align 2, !tbaa !146
  %119 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 4
  store i16 0, ptr %119, align 2, !tbaa !147
  br label %120

120:                                              ; preds = %94, %99, %82
  call void @png_set_bKGD(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #11
  br label %121

121:                                              ; preds = %46, %120, %61, %41, %32, %23, %14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  ret void
}

declare void @png_set_bKGD(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_hIST(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i16], align 16
  %5 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.76) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.77) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %64

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.78) #11
  %20 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %64

21:                                               ; preds = %16
  %22 = icmp eq ptr %1, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !83
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.79) #11
  %29 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %64

30:                                               ; preds = %21, %23
  %31 = icmp ugt i32 %2, 512
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %34 = load i16, ptr %33, align 8, !tbaa !140
  %35 = zext i16 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %40, label %38

38:                                               ; preds = %32, %30
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.80) #11
  %39 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %64

40:                                               ; preds = %32
  %41 = icmp ult i32 %2, 2
  br i1 %41, label %60, label %42

42:                                               ; preds = %40
  %43 = lshr i32 %2, 1
  %44 = icmp eq ptr %0, null
  %45 = getelementptr inbounds i8, ptr %5, i64 1
  %46 = zext nneg i32 %43 to i64
  br label %47

47:                                               ; preds = %42, %50
  %48 = phi i64 [ 0, %42 ], [ %58, %50 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  br i1 %44, label %50, label %49

49:                                               ; preds = %47
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 2) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 2) #11
  br label %50

50:                                               ; preds = %47, %49
  %51 = load i8, ptr %5, align 1, !tbaa !34
  %52 = zext i8 %51 to i16
  %53 = shl nuw i16 %52, 8
  %54 = load i8, ptr %45, align 1, !tbaa !34
  %55 = zext i8 %54 to i16
  %56 = or disjoint i16 %53, %55
  %57 = getelementptr inbounds [256 x i16], ptr %4, i64 0, i64 %48
  store i16 %56, ptr %57, align 2, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %58 = add nuw nsw i64 %48, 1
  %59 = icmp eq i64 %58, %46
  br i1 %59, label %60, label %47, !llvm.loop !149

60:                                               ; preds = %50, %40
  %61 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @png_set_hIST(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #11
  br label %64

64:                                               ; preds = %60, %63, %38, %28, %19, %14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #11
  ret void
}

declare void @png_set_hIST(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.81) #10
  unreachable

10:                                               ; preds = %3
  %11 = and i32 %6, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.82) #11
  %14 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %73

15:                                               ; preds = %10
  %16 = icmp eq ptr %1, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.83) #11
  %23 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %73

24:                                               ; preds = %17, %15
  %25 = icmp eq i32 %2, 9
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.84) #11
  %27 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %73

28:                                               ; preds = %24
  %29 = icmp eq ptr %0, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 9) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 9) #11
  br label %31

31:                                               ; preds = %28, %30
  %32 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %31
  %35 = load i8, ptr %4, align 1, !tbaa !34
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = getelementptr inbounds i8, ptr %4, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %41, %37
  %43 = getelementptr inbounds i8, ptr %4, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = or disjoint i32 %42, %46
  %48 = getelementptr inbounds i8, ptr %4, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = getelementptr inbounds i8, ptr %4, i64 4
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = getelementptr inbounds i8, ptr %4, i64 5
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or disjoint i32 %59, %55
  %61 = getelementptr inbounds i8, ptr %4, i64 6
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or disjoint i32 %60, %64
  %66 = getelementptr inbounds i8, ptr %4, i64 7
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = zext i8 %67 to i32
  %69 = or disjoint i32 %65, %68
  %70 = getelementptr inbounds [9 x i8], ptr %4, i64 0, i64 8
  %71 = load i8, ptr %70, align 1, !tbaa !34
  %72 = zext i8 %71 to i32
  call void @png_set_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %51, i32 noundef %69, i32 noundef %72) #11
  br label %73

73:                                               ; preds = %31, %34, %26, %22, %13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #11
  ret void
}

declare void @png_set_pHYs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.85) #10
  unreachable

10:                                               ; preds = %3
  %11 = and i32 %6, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.86) #11
  %14 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %113

15:                                               ; preds = %10
  %16 = icmp eq ptr %1, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.87) #11
  %23 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %113

24:                                               ; preds = %17, %15
  %25 = icmp eq i32 %2, 9
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.88) #11
  %27 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %113

28:                                               ; preds = %24
  %29 = icmp eq ptr %0, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 9) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 9) #11
  br label %31

31:                                               ; preds = %28, %30
  %32 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %113

34:                                               ; preds = %31
  %35 = load i8, ptr %4, align 1, !tbaa !34
  %36 = zext i8 %35 to i32
  %37 = icmp sgt i8 %35, -1
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %4, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = shl nuw i32 %36, 24
  %44 = getelementptr inbounds i8, ptr %4, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds i8, ptr %4, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %42, %43
  %52 = or disjoint i32 %51, %47
  %53 = or disjoint i32 %52, %50
  br label %70

54:                                               ; preds = %34
  %55 = shl nuw nsw i32 %36, 24
  %56 = getelementptr inbounds i8, ptr %4, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or disjoint i32 %59, %55
  %61 = getelementptr inbounds i8, ptr %4, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or disjoint i32 %60, %64
  %66 = getelementptr inbounds i8, ptr %4, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = zext i8 %67 to i32
  %69 = or disjoint i32 %65, %68
  br label %70

70:                                               ; preds = %54, %38
  %71 = phi i32 [ %53, %38 ], [ %69, %54 ]
  %72 = getelementptr inbounds i8, ptr %4, i64 4
  %73 = load i8, ptr %72, align 1, !tbaa !34
  %74 = zext i8 %73 to i32
  %75 = icmp sgt i8 %73, -1
  br i1 %75, label %92, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds i8, ptr %4, i64 5
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = shl nuw i32 %74, 24
  %82 = getelementptr inbounds i8, ptr %4, i64 6
  %83 = load i8, ptr %82, align 1, !tbaa !34
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = getelementptr inbounds i8, ptr %4, i64 7
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = zext i8 %87 to i32
  %89 = or disjoint i32 %80, %81
  %90 = or disjoint i32 %89, %85
  %91 = or disjoint i32 %90, %88
  br label %108

92:                                               ; preds = %70
  %93 = shl nuw nsw i32 %74, 24
  %94 = getelementptr inbounds i8, ptr %4, i64 5
  %95 = load i8, ptr %94, align 1, !tbaa !34
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = or disjoint i32 %97, %93
  %99 = getelementptr inbounds i8, ptr %4, i64 6
  %100 = load i8, ptr %99, align 1, !tbaa !34
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = or disjoint i32 %98, %102
  %104 = getelementptr inbounds i8, ptr %4, i64 7
  %105 = load i8, ptr %104, align 1, !tbaa !34
  %106 = zext i8 %105 to i32
  %107 = or disjoint i32 %103, %106
  br label %108

108:                                              ; preds = %92, %76
  %109 = phi i32 [ %91, %76 ], [ %107, %92 ]
  %110 = getelementptr inbounds [9 x i8], ptr %4, i64 0, i64 8
  %111 = load i8, ptr %110, align 1, !tbaa !34
  %112 = zext i8 %111 to i32
  call void @png_set_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %71, i32 noundef %109, i32 noundef %112) #11
  br label %113

113:                                              ; preds = %31, %108, %26, %22, %13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #11
  ret void
}

declare void @png_set_oFFs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.89) #10
  unreachable

9:                                                ; preds = %3
  %10 = and i32 %5, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.90) #11
  %13 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %193

14:                                               ; preds = %9
  %15 = icmp eq ptr %1, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !83
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.91) #11
  %22 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %193

23:                                               ; preds = %16, %14
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %25) #11
  %26 = add i32 %2, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %27) #11
  store ptr %28, ptr %24, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.92) #11
  br label %193

31:                                               ; preds = %23
  %32 = zext i32 %2 to i64
  %33 = icmp eq ptr %0, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %28, i64 noundef %32) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %28, i64 noundef %32) #11
  br label %35

35:                                               ; preds = %31, %34
  %36 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %24, align 8, !tbaa !58
  br i1 %37, label %40, label %39

39:                                               ; preds = %35
  tail call void @png_free(ptr noundef %0, ptr noundef %38) #11
  store ptr null, ptr %24, align 8, !tbaa !58
  br label %193

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %38, i64 %32
  store i8 0, ptr %41, align 1, !tbaa !34
  %42 = load ptr, ptr %24, align 8, !tbaa !58
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %42, %40 ], [ %47, %43 ]
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  br i1 %46, label %48, label %43, !llvm.loop !150

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %42, i64 %32
  %50 = getelementptr inbounds i8, ptr %44, i64 12
  %51 = icmp ugt ptr %49, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.93) #11
  %53 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %53) #11
  store ptr null, ptr %24, align 8, !tbaa !58
  br label %193

54:                                               ; preds = %48
  %55 = getelementptr inbounds i8, ptr %44, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !34
  %57 = zext i8 %56 to i32
  %58 = icmp sgt i8 %56, -1
  br i1 %58, label %75, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %44, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = shl nuw i32 %57, 24
  %65 = getelementptr inbounds i8, ptr %44, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !34
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = getelementptr inbounds i8, ptr %44, i64 4
  %70 = load i8, ptr %69, align 1, !tbaa !34
  %71 = zext i8 %70 to i32
  %72 = or disjoint i32 %63, %64
  %73 = or disjoint i32 %72, %68
  %74 = or disjoint i32 %73, %71
  br label %91

75:                                               ; preds = %54
  %76 = shl nuw nsw i32 %57, 24
  %77 = getelementptr inbounds i8, ptr %44, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or disjoint i32 %80, %76
  %82 = getelementptr inbounds i8, ptr %44, i64 3
  %83 = load i8, ptr %82, align 1, !tbaa !34
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or disjoint i32 %81, %85
  %87 = getelementptr inbounds i8, ptr %44, i64 4
  %88 = load i8, ptr %87, align 1, !tbaa !34
  %89 = zext i8 %88 to i32
  %90 = or disjoint i32 %86, %89
  br label %91

91:                                               ; preds = %75, %59
  %92 = phi i32 [ %74, %59 ], [ %90, %75 ]
  %93 = getelementptr inbounds i8, ptr %44, i64 5
  %94 = load i8, ptr %93, align 1, !tbaa !34
  %95 = zext i8 %94 to i32
  %96 = icmp sgt i8 %94, -1
  br i1 %96, label %113, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds i8, ptr %44, i64 6
  %99 = load i8, ptr %98, align 1, !tbaa !34
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = shl nuw i32 %95, 24
  %103 = getelementptr inbounds i8, ptr %44, i64 7
  %104 = load i8, ptr %103, align 1, !tbaa !34
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = getelementptr inbounds i8, ptr %44, i64 8
  %108 = load i8, ptr %107, align 1, !tbaa !34
  %109 = zext i8 %108 to i32
  %110 = or disjoint i32 %101, %102
  %111 = or disjoint i32 %110, %106
  %112 = or disjoint i32 %111, %109
  br label %129

113:                                              ; preds = %91
  %114 = shl nuw nsw i32 %95, 24
  %115 = getelementptr inbounds i8, ptr %44, i64 6
  %116 = load i8, ptr %115, align 1, !tbaa !34
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = or disjoint i32 %118, %114
  %120 = getelementptr inbounds i8, ptr %44, i64 7
  %121 = load i8, ptr %120, align 1, !tbaa !34
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = or disjoint i32 %119, %123
  %125 = getelementptr inbounds i8, ptr %44, i64 8
  %126 = load i8, ptr %125, align 1, !tbaa !34
  %127 = zext i8 %126 to i32
  %128 = or disjoint i32 %124, %127
  br label %129

129:                                              ; preds = %113, %97
  %130 = phi i32 [ %112, %97 ], [ %128, %113 ]
  %131 = getelementptr inbounds i8, ptr %44, i64 9
  %132 = load i8, ptr %131, align 1, !tbaa !34
  %133 = getelementptr inbounds i8, ptr %44, i64 10
  %134 = load i8, ptr %133, align 1, !tbaa !34
  %135 = getelementptr inbounds i8, ptr %44, i64 11
  %136 = zext i8 %132 to i32
  %137 = icmp eq i8 %132, 0
  %138 = zext i8 %134 to i32
  %139 = icmp ne i8 %134, 2
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %150, label %141

141:                                              ; preds = %129
  %142 = icmp ne i8 %134, 3
  %143 = add i8 %132, -1
  %144 = icmp ult i8 %143, 2
  %145 = select i1 %144, i1 %142, i1 false
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = icmp eq i8 %132, 3
  %148 = icmp ne i8 %134, 4
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %141, %129
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.94) #11
  %151 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %151) #11
  store ptr null, ptr %24, align 8, !tbaa !58
  br label %193

152:                                              ; preds = %146
  %153 = icmp ugt i8 %132, 3
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.95) #11
  br label %155

155:                                              ; preds = %152, %154
  br label %156

156:                                              ; preds = %155, %156
  %157 = phi ptr [ %160, %156 ], [ %135, %155 ]
  %158 = load i8, ptr %157, align 1, !tbaa !34
  %159 = icmp eq i8 %158, 0
  %160 = getelementptr inbounds i8, ptr %157, i64 1
  br i1 %159, label %161, label %156, !llvm.loop !151

161:                                              ; preds = %156
  %162 = zext i8 %134 to i64
  %163 = shl nuw nsw i64 %162, 3
  %164 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %163) #11
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = icmp eq i8 %134, 0
  br i1 %167, label %190, label %168

168:                                              ; preds = %166
  %169 = zext i8 %134 to i64
  br label %172

170:                                              ; preds = %161
  %171 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %171) #11
  store ptr null, ptr %24, align 8, !tbaa !58
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.96) #11
  br label %193

172:                                              ; preds = %168, %187
  %173 = phi i64 [ 0, %168 ], [ %188, %187 ]
  %174 = phi ptr [ %157, %168 ], [ %179, %187 ]
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  %176 = getelementptr inbounds ptr, ptr %164, i64 %173
  store ptr %175, ptr %176, align 8, !tbaa !152
  %177 = icmp ugt ptr %175, %49
  br i1 %177, label %185, label %178

178:                                              ; preds = %172, %182
  %179 = phi ptr [ %183, %182 ], [ %175, %172 ]
  %180 = load i8, ptr %179, align 1, !tbaa !34
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %179, i64 1
  %184 = icmp ugt ptr %183, %49
  br i1 %184, label %185, label %178, !llvm.loop !153

185:                                              ; preds = %172, %182
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.93) #11
  %186 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %186) #11
  store ptr null, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %164) #11
  br label %193

187:                                              ; preds = %178
  %188 = add nuw nsw i64 %173, 1
  %189 = icmp eq i64 %188, %169
  br i1 %189, label %190, label %172, !llvm.loop !154

190:                                              ; preds = %187, %166
  %191 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_set_pCAL(ptr noundef %0, ptr noundef %1, ptr noundef %191, i32 noundef %92, i32 noundef %130, i32 noundef %136, i32 noundef %138, ptr noundef nonnull %135, ptr noundef nonnull %164) #11
  %192 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %192) #11
  store ptr null, ptr %24, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %164) #11
  br label %193

193:                                              ; preds = %190, %185, %170, %150, %52, %39, %30, %21, %12
  ret void
}

declare void @png_set_pCAL(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_sCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.97) #10
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.98) #11
  %15 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %92

16:                                               ; preds = %11
  %17 = icmp eq ptr %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !83
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.99) #11
  %24 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %92

25:                                               ; preds = %18, %16
  %26 = icmp ult i32 %2, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.100) #11
  %28 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %92

29:                                               ; preds = %25
  %30 = add i32 %2, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %31) #11
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  store ptr %32, ptr %33, align 8, !tbaa !58
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.101) #11
  %36 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %92

37:                                               ; preds = %29
  %38 = zext i32 %2 to i64
  %39 = icmp eq ptr %0, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef %38) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef %38) #11
  br label %41

41:                                               ; preds = %37, %40
  %42 = load ptr, ptr %33, align 8, !tbaa !58
  %43 = getelementptr inbounds i8, ptr %42, i64 %38
  store i8 0, ptr %43, align 1, !tbaa !34
  %44 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %33, align 8, !tbaa !58
  br i1 %45, label %48, label %47

47:                                               ; preds = %41
  tail call void @png_free(ptr noundef %0, ptr noundef %46) #11
  store ptr null, ptr %33, align 8, !tbaa !58
  br label %92

48:                                               ; preds = %41
  %49 = load i8, ptr %46, align 1, !tbaa !34
  %50 = add i8 %49, -1
  %51 = icmp ult i8 %50, 2
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.102) #11
  %53 = load ptr, ptr %33, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %53) #11
  store ptr null, ptr %33, align 8, !tbaa !58
  br label %92

54:                                               ; preds = %48
  store i64 1, ptr %4, align 8, !tbaa !60
  store i32 0, ptr %5, align 4, !tbaa !108
  %55 = call i32 @png_check_fp_number(ptr noundef nonnull %46, i64 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load i64, ptr %4, align 8, !tbaa !60
  %59 = icmp ult i64 %58, %38
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load ptr, ptr %33, align 8, !tbaa !58
  %62 = add nuw nsw i64 %58, 1
  store i64 %62, ptr %4, align 8, !tbaa !60
  %63 = getelementptr inbounds i8, ptr %61, i64 %58
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60, %57, %54
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.103) #11
  br label %90

67:                                               ; preds = %60
  %68 = load i32, ptr %5, align 4, !tbaa !108
  %69 = and i32 %68, 392
  %70 = icmp eq i32 %69, 264
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.104) #11
  br label %90

72:                                               ; preds = %67
  store i32 0, ptr %5, align 4, !tbaa !108
  %73 = call i32 @png_check_fp_number(ptr noundef %61, i64 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  %74 = icmp ne i32 %73, 0
  %75 = load i64, ptr %4, align 8
  %76 = icmp eq i64 %75, %38
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.105) #11
  br label %90

79:                                               ; preds = %72
  %80 = load i32, ptr %5, align 4, !tbaa !108
  %81 = and i32 %80, 392
  %82 = icmp eq i32 %81, 264
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.106) #11
  br label %90

84:                                               ; preds = %79
  %85 = load ptr, ptr %33, align 8, !tbaa !58
  %86 = load i8, ptr %85, align 1, !tbaa !34
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds i8, ptr %85, i64 1
  %89 = getelementptr inbounds i8, ptr %85, i64 %62
  call void @png_set_sCAL_s(ptr noundef %0, ptr noundef %1, i32 noundef %87, ptr noundef nonnull %88, ptr noundef nonnull %89) #11
  br label %90

90:                                               ; preds = %78, %84, %83, %71, %66
  %91 = load ptr, ptr %33, align 8, !tbaa !58
  call void @png_free(ptr noundef %0, ptr noundef %91) #11
  store ptr null, ptr %33, align 8, !tbaa !58
  br label %92

92:                                               ; preds = %90, %52, %47, %35, %27, %23, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

declare i32 @png_check_fp_number(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_set_sCAL_s(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_tIME(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [7 x i8], align 1
  %5 = alloca %struct.png_time_struct, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.107) #10
  unreachable

11:                                               ; preds = %3
  %12 = icmp eq ptr %1, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !83
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.108) #11
  %19 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %58

20:                                               ; preds = %11, %13
  %21 = and i32 %7, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = or i32 %7, 8
  store i32 %24, ptr %6, align 4, !tbaa !48
  br label %25

25:                                               ; preds = %23, %20
  %26 = icmp eq i32 %2, 7
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.109) #11
  %28 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %58

29:                                               ; preds = %25
  %30 = icmp eq ptr %0, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 7) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 7) #11
  br label %32

32:                                               ; preds = %29, %31
  %33 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 6
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 5
  store i8 %37, ptr %38, align 2, !tbaa !155
  %39 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 4
  store i8 %40, ptr %41, align 1, !tbaa !156
  %42 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 4
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 3
  store i8 %43, ptr %44, align 2, !tbaa !157
  %45 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 2
  store i8 %46, ptr %47, align 1, !tbaa !158
  %48 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !34
  %50 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 1
  store i8 %49, ptr %50, align 2, !tbaa !159
  %51 = load i8, ptr %4, align 1, !tbaa !34
  %52 = zext i8 %51 to i16
  %53 = shl nuw i16 %52, 8
  %54 = getelementptr inbounds i8, ptr %4, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !34
  %56 = zext i8 %55 to i16
  %57 = or disjoint i16 %53, %56
  store i16 %57, ptr %5, align 2, !tbaa !160
  call void @png_set_tIME(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #11
  br label %58

58:                                               ; preds = %32, %35, %27, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #11
  ret void
}

declare void @png_set_tIME(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_tEXt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !122
  switch i32 %5, label %8 [
    i32 0, label %13
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %66

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  store i32 %9, ptr %4, align 4, !tbaa !122
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.110) #11
  %12 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %66

13:                                               ; preds = %3, %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.111) #10
  unreachable

19:                                               ; preds = %13
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = or i32 %15, 8
  store i32 %23, ptr %14, align 4, !tbaa !48
  br label %24

24:                                               ; preds = %22, %19
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %26) #11
  %27 = add i32 %2, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %28) #11
  store ptr %29, ptr %25, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.112) #11
  br label %66

32:                                               ; preds = %24
  %33 = zext i32 %2 to i64
  %34 = icmp eq ptr %0, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef %33) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef %33) #11
  br label %36

36:                                               ; preds = %32, %35
  %37 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %25, align 8, !tbaa !58
  br i1 %38, label %41, label %40

40:                                               ; preds = %36
  tail call void @png_free(ptr noundef %0, ptr noundef %39) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %66

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %39, i64 %33
  store i8 0, ptr %42, align 1, !tbaa !34
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi ptr [ %39, %41 ], [ %47, %43 ]
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  br i1 %46, label %48, label %43, !llvm.loop !161

48:                                               ; preds = %43
  %49 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 56) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.113) #11
  %52 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %52) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %66

53:                                               ; preds = %48
  %54 = icmp ne ptr %44, %42
  %55 = zext i1 %54 to i64
  %56 = getelementptr inbounds i8, ptr %44, i64 %55
  store i32 -1, ptr %49, align 8, !tbaa !162
  %57 = getelementptr inbounds %struct.png_text_struct, ptr %49, i64 0, i32 1
  store ptr %39, ptr %57, align 8, !tbaa !164
  %58 = getelementptr inbounds %struct.png_text_struct, ptr %49, i64 0, i32 4
  %59 = getelementptr inbounds %struct.png_text_struct, ptr %49, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  store ptr %56, ptr %59, align 8, !tbaa !165
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #12
  %61 = getelementptr inbounds %struct.png_text_struct, ptr %49, i64 0, i32 3
  store i64 %60, ptr %61, align 8, !tbaa !166
  %62 = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %49, i32 noundef 1) #11
  %63 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %63) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %49) #11
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.114) #11
  br label %66

66:                                               ; preds = %53, %65, %51, %40, %31, %11, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare i32 @png_set_text_2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_zTXt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %6 = load i32, ptr %5, align 4, !tbaa !122
  switch i32 %6, label %9 [
    i32 0, label %14
    i32 1, label %7
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %83

9:                                                ; preds = %3
  %10 = add i32 %6, -1
  store i32 %10, ptr %5, align 4, !tbaa !122
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.115) #11
  %13 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %83

14:                                               ; preds = %3, %9
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.116) #10
  unreachable

20:                                               ; preds = %14
  %21 = and i32 %16, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = or i32 %16, 8
  store i32 %24, ptr %15, align 4, !tbaa !48
  br label %25

25:                                               ; preds = %23, %20
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %27) #11
  %28 = add i32 %2, 1
  %29 = zext i32 %28 to i64
  %30 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %29) #11
  store ptr %30, ptr %26, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.117) #11
  br label %83

33:                                               ; preds = %25
  %34 = zext i32 %2 to i64
  %35 = icmp eq ptr %0, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %30, i64 noundef %34) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %30, i64 noundef %34) #11
  br label %37

37:                                               ; preds = %33, %36
  %38 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr %26, align 8, !tbaa !58
  br i1 %39, label %42, label %41

41:                                               ; preds = %37
  tail call void @png_free(ptr noundef %0, ptr noundef %40) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  br label %83

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %40, i64 %34
  store i8 0, ptr %43, align 1, !tbaa !34
  %44 = load ptr, ptr %26, align 8, !tbaa !58
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %44, %42 ], [ %49, %45 ]
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  br i1 %48, label %50, label %45, !llvm.loop !167

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %44, i64 %34
  %52 = getelementptr inbounds i8, ptr %51, i64 -2
  %53 = icmp ult ptr %46, %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.118) #11
  %55 = load ptr, ptr %26, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %55) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  br label %83

56:                                               ; preds = %50
  %57 = getelementptr inbounds i8, ptr %46, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !34
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.119) #11
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds i8, ptr %46, i64 2
  %63 = load ptr, ptr %26, align 8, !tbaa !58
  %64 = ptrtoint ptr %62 to i64
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %64, %65
  call void @png_decompress_chunk(ptr noundef %0, i32 noundef 0, i64 noundef %34, i64 noundef %66, ptr noundef nonnull %4)
  %67 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 56) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.120) #11
  %70 = load ptr, ptr %26, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %70) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  br label %83

71:                                               ; preds = %61
  store i32 0, ptr %67, align 8, !tbaa !162
  %72 = load ptr, ptr %26, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.png_text_struct, ptr %67, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !164
  %74 = getelementptr inbounds %struct.png_text_struct, ptr %67, i64 0, i32 4
  %75 = getelementptr inbounds i8, ptr %72, i64 %66
  %76 = getelementptr inbounds %struct.png_text_struct, ptr %67, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  store ptr %75, ptr %76, align 8, !tbaa !165
  %77 = load i64, ptr %4, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct.png_text_struct, ptr %67, i64 0, i32 3
  store i64 %77, ptr %78, align 8, !tbaa !166
  %79 = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %67, i32 noundef 1) #11
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %67) #11
  %80 = load ptr, ptr %26, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %80) #11
  store ptr null, ptr %26, align 8, !tbaa !58
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %71
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.121) #10
  unreachable

83:                                               ; preds = %71, %69, %54, %41, %32, %12, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_iTXt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !122
  switch i32 %5, label %8 [
    i32 0, label %13
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %115

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  store i32 %9, ptr %4, align 4, !tbaa !122
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.122) #11
  %12 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %2), !range !67
  br label %115

13:                                               ; preds = %3, %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.123) #10
  unreachable

19:                                               ; preds = %13
  %20 = and i32 %15, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = or i32 %15, 8
  store i32 %23, ptr %14, align 4, !tbaa !48
  br label %24

24:                                               ; preds = %22, %19
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %26) #11
  %27 = add i32 %2, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %28) #11
  store ptr %29, ptr %25, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.124) #11
  br label %115

32:                                               ; preds = %24
  %33 = zext i32 %2 to i64
  %34 = icmp eq ptr %0, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef %33) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef %33) #11
  br label %36

36:                                               ; preds = %32, %35
  %37 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %25, align 8, !tbaa !58
  br i1 %38, label %41, label %40

40:                                               ; preds = %36
  tail call void @png_free(ptr noundef %0, ptr noundef %39) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %115

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %39, i64 %33
  store i8 0, ptr %42, align 1, !tbaa !34
  %43 = load ptr, ptr %25, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %43, %41 ], [ %48, %44 ]
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  br i1 %47, label %49, label %44, !llvm.loop !168

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  %51 = getelementptr inbounds i8, ptr %43, i64 %33
  %52 = getelementptr inbounds i8, ptr %51, i64 -3
  %53 = icmp ult ptr %50, %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.125) #11
  %55 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %55) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %115

56:                                               ; preds = %49
  %57 = getelementptr inbounds i8, ptr %45, i64 2
  %58 = getelementptr inbounds i8, ptr %45, i64 3
  %59 = load i8, ptr %57, align 1, !tbaa !34
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8, ptr %50, align 1, !tbaa !34
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61, %56
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.126) #11
  %65 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %65) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %115

66:                                               ; preds = %61, %66
  %67 = phi ptr [ %70, %66 ], [ %58, %61 ]
  %68 = load i8, ptr %67, align 1, !tbaa !34
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds i8, ptr %67, i64 1
  br i1 %69, label %71, label %66, !llvm.loop !169

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, ptr %67, i64 1
  %73 = icmp ult ptr %72, %51
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.125) #11
  %75 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %75) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %115

76:                                               ; preds = %71, %76
  %77 = phi ptr [ %80, %76 ], [ %72, %71 ]
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = icmp eq i8 %78, 0
  %80 = getelementptr inbounds i8, ptr %77, i64 1
  br i1 %79, label %81, label %76, !llvm.loop !170

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %77, i64 1
  %83 = icmp ult ptr %82, %51
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.127) #11
  %85 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %85) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %115

86:                                               ; preds = %81
  %87 = ptrtoint ptr %82 to i64
  %88 = ptrtoint ptr %43 to i64
  %89 = sub i64 %87, %88
  %90 = getelementptr inbounds i8, ptr %43, i64 %89
  %91 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %90) #12
  %92 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 56) #11
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.128) #11
  %95 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %95) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  br label %115

96:                                               ; preds = %86
  store i32 1, ptr %92, align 8, !tbaa !162
  %97 = load ptr, ptr %25, align 8, !tbaa !58
  %98 = ptrtoint ptr %72 to i64
  %99 = sub i64 %98, %88
  %100 = getelementptr inbounds i8, ptr %97, i64 %99
  %101 = getelementptr inbounds %struct.png_text_struct, ptr %92, i64 0, i32 6
  store ptr %100, ptr %101, align 8, !tbaa !171
  %102 = ptrtoint ptr %58 to i64
  %103 = sub i64 %102, %88
  %104 = getelementptr inbounds i8, ptr %97, i64 %103
  %105 = getelementptr inbounds %struct.png_text_struct, ptr %92, i64 0, i32 5
  store ptr %104, ptr %105, align 8, !tbaa !172
  %106 = getelementptr inbounds %struct.png_text_struct, ptr %92, i64 0, i32 4
  store i64 %91, ptr %106, align 8, !tbaa !173
  %107 = getelementptr inbounds %struct.png_text_struct, ptr %92, i64 0, i32 3
  store i64 0, ptr %107, align 8, !tbaa !166
  %108 = getelementptr inbounds %struct.png_text_struct, ptr %92, i64 0, i32 1
  store ptr %97, ptr %108, align 8, !tbaa !164
  %109 = getelementptr inbounds i8, ptr %97, i64 %89
  %110 = getelementptr inbounds %struct.png_text_struct, ptr %92, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !165
  %111 = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %92, i32 noundef 1) #11
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %92) #11
  %112 = load ptr, ptr %25, align 8, !tbaa !58
  tail call void @png_free(ptr noundef %0, ptr noundef %112) #11
  store ptr null, ptr %25, align 8, !tbaa !58
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %96
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.129) #10
  unreachable

115:                                              ; preds = %96, %94, %84, %74, %64, %54, %40, %31, %11, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !122
  switch i32 %5, label %6 [
    i32 0, label %10
    i32 1, label %89
  ]

6:                                                ; preds = %3
  %7 = add i32 %5, -1
  store i32 %7, ptr %4, align 4, !tbaa !122
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.130) #11
  br label %89

10:                                               ; preds = %3, %6
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = icmp eq i32 %17, 1229209940
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = or i32 %12, 8
  store i32 %20, ptr %11, align 4, !tbaa !48
  br label %21

21:                                               ; preds = %15, %19, %10
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = and i32 %23, 536870912
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = tail call i32 @png_chunk_unknown_handling(ptr noundef %0, i32 noundef %23) #11
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  %31 = load ptr, ptr %30, align 8, !tbaa !174
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @png_chunk_error(ptr noundef %0, ptr noundef nonnull @.str.131) #10
  unreachable

34:                                               ; preds = %26, %29, %21
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  %41 = load ptr, ptr %40, align 8, !tbaa !174
  %42 = icmp eq ptr %41, null
  br i1 %42, label %89, label %43

43:                                               ; preds = %39, %34
  %44 = load i32, ptr %22, align 8, !tbaa !49
  %45 = lshr i32 %44, 24
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139
  store i8 %46, ptr %47, align 8, !tbaa !34
  %48 = lshr i32 %44, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 1
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = lshr i32 %44, 8
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 2
  store i8 %52, ptr %53, align 2, !tbaa !34
  %54 = trunc i32 %44 to i8
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 3
  store i8 %54, ptr %55, align 1, !tbaa !34
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 4
  store i8 0, ptr %56, align 4, !tbaa !34
  %57 = zext i32 %2 to i64
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 2
  store i64 %57, ptr %58, align 8, !tbaa !175
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  store ptr null, ptr %61, align 8, !tbaa !176
  br label %67

62:                                               ; preds = %43
  %63 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %57) #11
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !176
  %65 = icmp eq ptr %0, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %63, i64 noundef %57) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %63, i64 noundef %57) #11
  br label %67

67:                                               ; preds = %66, %62, %60
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  %69 = load ptr, ptr %68, align 8, !tbaa !174
  %70 = icmp eq ptr %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %67
  %72 = tail call i32 %69(ptr noundef %0, ptr noundef nonnull %47) #11
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void @png_chunk_error(ptr noundef %0, ptr noundef nonnull @.str.132) #10
  unreachable

75:                                               ; preds = %71
  %76 = icmp eq i32 %72, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = load i32, ptr %22, align 8, !tbaa !49
  %79 = and i32 %78, 536870912
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = tail call i32 @png_chunk_unknown_handling(ptr noundef %0, i32 noundef %78) #11
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @png_chunk_error(ptr noundef %0, ptr noundef nonnull @.str.131) #10
  unreachable

85:                                               ; preds = %67, %77, %81
  tail call void @png_set_unknown_chunks(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %47, i32 noundef 1) #11
  br label %86

86:                                               ; preds = %85, %75
  %87 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !176
  tail call void @png_free(ptr noundef %0, ptr noundef %88) #11
  store ptr null, ptr %87, align 8, !tbaa !176
  br label %89

89:                                               ; preds = %86, %39, %3, %9
  %90 = phi i32 [ %2, %9 ], [ %2, %3 ], [ 0, %86 ], [ %2, %39 ]
  %91 = tail call i32 @png_crc_finish(ptr noundef %0, i32 noundef %90), !range !67
  ret void
}

declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @png_chunk_error(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_unknown_chunks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_combine_row(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %5 = load i8, ptr %4, align 1, !tbaa !177
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %13 = load i8, ptr %12, align 1, !tbaa !179
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %5, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.134) #10
  unreachable

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 44
  %19 = load i64, ptr %18, align 8, !tbaa !180
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = icmp ugt i8 %5, 7
  %23 = zext i32 %11 to i64
  br i1 %22, label %24, label %28

24:                                               ; preds = %21
  %25 = lshr i8 %5, 3
  %26 = zext nneg i8 %25 to i64
  %27 = mul nuw nsw i64 %23, %26
  br label %33

28:                                               ; preds = %21
  %29 = zext nneg i8 %5 to i64
  %30 = mul nuw nsw i64 %23, %29
  %31 = add nuw nsw i64 %30, 7
  %32 = lshr i64 %31, 3
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i64 [ %27, %24 ], [ %32, %28 ]
  %35 = icmp eq i64 %19, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.135) #10
  unreachable

37:                                               ; preds = %33, %17
  %38 = icmp eq i32 %11, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.136) #10
  unreachable

40:                                               ; preds = %37
  %41 = mul i32 %11, %6
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %40
  %45 = icmp ugt i8 %5, 7
  %46 = zext i32 %11 to i64
  br i1 %45, label %47, label %51

47:                                               ; preds = %44
  %48 = lshr i8 %5, 3
  %49 = zext nneg i8 %48 to i64
  %50 = mul nuw nsw i64 %46, %49
  br label %56

51:                                               ; preds = %44
  %52 = zext nneg i8 %5 to i64
  %53 = mul nuw nsw i64 %46, %52
  %54 = add nuw nsw i64 %53, 7
  %55 = lshr i64 %54, 3
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i64 [ %50, %47 ], [ %55, %51 ]
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  %59 = getelementptr inbounds i8, ptr %58, i64 -1
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %62 = load i32, ptr %61, align 4, !tbaa !181
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = shl nuw nsw i32 255, %42
  br label %69

67:                                               ; preds = %56
  %68 = lshr i32 255, %42
  br label %69

69:                                               ; preds = %65, %67, %40
  %70 = phi i8 [ %60, %65 ], [ %60, %67 ], [ 0, %40 ]
  %71 = phi i32 [ %66, %65 ], [ %68, %67 ], [ 0, %40 ]
  %72 = phi ptr [ %59, %65 ], [ %59, %67 ], [ null, %40 ]
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %74 = load i8, ptr %73, align 4, !tbaa !71
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %340, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %78 = load i32, ptr %77, align 4, !tbaa !181
  %79 = and i32 %78, 2
  %80 = icmp ne i32 %79, 0
  %81 = icmp ult i8 %13, 6
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %340

83:                                               ; preds = %76
  switch i32 %2, label %340 [
    i32 0, label %87
    i32 1, label %84
  ]

84:                                               ; preds = %83
  %85 = and i32 %14, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %340, label %87

87:                                               ; preds = %83, %84
  %88 = and i32 %14, 1
  %89 = add nuw nsw i32 %14, 1
  %90 = lshr i32 %89, 1
  %91 = sub nuw nsw i32 3, %90
  %92 = shl nuw nsw i32 %88, %91
  %93 = and i32 %92, 7
  %94 = icmp ugt i32 %11, %93
  br i1 %94, label %95, label %365

95:                                               ; preds = %87
  %96 = icmp ult i8 %5, 8
  br i1 %96, label %97, label %154

97:                                               ; preds = %95
  %98 = udiv i32 8, %6
  %99 = and i32 %78, 65536
  %100 = icmp eq i32 %99, 0
  %101 = icmp eq i32 %2, 0
  %102 = icmp eq i8 %5, 1
  %103 = icmp eq i8 %5, 2
  %104 = select i1 %103, i64 1, i64 2
  %105 = select i1 %102, i64 0, i64 %104
  br i1 %100, label %114, label %106

106:                                              ; preds = %97
  br i1 %101, label %111, label %107

107:                                              ; preds = %106
  %108 = lshr i32 %14, 1
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [3 x [3 x i32]], ptr @png_combine_row.display_mask, i64 0, i64 %105, i64 %109
  br label %122

111:                                              ; preds = %106
  %112 = zext i8 %13 to i64
  %113 = getelementptr inbounds [3 x [6 x i32]], ptr @png_combine_row.row_mask, i64 0, i64 %105, i64 %112
  br label %122

114:                                              ; preds = %97
  br i1 %101, label %119, label %115

115:                                              ; preds = %114
  %116 = lshr i32 %14, 1
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [2 x [3 x [3 x i32]]], ptr @png_combine_row.display_mask, i64 0, i64 1, i64 %105, i64 %117
  br label %122

119:                                              ; preds = %114
  %120 = zext i8 %13 to i64
  %121 = getelementptr inbounds [2 x [3 x [6 x i32]]], ptr @png_combine_row.row_mask, i64 0, i64 1, i64 %105, i64 %120
  br label %122

122:                                              ; preds = %115, %119, %107, %111
  %123 = phi ptr [ %110, %107 ], [ %113, %111 ], [ %118, %115 ], [ %121, %119 ]
  %124 = load i32, ptr %123, align 4, !tbaa !108
  br label %125

125:                                              ; preds = %146, %122
  %126 = phi i32 [ %124, %122 ], [ %130, %146 ]
  %127 = phi i32 [ %11, %122 ], [ %149, %146 ]
  %128 = phi ptr [ %9, %122 ], [ %151, %146 ]
  %129 = phi ptr [ %1, %122 ], [ %153, %146 ]
  %130 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 24)
  %131 = trunc i32 %126 to i8
  switch i8 %131, label %132 [
    i8 0, label %146
    i8 -1, label %142
  ]

132:                                              ; preds = %125
  %133 = load i8, ptr %129, align 1, !tbaa !34
  %134 = zext i8 %133 to i32
  %135 = xor i32 %126, -1
  %136 = and i32 %134, %135
  %137 = load i8, ptr %128, align 1, !tbaa !34
  %138 = zext i8 %137 to i32
  %139 = and i32 %126, %138
  %140 = or i32 %139, %136
  %141 = trunc i32 %140 to i8
  br label %144

142:                                              ; preds = %125
  %143 = load i8, ptr %128, align 1, !tbaa !34
  br label %144

144:                                              ; preds = %142, %132
  %145 = phi i8 [ %141, %132 ], [ %143, %142 ]
  store i8 %145, ptr %129, align 1, !tbaa !34
  br label %146

146:                                              ; preds = %144, %125
  %147 = icmp ugt i32 %127, %98
  %148 = select i1 %147, i32 %98, i32 0
  %149 = sub i32 %127, %148
  %150 = zext i1 %147 to i64
  %151 = getelementptr inbounds i8, ptr %128, i64 %150
  %152 = zext i1 %147 to i64
  %153 = getelementptr inbounds i8, ptr %129, i64 %152
  br i1 %147, label %125, label %354

154:                                              ; preds = %95
  %155 = and i32 %6, 7
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.137) #10
  unreachable

158:                                              ; preds = %154
  %159 = lshr exact i32 %6, 3
  %160 = mul nuw nsw i32 %93, %159
  %161 = sub i32 %11, %93
  %162 = mul i32 %161, %159
  %163 = zext nneg i32 %160 to i64
  %164 = getelementptr inbounds i8, ptr %1, i64 %163
  %165 = getelementptr inbounds i8, ptr %9, i64 %163
  %166 = icmp eq i32 %2, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %158
  %168 = sub nuw nsw i32 6, %14
  %169 = lshr i32 %168, 1
  %170 = shl nuw nsw i32 %159, %169
  %171 = tail call i32 @llvm.umin.i32(i32 %170, i32 %162)
  br label %172

172:                                              ; preds = %167, %158
  %173 = phi i32 [ %171, %167 ], [ %159, %158 ]
  %174 = sub nuw nsw i32 7, %14
  %175 = lshr i32 %174, 1
  %176 = shl nuw nsw i32 %159, %175
  switch i32 %173, label %235 [
    i32 1, label %190
    i32 2, label %188
    i32 3, label %177
  ]

177:                                              ; preds = %172
  %178 = load i8, ptr %165, align 1, !tbaa !34
  store i8 %178, ptr %164, align 1, !tbaa !34
  %179 = getelementptr inbounds i8, ptr %165, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !34
  %181 = getelementptr inbounds i8, ptr %164, i64 1
  store i8 %180, ptr %181, align 1, !tbaa !34
  %182 = getelementptr inbounds i8, ptr %165, i64 2
  %183 = load i8, ptr %182, align 1, !tbaa !34
  %184 = getelementptr inbounds i8, ptr %164, i64 2
  store i8 %183, ptr %184, align 1, !tbaa !34
  %185 = icmp ugt i32 %162, %176
  br i1 %185, label %186, label %365

186:                                              ; preds = %177
  %187 = zext nneg i32 %176 to i64
  br label %220

188:                                              ; preds = %172
  %189 = zext nneg i32 %176 to i64
  br label %204

190:                                              ; preds = %172
  %191 = load i8, ptr %165, align 1, !tbaa !34
  store i8 %191, ptr %164, align 1, !tbaa !34
  %192 = icmp ugt i32 %162, %176
  br i1 %192, label %193, label %365

193:                                              ; preds = %190
  %194 = zext nneg i32 %176 to i64
  br label %195

195:                                              ; preds = %193, %195
  %196 = phi ptr [ %164, %193 ], [ %199, %195 ]
  %197 = phi ptr [ %165, %193 ], [ %200, %195 ]
  %198 = phi i32 [ %162, %193 ], [ %201, %195 ]
  %199 = getelementptr inbounds i8, ptr %196, i64 %194
  %200 = getelementptr inbounds i8, ptr %197, i64 %194
  %201 = sub i32 %198, %176
  %202 = load i8, ptr %200, align 1, !tbaa !34
  store i8 %202, ptr %199, align 1, !tbaa !34
  %203 = icmp ugt i32 %201, %176
  br i1 %203, label %195, label %365, !llvm.loop !182

204:                                              ; preds = %188, %213
  %205 = phi i32 [ %216, %213 ], [ %162, %188 ]
  %206 = phi ptr [ %214, %213 ], [ %165, %188 ]
  %207 = phi ptr [ %215, %213 ], [ %164, %188 ]
  %208 = load i8, ptr %206, align 1, !tbaa !34
  store i8 %208, ptr %207, align 1, !tbaa !34
  %209 = getelementptr inbounds i8, ptr %206, i64 1
  %210 = load i8, ptr %209, align 1, !tbaa !34
  %211 = getelementptr inbounds i8, ptr %207, i64 1
  store i8 %210, ptr %211, align 1, !tbaa !34
  %212 = icmp ugt i32 %205, %176
  br i1 %212, label %213, label %365

213:                                              ; preds = %204
  %214 = getelementptr inbounds i8, ptr %206, i64 %189
  %215 = getelementptr inbounds i8, ptr %207, i64 %189
  %216 = sub i32 %205, %176
  %217 = icmp ugt i32 %216, 1
  br i1 %217, label %204, label %218, !llvm.loop !183

218:                                              ; preds = %213
  %219 = load i8, ptr %214, align 1, !tbaa !34
  store i8 %219, ptr %215, align 1, !tbaa !34
  br label %365

220:                                              ; preds = %186, %220
  %221 = phi ptr [ %164, %186 ], [ %225, %220 ]
  %222 = phi ptr [ %165, %186 ], [ %224, %220 ]
  %223 = phi i32 [ %162, %186 ], [ %226, %220 ]
  %224 = getelementptr inbounds i8, ptr %222, i64 %187
  %225 = getelementptr inbounds i8, ptr %221, i64 %187
  %226 = sub i32 %223, %176
  %227 = load i8, ptr %224, align 1, !tbaa !34
  store i8 %227, ptr %225, align 1, !tbaa !34
  %228 = getelementptr inbounds i8, ptr %224, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !34
  %230 = getelementptr inbounds i8, ptr %225, i64 1
  store i8 %229, ptr %230, align 1, !tbaa !34
  %231 = getelementptr inbounds i8, ptr %224, i64 2
  %232 = load i8, ptr %231, align 1, !tbaa !34
  %233 = getelementptr inbounds i8, ptr %225, i64 2
  store i8 %232, ptr %233, align 1, !tbaa !34
  %234 = icmp ugt i32 %226, %176
  br i1 %234, label %220, label %365, !llvm.loop !184

235:                                              ; preds = %172
  %236 = icmp ult i32 %173, 16
  br i1 %236, label %237, label %324

237:                                              ; preds = %235
  %238 = ptrtoint ptr %164 to i64
  %239 = and i64 %238, 1
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %324

241:                                              ; preds = %237
  %242 = ptrtoint ptr %165 to i64
  %243 = and i64 %242, 1
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %324

245:                                              ; preds = %241
  %246 = zext nneg i32 %173 to i64
  %247 = and i64 %246, 1
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %324

249:                                              ; preds = %245
  %250 = zext nneg i32 %176 to i64
  %251 = and i64 %250, 1
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %324

253:                                              ; preds = %249
  %254 = or i64 %242, %250
  %255 = or i64 %254, %238
  %256 = or i64 %255, %246
  %257 = and i64 %256, 2
  %258 = icmp eq i64 %257, 0
  %259 = sub nsw i32 %176, %173
  br i1 %258, label %260, label %292

260:                                              ; preds = %253
  %261 = lshr i32 %259, 2
  %262 = zext nneg i32 %261 to i64
  br label %263

263:                                              ; preds = %278, %260
  %264 = phi i32 [ %162, %260 ], [ %281, %278 ]
  %265 = phi ptr [ %164, %260 ], [ %280, %278 ]
  %266 = phi ptr [ %165, %260 ], [ %279, %278 ]
  br label %267

267:                                              ; preds = %267, %263
  %268 = phi ptr [ %265, %263 ], [ %273, %267 ]
  %269 = phi ptr [ %266, %263 ], [ %271, %267 ]
  %270 = phi i64 [ %246, %263 ], [ %274, %267 ]
  %271 = getelementptr i32, ptr %269, i64 1
  %272 = load i32, ptr %269, align 4, !tbaa !108
  %273 = getelementptr i32, ptr %268, i64 1
  store i32 %272, ptr %268, align 4, !tbaa !108
  %274 = add i64 %270, -4
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %267, !llvm.loop !185

276:                                              ; preds = %267
  %277 = icmp ugt i32 %264, %176
  br i1 %277, label %278, label %365

278:                                              ; preds = %276
  %279 = getelementptr i32, ptr %271, i64 %262
  %280 = getelementptr i32, ptr %273, i64 %262
  %281 = sub i32 %264, %176
  %282 = icmp ugt i32 %173, %281
  br i1 %282, label %283, label %263, !llvm.loop !186

283:                                              ; preds = %278, %283
  %284 = phi i32 [ %290, %283 ], [ %281, %278 ]
  %285 = phi ptr [ %287, %283 ], [ %279, %278 ]
  %286 = phi ptr [ %289, %283 ], [ %280, %278 ]
  %287 = getelementptr inbounds i8, ptr %285, i64 1
  %288 = load i8, ptr %285, align 1, !tbaa !34
  %289 = getelementptr inbounds i8, ptr %286, i64 1
  store i8 %288, ptr %286, align 1, !tbaa !34
  %290 = add i32 %284, -1
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %365, label %283, !llvm.loop !187

292:                                              ; preds = %253
  %293 = lshr i32 %259, 1
  %294 = zext nneg i32 %293 to i64
  br label %295

295:                                              ; preds = %310, %292
  %296 = phi i32 [ %162, %292 ], [ %313, %310 ]
  %297 = phi ptr [ %164, %292 ], [ %312, %310 ]
  %298 = phi ptr [ %165, %292 ], [ %311, %310 ]
  br label %299

299:                                              ; preds = %299, %295
  %300 = phi ptr [ %297, %295 ], [ %305, %299 ]
  %301 = phi ptr [ %298, %295 ], [ %303, %299 ]
  %302 = phi i64 [ %246, %295 ], [ %306, %299 ]
  %303 = getelementptr i16, ptr %301, i64 1
  %304 = load i16, ptr %301, align 2, !tbaa !148
  %305 = getelementptr i16, ptr %300, i64 1
  store i16 %304, ptr %300, align 2, !tbaa !148
  %306 = add i64 %302, -2
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %299, !llvm.loop !188

308:                                              ; preds = %299
  %309 = icmp ugt i32 %296, %176
  br i1 %309, label %310, label %365

310:                                              ; preds = %308
  %311 = getelementptr i16, ptr %303, i64 %294
  %312 = getelementptr i16, ptr %305, i64 %294
  %313 = sub i32 %296, %176
  %314 = icmp ugt i32 %173, %313
  br i1 %314, label %315, label %295, !llvm.loop !189

315:                                              ; preds = %310, %315
  %316 = phi i32 [ %322, %315 ], [ %313, %310 ]
  %317 = phi ptr [ %319, %315 ], [ %311, %310 ]
  %318 = phi ptr [ %321, %315 ], [ %312, %310 ]
  %319 = getelementptr inbounds i8, ptr %317, i64 1
  %320 = load i8, ptr %317, align 1, !tbaa !34
  %321 = getelementptr inbounds i8, ptr %318, i64 1
  store i8 %320, ptr %318, align 1, !tbaa !34
  %322 = add i32 %316, -1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %365, label %315, !llvm.loop !190

324:                                              ; preds = %249, %245, %241, %237, %235
  %325 = zext nneg i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %164, ptr nonnull align 1 %165, i64 %325, i1 false)
  %326 = icmp ugt i32 %162, %176
  br i1 %326, label %327, label %365

327:                                              ; preds = %324
  %328 = zext nneg i32 %176 to i64
  br label %329

329:                                              ; preds = %327, %329
  %330 = phi ptr [ %164, %327 ], [ %335, %329 ]
  %331 = phi ptr [ %165, %327 ], [ %334, %329 ]
  %332 = phi i32 [ %162, %327 ], [ %336, %329 ]
  %333 = phi i32 [ %173, %327 ], [ %337, %329 ]
  %334 = getelementptr inbounds i8, ptr %331, i64 %328
  %335 = getelementptr inbounds i8, ptr %330, i64 %328
  %336 = sub i32 %332, %176
  %337 = tail call i32 @llvm.umin.i32(i32 %333, i32 %336)
  %338 = zext nneg i32 %337 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %335, ptr align 1 %334, i64 %338, i1 false)
  %339 = icmp ugt i32 %336, %176
  br i1 %339, label %329, label %365, !llvm.loop !191

340:                                              ; preds = %83, %84, %76, %69
  %341 = icmp ugt i8 %5, 7
  %342 = zext i32 %11 to i64
  br i1 %341, label %343, label %347

343:                                              ; preds = %340
  %344 = lshr i8 %5, 3
  %345 = zext nneg i8 %344 to i64
  %346 = mul nuw nsw i64 %342, %345
  br label %352

347:                                              ; preds = %340
  %348 = zext nneg i8 %5 to i64
  %349 = mul nuw nsw i64 %342, %348
  %350 = add nuw nsw i64 %349, 7
  %351 = lshr i64 %350, 3
  br label %352

352:                                              ; preds = %347, %343
  %353 = phi i64 [ %346, %343 ], [ %351, %347 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %9, i64 %353, i1 false)
  br label %354

354:                                              ; preds = %146, %352
  %355 = icmp eq ptr %72, null
  br i1 %355, label %365, label %356

356:                                              ; preds = %354
  %357 = zext i8 %70 to i32
  %358 = and i32 %71, %357
  %359 = load i8, ptr %72, align 1, !tbaa !34
  %360 = zext i8 %359 to i32
  %361 = xor i32 %71, -1
  %362 = and i32 %360, %361
  %363 = or i32 %362, %358
  %364 = trunc i32 %363 to i8
  store i8 %364, ptr %72, align 1, !tbaa !34
  br label %365

365:                                              ; preds = %220, %204, %195, %329, %308, %315, %276, %283, %177, %190, %324, %354, %356, %218, %87
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_interlace(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = alloca i64, align 8
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %275

9:                                                ; preds = %4
  %10 = load i32, ptr %0, align 8, !tbaa !192
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [7 x i32], ptr @png_do_read_interlace.png_pass_inc, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !108
  %14 = mul i32 %13, %10
  %15 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !194
  switch i8 %16, label %227 [
    i8 1, label %17
    i8 2, label %86
    i8 4, label %158
  ]

17:                                               ; preds = %9
  %18 = add i32 %10, -1
  %19 = lshr i32 %18, 3
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = add i32 %14, -1
  %23 = lshr i32 %22, 3
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = and i32 %3, 65536
  %27 = icmp eq i32 %26, 0
  %28 = add i32 %10, 7
  %29 = and i32 %28, 7
  br i1 %27, label %33, label %30

30:                                               ; preds = %17
  %31 = add i32 %14, 7
  %32 = and i32 %31, 7
  br label %38

33:                                               ; preds = %17
  %34 = xor i32 %29, 7
  %35 = add i32 %14, 7
  %36 = and i32 %35, 7
  %37 = xor i32 %36, 7
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i32 [ -1, %30 ], [ 1, %33 ]
  %40 = phi i32 [ 0, %30 ], [ 7, %33 ]
  %41 = phi i32 [ 7, %30 ], [ 0, %33 ]
  %42 = phi i32 [ %32, %30 ], [ %37, %33 ]
  %43 = phi i32 [ %29, %30 ], [ %34, %33 ]
  %44 = load i32, ptr %0, align 8, !tbaa !192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %259, label %46

46:                                               ; preds = %38
  %47 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %48

48:                                               ; preds = %46, %77
  %49 = phi ptr [ %21, %46 ], [ %82, %77 ]
  %50 = phi ptr [ %25, %46 ], [ %74, %77 ]
  %51 = phi i32 [ %43, %46 ], [ %80, %77 ]
  %52 = phi i32 [ %42, %46 ], [ %72, %77 ]
  %53 = phi i32 [ 0, %46 ], [ %83, %77 ]
  %54 = load i8, ptr %49, align 1, !tbaa !34
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %55, %51
  %57 = and i32 %56, 1
  br label %58

58:                                               ; preds = %48, %58
  %59 = phi ptr [ %74, %58 ], [ %50, %48 ]
  %60 = phi i32 [ %72, %58 ], [ %52, %48 ]
  %61 = phi i32 [ %75, %58 ], [ 0, %48 ]
  %62 = sub nsw i32 7, %60
  %63 = lshr i32 32639, %62
  %64 = load i8, ptr %59, align 1, !tbaa !34
  %65 = trunc i32 %63 to i8
  %66 = and i8 %64, %65
  %67 = shl nuw i32 %57, %60
  %68 = trunc i32 %67 to i8
  %69 = or i8 %66, %68
  store i8 %69, ptr %59, align 1, !tbaa !34
  %70 = icmp eq i32 %60, %40
  %71 = add nsw i32 %60, %39
  %72 = select i1 %70, i32 %41, i32 %71
  %73 = sext i1 %70 to i64
  %74 = getelementptr inbounds i8, ptr %59, i64 %73
  %75 = add nuw nsw i32 %61, 1
  %76 = icmp eq i32 %75, %47
  br i1 %76, label %77, label %58, !llvm.loop !195

77:                                               ; preds = %58
  %78 = icmp eq i32 %51, %40
  %79 = add nsw i32 %51, %39
  %80 = select i1 %78, i32 %41, i32 %79
  %81 = sext i1 %78 to i64
  %82 = getelementptr inbounds i8, ptr %49, i64 %81
  %83 = add nuw i32 %53, 1
  %84 = load i32, ptr %0, align 8, !tbaa !192
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %48, label %259, !llvm.loop !196

86:                                               ; preds = %9
  %87 = add i32 %10, -1
  %88 = lshr i32 %87, 2
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %1, i64 %89
  %91 = add i32 %14, -1
  %92 = lshr i32 %91, 2
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %1, i64 %93
  %95 = and i32 %3, 65536
  %96 = icmp eq i32 %95, 0
  %97 = shl i32 %10, 1
  %98 = add i32 %97, 6
  %99 = and i32 %98, 6
  br i1 %96, label %104, label %100

100:                                              ; preds = %86
  %101 = shl i32 %14, 1
  %102 = add i32 %101, 6
  %103 = and i32 %102, 6
  br label %110

104:                                              ; preds = %86
  %105 = xor i32 %99, 6
  %106 = shl i32 %14, 1
  %107 = add i32 %106, 6
  %108 = and i32 %107, 6
  %109 = xor i32 %108, 6
  br label %110

110:                                              ; preds = %104, %100
  %111 = phi i32 [ %99, %100 ], [ %105, %104 ]
  %112 = phi i32 [ %103, %100 ], [ %109, %104 ]
  %113 = phi i32 [ 6, %100 ], [ 0, %104 ]
  %114 = phi i32 [ 0, %100 ], [ 6, %104 ]
  %115 = phi i32 [ -2, %100 ], [ 2, %104 ]
  %116 = load i32, ptr %0, align 8, !tbaa !192
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %259, label %118

118:                                              ; preds = %110
  %119 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %120

120:                                              ; preds = %118, %149
  %121 = phi i32 [ 0, %118 ], [ %155, %149 ]
  %122 = phi i32 [ %112, %118 ], [ %146, %149 ]
  %123 = phi i32 [ %111, %118 ], [ %154, %149 ]
  %124 = phi ptr [ %94, %118 ], [ %145, %149 ]
  %125 = phi ptr [ %90, %118 ], [ %153, %149 ]
  %126 = load i8, ptr %125, align 1, !tbaa !34
  %127 = zext i8 %126 to i32
  %128 = lshr i32 %127, %123
  %129 = and i32 %128, 3
  br label %130

130:                                              ; preds = %120, %130
  %131 = phi i32 [ %147, %130 ], [ 0, %120 ]
  %132 = phi i32 [ %146, %130 ], [ %122, %120 ]
  %133 = phi ptr [ %145, %130 ], [ %124, %120 ]
  %134 = sub nsw i32 6, %132
  %135 = lshr i32 16191, %134
  %136 = load i8, ptr %133, align 1, !tbaa !34
  %137 = trunc i32 %135 to i8
  %138 = and i8 %136, %137
  %139 = shl i32 %129, %132
  %140 = trunc i32 %139 to i8
  %141 = or i8 %138, %140
  store i8 %141, ptr %133, align 1, !tbaa !34
  %142 = icmp eq i32 %132, %114
  %143 = add nsw i32 %132, %115
  %144 = sext i1 %142 to i64
  %145 = getelementptr inbounds i8, ptr %133, i64 %144
  %146 = select i1 %142, i32 %113, i32 %143
  %147 = add nuw nsw i32 %131, 1
  %148 = icmp eq i32 %147, %119
  br i1 %148, label %149, label %130, !llvm.loop !197

149:                                              ; preds = %130
  %150 = icmp eq i32 %123, %114
  %151 = add nsw i32 %123, %115
  %152 = sext i1 %150 to i64
  %153 = getelementptr inbounds i8, ptr %125, i64 %152
  %154 = select i1 %150, i32 %113, i32 %151
  %155 = add nuw i32 %121, 1
  %156 = load i32, ptr %0, align 8, !tbaa !192
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %120, label %259, !llvm.loop !198

158:                                              ; preds = %9
  %159 = add i32 %10, -1
  %160 = lshr i32 %159, 1
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %1, i64 %161
  %163 = add i32 %14, -1
  %164 = lshr i32 %163, 1
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %1, i64 %165
  %167 = and i32 %3, 65536
  %168 = icmp eq i32 %167, 0
  %169 = shl i32 %10, 2
  %170 = and i32 %169, 4
  br i1 %168, label %176, label %171

171:                                              ; preds = %158
  %172 = xor i32 %170, 4
  %173 = shl i32 %14, 2
  %174 = and i32 %173, 4
  %175 = xor i32 %174, 4
  br label %179

176:                                              ; preds = %158
  %177 = shl i32 %14, 2
  %178 = and i32 %177, 4
  br label %179

179:                                              ; preds = %176, %171
  %180 = phi i32 [ %172, %171 ], [ %170, %176 ]
  %181 = phi i32 [ %175, %171 ], [ %178, %176 ]
  %182 = phi i32 [ 4, %171 ], [ 0, %176 ]
  %183 = phi i32 [ 0, %171 ], [ 4, %176 ]
  %184 = phi i32 [ -4, %171 ], [ 4, %176 ]
  %185 = load i32, ptr %0, align 8, !tbaa !192
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %259, label %187

187:                                              ; preds = %179
  %188 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %189

189:                                              ; preds = %187, %218
  %190 = phi i32 [ 0, %187 ], [ %224, %218 ]
  %191 = phi i32 [ %181, %187 ], [ %215, %218 ]
  %192 = phi i32 [ %180, %187 ], [ %223, %218 ]
  %193 = phi ptr [ %166, %187 ], [ %214, %218 ]
  %194 = phi ptr [ %162, %187 ], [ %222, %218 ]
  %195 = load i8, ptr %194, align 1, !tbaa !34
  %196 = zext i8 %195 to i32
  %197 = lshr i32 %196, %192
  %198 = and i32 %197, 15
  br label %199

199:                                              ; preds = %189, %199
  %200 = phi i32 [ %216, %199 ], [ 0, %189 ]
  %201 = phi i32 [ %215, %199 ], [ %191, %189 ]
  %202 = phi ptr [ %214, %199 ], [ %193, %189 ]
  %203 = sub nsw i32 4, %201
  %204 = lshr i32 3855, %203
  %205 = load i8, ptr %202, align 1, !tbaa !34
  %206 = trunc i32 %204 to i8
  %207 = and i8 %205, %206
  %208 = shl i32 %198, %201
  %209 = trunc i32 %208 to i8
  %210 = or i8 %207, %209
  store i8 %210, ptr %202, align 1, !tbaa !34
  %211 = icmp eq i32 %201, %183
  %212 = add nsw i32 %201, %184
  %213 = sext i1 %211 to i64
  %214 = getelementptr inbounds i8, ptr %202, i64 %213
  %215 = select i1 %211, i32 %182, i32 %212
  %216 = add nuw nsw i32 %200, 1
  %217 = icmp eq i32 %216, %188
  br i1 %217, label %218, label %199, !llvm.loop !199

218:                                              ; preds = %199
  %219 = icmp eq i32 %192, %183
  %220 = add nsw i32 %192, %184
  %221 = sext i1 %219 to i64
  %222 = getelementptr inbounds i8, ptr %194, i64 %221
  %223 = select i1 %219, i32 %182, i32 %220
  %224 = add nuw i32 %190, 1
  %225 = load i32, ptr %0, align 8, !tbaa !192
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %189, label %259, !llvm.loop !200

227:                                              ; preds = %9
  %228 = lshr i8 %16, 3
  %229 = zext nneg i8 %228 to i64
  %230 = load i32, ptr %0, align 8, !tbaa !192
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %259, label %232

232:                                              ; preds = %227
  %233 = add i32 %14, -1
  %234 = zext i32 %233 to i64
  %235 = mul nuw nsw i64 %234, %229
  %236 = getelementptr inbounds i8, ptr %1, i64 %235
  %237 = add i32 %10, -1
  %238 = zext i32 %237 to i64
  %239 = mul nuw nsw i64 %229, %238
  %240 = getelementptr inbounds i8, ptr %1, i64 %239
  %241 = sub nsw i64 0, %229
  %242 = sub nsw i64 0, %229
  %243 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %244

244:                                              ; preds = %232, %254
  %245 = phi i32 [ 0, %232 ], [ %256, %254 ]
  %246 = phi ptr [ %236, %232 ], [ %251, %254 ]
  %247 = phi ptr [ %240, %232 ], [ %255, %254 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr align 1 %247, i64 %229, i1 false)
  br label %248

248:                                              ; preds = %244, %248
  %249 = phi i32 [ %252, %248 ], [ 0, %244 ]
  %250 = phi ptr [ %251, %248 ], [ %246, %244 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %250, ptr nonnull align 8 %5, i64 %229, i1 false)
  %251 = getelementptr inbounds i8, ptr %250, i64 %241
  %252 = add nuw nsw i32 %249, 1
  %253 = icmp eq i32 %252, %243
  br i1 %253, label %254, label %248, !llvm.loop !201

254:                                              ; preds = %248
  %255 = getelementptr inbounds i8, ptr %247, i64 %242
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %256 = add nuw i32 %245, 1
  %257 = load i32, ptr %0, align 8, !tbaa !192
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %244, label %259, !llvm.loop !202

259:                                              ; preds = %218, %149, %77, %254, %179, %110, %38, %227
  store i32 %14, ptr %0, align 8, !tbaa !192
  %260 = load i8, ptr %15, align 1, !tbaa !194
  %261 = icmp ugt i8 %260, 7
  %262 = zext i32 %14 to i64
  br i1 %261, label %263, label %267

263:                                              ; preds = %259
  %264 = lshr i8 %260, 3
  %265 = zext nneg i8 %264 to i64
  %266 = mul nuw nsw i64 %265, %262
  br label %272

267:                                              ; preds = %259
  %268 = zext nneg i8 %260 to i64
  %269 = mul nuw nsw i64 %268, %262
  %270 = add nuw nsw i64 %269, 7
  %271 = lshr i64 %270, 3
  br label %272

272:                                              ; preds = %267, %263
  %273 = phi i64 [ %266, %263 ], [ %271, %267 ]
  %274 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %273, ptr %274, align 8, !tbaa !203
  br label %275

275:                                              ; preds = %272, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_filter_row(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %11 = load i8, ptr %10, align 2, !tbaa !76
  %12 = zext i8 %11 to i32
  %13 = add nuw nsw i32 %12, 7
  store ptr @png_read_filter_row_sub, ptr %6, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 1
  store ptr @png_read_filter_row_up, ptr %14, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 2
  store ptr @png_read_filter_row_avg, ptr %15, align 8, !tbaa !152
  %16 = and i32 %13, 504
  %17 = icmp eq i32 %16, 8
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 3
  %19 = select i1 %17, ptr @png_read_filter_row_paeth_1byte_pixel, ptr @png_read_filter_row_paeth_multibyte_pixel
  store ptr %19, ptr %18, align 8, !tbaa !152
  br label %20

20:                                               ; preds = %9, %5
  %21 = add i32 %4, -1
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !152
  tail call void %26(ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_finish_row(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %4 = load i32, ptr %3, align 4, !tbaa !204
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !204
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %7 = load i32, ptr %6, align 8, !tbaa !205
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %144, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %11 = load i8, ptr %10, align 4, !tbaa !71
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %62, label %13

13:                                               ; preds = %9
  store i32 0, ptr %3, align 4, !tbaa !204
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %17 = load i64, ptr %16, align 8, !tbaa !77
  %18 = add i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %15, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %21 = load i8, ptr %20, align 1, !tbaa !179
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %25

25:                                               ; preds = %45, %13
  %26 = phi i8 [ %27, %45 ], [ %21, %13 ]
  %27 = add i8 %26, 1
  %28 = icmp ugt i8 %27, 6
  br i1 %28, label %60, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %19, align 8, !tbaa !68
  %31 = zext nneg i8 %27 to i64
  %32 = getelementptr inbounds [7 x i8], ptr @png_read_start_row.png_pass_inc, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = add i32 %30, %34
  %36 = getelementptr inbounds [7 x i8], ptr @png_read_start_row.png_pass_start, i64 0, i64 %31
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = add i32 %35, %39
  %41 = udiv i32 %40, %34
  store i32 %41, ptr %22, align 8, !tbaa !207
  %42 = load i32, ptr %23, align 4, !tbaa !181
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %29
  %46 = load i32, ptr %24, align 4, !tbaa !69
  %47 = getelementptr inbounds [7 x i8], ptr @png_read_finish_row.png_pass_yinc, i64 0, i64 %31
  %48 = load i8, ptr %47, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = add i32 %46, %49
  %51 = getelementptr inbounds [7 x i8], ptr @png_read_finish_row.png_pass_ystart, i64 0, i64 %31
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = add i32 %50, %54
  %56 = udiv i32 %55, %49
  store i32 %56, ptr %6, align 8, !tbaa !205
  %57 = icmp ult i32 %55, %49
  %58 = icmp ult i32 %40, %34
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %25, label %60, !llvm.loop !208

60:                                               ; preds = %45, %29, %25
  store i8 %27, ptr %20, align 1, !tbaa !179
  %61 = icmp ult i8 %27, 7
  br i1 %61, label %144, label %62

62:                                               ; preds = %60, %9
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %64 = load i32, ptr %63, align 8, !tbaa !56
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %129

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %2, ptr %69, align 8, !tbaa !63
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 1, ptr %70, align 8, !tbaa !64
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %76 = icmp eq ptr %0, null
  br label %77

77:                                               ; preds = %119, %67
  %78 = load i32, ptr %71, align 8, !tbaa !62
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %77, %83
  %81 = load i32, ptr %72, align 8, !tbaa !209
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0), !range !67
  %85 = call i32 @png_read_chunk_header(ptr noundef %0), !range !210
  store i32 %85, ptr %72, align 8, !tbaa !209
  %86 = load i32, ptr %73, align 8, !tbaa !49
  %87 = icmp eq i32 %86, 1229209940
  br i1 %87, label %80, label %88, !llvm.loop !211

88:                                               ; preds = %83
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.138) #10
  unreachable

89:                                               ; preds = %80
  %90 = load i32, ptr %74, align 8, !tbaa !53
  store i32 %90, ptr %71, align 8, !tbaa !62
  %91 = load ptr, ptr %75, align 8, !tbaa !54
  store ptr %91, ptr %68, align 8, !tbaa !61
  %92 = icmp ugt i32 %90, %81
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 %81, ptr %71, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %93, %89
  br i1 %76, label %98, label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %71, align 8, !tbaa !62
  %97 = zext i32 %96 to i64
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef %91, i64 noundef %97) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %91, i64 noundef %97) #11
  br label %98

98:                                               ; preds = %94, %95
  %99 = load i32, ptr %71, align 8, !tbaa !62
  %100 = load i32, ptr %72, align 8, !tbaa !209
  %101 = sub i32 %100, %99
  store i32 %101, ptr %72, align 8, !tbaa !209
  br label %102

102:                                              ; preds = %98, %77
  %103 = call i32 @inflate(ptr noundef nonnull %68, i32 noundef 1) #11
  switch i32 %103, label %114 [
    i32 1, label %104
    i32 0, label %119
  ]

104:                                              ; preds = %102
  %105 = load i32, ptr %70, align 8, !tbaa !64
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %71, align 8, !tbaa !62
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %112 = load i32, ptr %111, align 8, !tbaa !209
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %122

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !66
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, ptr @.str.140, ptr %116
  call void @png_error(ptr noundef %0, ptr noundef nonnull %118) #10
  unreachable

119:                                              ; preds = %102
  %120 = load i32, ptr %70, align 8, !tbaa !64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %77, !llvm.loop !212

122:                                              ; preds = %119, %104, %107, %110
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.139) #11
  br label %123

123:                                              ; preds = %122, %110
  %124 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %125 = load i32, ptr %124, align 4, !tbaa !48
  %126 = or i32 %125, 8
  store i32 %126, ptr %124, align 4, !tbaa !48
  %127 = load i32, ptr %63, align 8, !tbaa !56
  %128 = or i32 %127, 32
  store i32 %128, ptr %63, align 8, !tbaa !56
  store i32 0, ptr %70, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %129

129:                                              ; preds = %123, %62
  %130 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %131 = load i32, ptr %130, align 8, !tbaa !209
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !62
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133, %129
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.141) #11
  br label %138

138:                                              ; preds = %137, %133
  %139 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %140 = call i32 @inflateReset(ptr noundef nonnull %139) #11
  %141 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %142 = load i32, ptr %141, align 4, !tbaa !48
  %143 = or i32 %142, 8
  store i32 %143, ptr %141, align 4, !tbaa !48
  br label %144

144:                                              ; preds = %60, %1, %138
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_read_start_row(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %2, align 8, !tbaa !62
  tail call void @png_init_read_transformations(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %4 = load i8, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !181
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = add i32 %12, 7
  %14 = lshr i32 %13, 3
  %15 = select i1 %10, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %15, ptr %16, align 8, !tbaa !205
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %20 = load i8, ptr %19, align 1, !tbaa !179
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [7 x i8], ptr @png_read_start_row.png_pass_inc, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = add i32 %18, %24
  %26 = getelementptr inbounds [7 x i8], ptr @png_read_start_row.png_pass_start, i64 0, i64 %21
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = add i32 %25, %29
  %31 = udiv i32 %30, %24
  br label %38

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %34, ptr %35, align 8, !tbaa !205
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %37 = load i32, ptr %36, align 8, !tbaa !68
  br label %38

38:                                               ; preds = %32, %6
  %39 = phi i32 [ %37, %32 ], [ %31, %6 ]
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  store i32 %39, ptr %40, align 8, !tbaa !207
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %42 = load i8, ptr %41, align 2, !tbaa !76
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %44 = load i32, ptr %43, align 4, !tbaa !181
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %49 = load i8, ptr %48, align 8, !tbaa !70
  %50 = icmp ult i8 %49, 8
  %51 = select i1 %50, i8 8, i8 %42
  br label %52

52:                                               ; preds = %47, %38
  %53 = phi i8 [ %42, %38 ], [ %51, %47 ]
  %54 = zext i8 %53 to i32
  %55 = and i32 %44, 4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %59 = load i8, ptr %58, align 1, !tbaa !72
  switch i8 %59, label %79 [
    i8 3, label %60
    i8 0, label %65
    i8 2, label %72
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %62 = load i16, ptr %61, align 8, !tbaa !86
  %63 = icmp eq i16 %62, 0
  %64 = select i1 %63, i32 24, i32 32
  br label %79

65:                                               ; preds = %57
  %66 = tail call i32 @llvm.umax.i32(i32 %54, i32 8)
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %68 = load i16, ptr %67, align 8, !tbaa !86
  %69 = icmp ne i16 %68, 0
  %70 = zext i1 %69 to i32
  %71 = shl nuw nsw i32 %66, %70
  br label %79

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %74 = load i16, ptr %73, align 8, !tbaa !86
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = shl nuw nsw i32 %54, 2
  %78 = udiv i32 %77, 3
  br label %79

79:                                               ; preds = %65, %57, %60, %76, %72, %52
  %80 = phi i32 [ %78, %76 ], [ %54, %72 ], [ %54, %52 ], [ %64, %60 ], [ %71, %65 ], [ %54, %57 ]
  %81 = and i32 %44, 512
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  br i1 %56, label %90, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %86 = load i8, ptr %85, align 8, !tbaa !70
  %87 = icmp ult i8 %86, 16
  %88 = zext i1 %87 to i32
  %89 = shl nuw nsw i32 %80, %88
  br label %92

90:                                               ; preds = %83
  %91 = and i32 %44, -4609
  store i32 %91, ptr %43, align 4, !tbaa !181
  br label %92

92:                                               ; preds = %84, %90, %79
  %93 = phi i32 [ %80, %90 ], [ %80, %79 ], [ %89, %84 ]
  %94 = load i32, ptr %43, align 4, !tbaa !181
  %95 = and i32 %94, 32768
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %99 = load i8, ptr %98, align 1, !tbaa !72
  switch i8 %99, label %106 [
    i8 0, label %100
    i8 2, label %103
    i8 3, label %103
  ]

100:                                              ; preds = %97
  %101 = icmp slt i32 %93, 9
  %102 = select i1 %101, i32 16, i32 32
  br label %106

103:                                              ; preds = %97, %97
  %104 = icmp sgt i32 %93, 32
  %105 = select i1 %104, i32 64, i32 32
  br label %106

106:                                              ; preds = %103, %97, %100, %92
  %107 = phi i32 [ %93, %92 ], [ %102, %100 ], [ %93, %97 ], [ %105, %103 ]
  %108 = and i32 %94, 16384
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %112 = load i16, ptr %111, align 8, !tbaa !86
  %113 = icmp eq i16 %112, 0
  %114 = and i32 %94, 4096
  %115 = icmp eq i32 %114, 0
  %116 = or i1 %115, %113
  %117 = and i1 %96, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %120 = load i8, ptr %119, align 1, !tbaa !72
  %121 = icmp eq i8 %120, 4
  br i1 %121, label %122, label %125

122:                                              ; preds = %110, %118
  %123 = icmp slt i32 %107, 17
  %124 = select i1 %123, i32 32, i32 64
  br label %132

125:                                              ; preds = %118
  %126 = icmp slt i32 %107, 9
  %127 = icmp eq i8 %120, 6
  br i1 %126, label %128, label %130

128:                                              ; preds = %125
  %129 = select i1 %127, i32 32, i32 24
  br label %132

130:                                              ; preds = %125
  %131 = select i1 %127, i32 64, i32 48
  br label %132

132:                                              ; preds = %130, %128, %122, %106
  %133 = phi i32 [ %107, %106 ], [ %124, %122 ], [ %129, %128 ], [ %131, %130 ]
  %134 = and i32 %94, 1048576
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  %138 = load i8, ptr %137, align 8, !tbaa !213
  %139 = zext i8 %138 to i32
  %140 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  %141 = load i8, ptr %140, align 1, !tbaa !214
  %142 = zext i8 %141 to i32
  %143 = mul nuw nsw i32 %142, %139
  %144 = tail call i32 @llvm.smax.i32(i32 %143, i32 %133)
  br label %145

145:                                              ; preds = %136, %132
  %146 = phi i32 [ %144, %136 ], [ %133, %132 ]
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  store i8 %147, ptr %148, align 2, !tbaa !215
  %149 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  store i8 0, ptr %149, align 1, !tbaa !177
  %150 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %151 = load i32, ptr %150, align 8, !tbaa !68
  %152 = add i32 %151, 7
  %153 = and i32 %152, -8
  %154 = zext i32 %153 to i64
  %155 = icmp sgt i32 %146, 7
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = lshr i32 %146, 3
  %158 = zext nneg i32 %157 to i64
  %159 = mul nuw nsw i64 %154, %158
  br label %164

160:                                              ; preds = %145
  %161 = zext nneg i32 %146 to i64
  %162 = mul nuw nsw i64 %154, %161
  %163 = lshr exact i64 %162, 3
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i64 [ %159, %156 ], [ %163, %160 ]
  %166 = add nuw nsw i32 %146, 7
  %167 = lshr i32 %166, 3
  %168 = add nuw nsw i32 %167, 49
  %169 = zext nneg i32 %168 to i64
  %170 = add nuw nsw i64 %165, %169
  %171 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 140
  %172 = load i64, ptr %171, align 8, !tbaa !216
  %173 = icmp ugt i64 %170, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %164
  %175 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 130
  %176 = load ptr, ptr %175, align 8, !tbaa !217
  tail call void @png_free(ptr noundef %0, ptr noundef %176) #11
  %177 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 143
  %178 = load ptr, ptr %177, align 8, !tbaa !218
  tail call void @png_free(ptr noundef %0, ptr noundef %178) #11
  %179 = load i8, ptr %3, align 4, !tbaa !71
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  %182 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %170) #11
  br label %185

183:                                              ; preds = %174
  %184 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %170) #11
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi ptr [ %184, %183 ], [ %182, %181 ]
  store ptr %186, ptr %175, align 8, !tbaa !217
  %187 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %170) #11
  store ptr %187, ptr %177, align 8, !tbaa !218
  %188 = load ptr, ptr %175, align 8, !tbaa !217
  %189 = getelementptr inbounds i8, ptr %188, i64 31
  %190 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  store ptr %189, ptr %190, align 8, !tbaa !178
  %191 = getelementptr inbounds i8, ptr %187, i64 31
  %192 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  store ptr %191, ptr %192, align 8, !tbaa !206
  store i64 %170, ptr %171, align 8, !tbaa !216
  br label %193

193:                                              ; preds = %185, %164
  %194 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %195 = load i64, ptr %194, align 8, !tbaa !77
  %196 = icmp eq i64 %195, -1
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.142) #10
  unreachable

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %200 = load ptr, ptr %199, align 8, !tbaa !206
  %201 = add nuw i64 %195, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %200, i8 0, i64 %201, i1 false)
  %202 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %203 = load i32, ptr %202, align 8, !tbaa !56
  %204 = or i32 %203, 64
  store i32 %204, ptr %202, align 8, !tbaa !56
  ret void
}

declare void @png_init_read_transformations(ptr noundef) local_unnamed_addr #4

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_sub(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #7 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !194
  %8 = zext i8 %7 to i64
  %9 = add nuw nsw i64 %8, 7
  %10 = lshr i64 %9, 3
  %11 = icmp ult i64 %10, %5
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %10
  %14 = sub nsw i64 0, %10
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %13, %12 ], [ %22, %15 ]
  %17 = phi i64 [ %10, %12 ], [ %23, %15 ]
  %18 = load i8, ptr %16, align 1, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %16, i64 %14
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = add i8 %20, %18
  store i8 %21, ptr %16, align 1, !tbaa !34
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %5
  br i1 %24, label %25, label %15, !llvm.loop !219

25:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_up(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %2, %3 ]
  %9 = phi ptr [ %15, %7 ], [ %1, %3 ]
  %10 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %11 = load i8, ptr %9, align 1, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %8, align 1, !tbaa !34
  %14 = add i8 %13, %11
  store i8 %14, ptr %9, align 1, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = add nuw i64 %10, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %18, label %7, !llvm.loop !220

18:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_avg(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !194
  %6 = zext i8 %5 to i64
  %7 = add nuw nsw i64 %6, 7
  %8 = lshr i64 %7, 3
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !203
  %11 = sub i64 %10, %8
  %12 = icmp eq i8 %5, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %19, %3
  %14 = phi ptr [ %2, %3 ], [ %24, %19 ]
  %15 = phi ptr [ %1, %3 ], [ %28, %19 ]
  %16 = icmp eq i64 %10, %8
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = sub nsw i64 0, %8
  br label %31

19:                                               ; preds = %3, %19
  %20 = phi i64 [ %29, %19 ], [ 0, %3 ]
  %21 = phi ptr [ %28, %19 ], [ %1, %3 ]
  %22 = phi ptr [ %24, %19 ], [ %2, %3 ]
  %23 = load i8, ptr %21, align 1, !tbaa !34
  %24 = getelementptr inbounds i8, ptr %22, i64 1
  %25 = load i8, ptr %22, align 1, !tbaa !34
  %26 = lshr i8 %25, 1
  %27 = add i8 %26, %23
  store i8 %27, ptr %21, align 1, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %13, label %19, !llvm.loop !221

31:                                               ; preds = %17, %31
  %32 = phi i64 [ 0, %17 ], [ %47, %31 ]
  %33 = phi ptr [ %15, %17 ], [ %46, %31 ]
  %34 = phi ptr [ %14, %17 ], [ %36, %31 ]
  %35 = load i8, ptr %33, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %34, i64 1
  %37 = load i8, ptr %34, align 1, !tbaa !34
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds i8, ptr %33, i64 %18
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = zext i8 %40 to i16
  %42 = add nuw nsw i16 %41, %38
  %43 = lshr i16 %42, 1
  %44 = trunc i16 %43 to i8
  %45 = add i8 %35, %44
  store i8 %45, ptr %33, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %33, i64 1
  %47 = add nuw i64 %32, 1
  %48 = icmp eq i64 %47, %11
  br i1 %48, label %49, label %31, !llvm.loop !222

49:                                               ; preds = %31, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = load i8, ptr %2, align 1, !tbaa !34
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr %1, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, %8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %1, align 1, !tbaa !34
  %13 = icmp sgt i64 %5, 1
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %40, %16 ], [ %15, %14 ]
  %18 = phi ptr [ %21, %16 ], [ %2, %14 ]
  %19 = phi i32 [ %38, %16 ], [ %11, %14 ]
  %20 = phi i32 [ %24, %16 ], [ %8, %14 ]
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  %22 = and i32 %19, 255
  %23 = load i8, ptr %21, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, %20
  %26 = sub nsw i32 %22, %20
  %27 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %28 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %29 = add nsw i32 %25, %26
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = icmp ult i32 %28, %27
  %32 = select i1 %31, i32 %24, i32 %22
  %33 = tail call i32 @llvm.umin.i32(i32 %28, i32 %27)
  %34 = icmp ult i32 %30, %33
  %35 = select i1 %34, i32 %20, i32 %32
  %36 = load i8, ptr %17, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %17, align 1, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %17, i64 1
  %41 = icmp ult ptr %40, %6
  br i1 %41, label %16, label %42, !llvm.loop !223

42:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !194
  %6 = zext i8 %5 to i64
  %7 = add nuw nsw i64 %6, 7
  %8 = lshr i64 %7, 3
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = icmp eq i8 %5, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %18, %11 ], [ %1, %3 ]
  %13 = phi ptr [ %15, %11 ], [ %2, %3 ]
  %14 = load i8, ptr %12, align 1, !tbaa !34
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = load i8, ptr %13, align 1, !tbaa !34
  %17 = add i8 %16, %14
  %18 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %17, ptr %12, align 1, !tbaa !34
  %19 = icmp ult ptr %18, %9
  br i1 %19, label %11, label %20, !llvm.loop !224

20:                                               ; preds = %11, %3
  %21 = phi ptr [ %2, %3 ], [ %15, %11 ]
  %22 = phi ptr [ %1, %3 ], [ %18, %11 ]
  %23 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !203
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = icmp ult ptr %22, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  %28 = sub nsw i64 0, %8
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %22, %27 ], [ %54, %29 ]
  %31 = phi ptr [ %21, %27 ], [ %38, %29 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds i8, ptr %30, i64 %28
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %31, i64 1
  %39 = load i8, ptr %31, align 1, !tbaa !34
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, %34
  %42 = sub nsw i32 %37, %34
  %43 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %44 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %45 = add nsw i32 %41, %42
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  %47 = icmp ult i32 %44, %43
  %48 = select i1 %47, i8 %39, i8 %36
  %49 = tail call i32 @llvm.umin.i32(i32 %44, i32 %43)
  %50 = icmp ult i32 %46, %49
  %51 = select i1 %50, i8 %33, i8 %48
  %52 = load i8, ptr %30, align 1, !tbaa !34
  %53 = add i8 %51, %52
  %54 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %53, ptr %30, align 1, !tbaa !34
  %55 = icmp ult ptr %54, %25
  br i1 %55, label %29, label %56, !llvm.loop !225

56:                                               ; preds = %29, %20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !35, i64 597}
!38 = !{!"png_struct_def", !35, i64 0, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !35, i64 280, !35, i64 281, !40, i64 284, !40, i64 288, !40, i64 292, !41, i64 296, !39, i64 408, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !42, i64 480, !40, i64 488, !40, i64 492, !40, i64 496, !39, i64 504, !39, i64 512, !39, i64 520, !39, i64 528, !39, i64 536, !39, i64 544, !42, i64 552, !40, i64 560, !40, i64 564, !39, i64 568, !43, i64 576, !40, i64 580, !43, i64 584, !35, i64 586, !35, i64 587, !35, i64 588, !35, i64 589, !35, i64 590, !35, i64 591, !35, i64 592, !35, i64 593, !35, i64 594, !35, i64 595, !35, i64 596, !35, i64 597, !35, i64 598, !35, i64 599, !35, i64 600, !43, i64 606, !35, i64 608, !40, i64 612, !44, i64 616, !44, i64 626, !39, i64 640, !40, i64 648, !40, i64 652, !40, i64 656, !40, i64 660, !40, i64 664, !39, i64 672, !39, i64 680, !39, i64 688, !39, i64 696, !39, i64 704, !39, i64 712, !45, i64 720, !45, i64 725, !39, i64 736, !44, i64 744, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !39, i64 816, !39, i64 824, !40, i64 832, !40, i64 836, !42, i64 840, !42, i64 848, !42, i64 856, !42, i64 864, !40, i64 872, !40, i64 876, !39, i64 880, !39, i64 888, !39, i64 896, !35, i64 904, !35, i64 905, !39, i64 912, !39, i64 920, !39, i64 928, !39, i64 936, !39, i64 944, !35, i64 952, !40, i64 984, !39, i64 992, !39, i64 1000, !40, i64 1008, !39, i64 1016, !35, i64 1024, !35, i64 1025, !35, i64 1026, !43, i64 1028, !43, i64 1030, !40, i64 1032, !35, i64 1036, !39, i64 1040, !39, i64 1048, !39, i64 1056, !39, i64 1064, !39, i64 1072, !39, i64 1080, !39, i64 1088, !35, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !42, i64 1112, !46, i64 1120, !42, i64 1152, !39, i64 1160, !40, i64 1168, !39, i64 1176, !35, i64 1184}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!"z_stream_s", !39, i64 0, !40, i64 8, !42, i64 16, !39, i64 24, !40, i64 32, !42, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !40, i64 88, !42, i64 96, !42, i64 104}
!42 = !{!"long", !35, i64 0}
!43 = !{!"short", !35, i64 0}
!44 = !{!"png_color_16_struct", !35, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8}
!45 = !{!"png_color_8_struct", !35, i64 0, !35, i64 1, !35, i64 2, !35, i64 3, !35, i64 4}
!46 = !{!"png_unknown_chunk_t", !35, i64 0, !39, i64 8, !42, i64 16, !35, i64 24}
!47 = !{!38, !40, i64 1168}
!48 = !{!38, !40, i64 284}
!49 = !{!38, !40, i64 496}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!38, !40, i64 416}
!54 = !{!38, !39, i64 408}
!55 = distinct !{!55, !51, !52}
!56 = !{!38, !40, i64 288}
!57 = !{!38, !40, i64 564}
!58 = !{!38, !39, i64 1160}
!59 = !{!38, !42, i64 1112}
!60 = !{!42, !42, i64 0}
!61 = !{!38, !39, i64 296}
!62 = !{!38, !40, i64 304}
!63 = !{!38, !39, i64 320}
!64 = !{!38, !40, i64 328}
!65 = distinct !{!65, !52}
!66 = !{!38, !39, i64 344}
!67 = !{i32 0, i32 2}
!68 = !{!38, !40, i64 464}
!69 = !{!38, !40, i64 468}
!70 = !{!38, !35, i64 592}
!71 = !{!38, !35, i64 588}
!72 = !{!38, !35, i64 591}
!73 = !{!38, !35, i64 1036}
!74 = !{!38, !35, i64 1096}
!75 = !{!38, !35, i64 595}
!76 = !{!38, !35, i64 594}
!77 = !{!38, !42, i64 480}
!78 = !{!79, !35, i64 0}
!79 = !{!"png_color_struct", !35, i64 0, !35, i64 1, !35, i64 2}
!80 = !{!79, !35, i64 1}
!81 = !{!79, !35, i64 2}
!82 = distinct !{!82, !51, !52}
!83 = !{!84, !40, i64 8}
!84 = !{!"png_info_def", !40, i64 0, !40, i64 4, !40, i64 8, !42, i64 16, !39, i64 24, !43, i64 32, !43, i64 34, !35, i64 36, !35, i64 37, !35, i64 38, !35, i64 39, !35, i64 40, !35, i64 41, !35, i64 42, !35, i64 43, !35, i64 44, !40, i64 52, !35, i64 56, !40, i64 60, !40, i64 64, !39, i64 72, !85, i64 80, !45, i64 88, !39, i64 96, !44, i64 104, !44, i64 114, !40, i64 124, !40, i64 128, !35, i64 132, !40, i64 136, !40, i64 140, !35, i64 144, !39, i64 152, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !39, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 216, !35, i64 224, !35, i64 225, !40, i64 228, !39, i64 232, !40, i64 240, !39, i64 248, !39, i64 256, !40, i64 264, !35, i64 268, !39, i64 272, !40, i64 280, !35, i64 284, !39, i64 288, !39, i64 296, !39, i64 304}
!85 = !{!"png_time_struct", !43, i64 0, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6}
!86 = !{!38, !43, i64 584}
!87 = !{!84, !43, i64 34}
!88 = !{!38, !40, i64 660}
!89 = !{!38, !35, i64 720}
!90 = !{!38, !35, i64 721}
!91 = !{!38, !35, i64 723}
!92 = !{!38, !35, i64 722}
!93 = !{!38, !35, i64 724}
!94 = !{!38, !35, i64 1026}
!95 = !{!96, !40, i64 0}
!96 = !{!"png_xy", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!97 = !{!96, !40, i64 4}
!98 = !{!96, !40, i64 8}
!99 = !{!96, !40, i64 12}
!100 = !{!96, !40, i64 16}
!101 = !{!96, !40, i64 20}
!102 = !{!96, !40, i64 24}
!103 = !{!96, !40, i64 28}
!104 = !{!105, !40, i64 4}
!105 = !{!"png_XYZ", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32}
!106 = !{!105, !40, i64 16}
!107 = !{!105, !40, i64 28}
!108 = !{!40, !40, i64 0}
!109 = !{!38, !43, i64 1028}
!110 = !{!38, !43, i64 1030}
!111 = !{!84, !40, i64 52}
!112 = !{!84, !40, i64 160}
!113 = !{!84, !40, i64 164}
!114 = !{!84, !40, i64 168}
!115 = !{!84, !40, i64 172}
!116 = !{!84, !40, i64 176}
!117 = !{!84, !40, i64 180}
!118 = !{!84, !40, i64 184}
!119 = !{!84, !40, i64 188}
!120 = !{!38, !35, i64 1024}
!121 = distinct !{!121, !51, !52}
!122 = !{!38, !40, i64 1108}
!123 = distinct !{!123, !51, !52}
!124 = !{!125, !35, i64 8}
!125 = !{!"png_sPLT_struct", !39, i64 0, !35, i64 8, !39, i64 16, !40, i64 24}
!126 = !{!125, !40, i64 24}
!127 = !{!125, !39, i64 16}
!128 = !{!129, !43, i64 0}
!129 = !{!"png_sPLT_entry_struct", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8}
!130 = !{!129, !43, i64 2}
!131 = !{!129, !43, i64 4}
!132 = !{!129, !43, i64 6}
!133 = !{!129, !43, i64 8}
!134 = distinct !{!134, !51, !52}
!135 = !{!125, !39, i64 0}
!136 = !{!38, !43, i64 752}
!137 = !{!38, !43, i64 746}
!138 = !{!38, !43, i64 748}
!139 = !{!38, !43, i64 750}
!140 = !{!38, !43, i64 576}
!141 = !{!44, !35, i64 0}
!142 = !{!84, !43, i64 32}
!143 = !{!38, !39, i64 568}
!144 = !{!44, !43, i64 2}
!145 = !{!44, !43, i64 4}
!146 = !{!44, !43, i64 6}
!147 = !{!44, !43, i64 8}
!148 = !{!43, !43, i64 0}
!149 = distinct !{!149, !51, !52}
!150 = distinct !{!150, !51, !52}
!151 = distinct !{!151, !51, !52}
!152 = !{!39, !39, i64 0}
!153 = distinct !{!153, !51, !52}
!154 = distinct !{!154, !51, !52}
!155 = !{!85, !35, i64 6}
!156 = !{!85, !35, i64 5}
!157 = !{!85, !35, i64 4}
!158 = !{!85, !35, i64 3}
!159 = !{!85, !35, i64 2}
!160 = !{!85, !43, i64 0}
!161 = distinct !{!161, !51, !52}
!162 = !{!163, !40, i64 0}
!163 = !{!"png_text_struct", !40, i64 0, !39, i64 8, !39, i64 16, !42, i64 24, !42, i64 32, !39, i64 40, !39, i64 48}
!164 = !{!163, !39, i64 8}
!165 = !{!163, !39, i64 16}
!166 = !{!163, !42, i64 24}
!167 = distinct !{!167, !51, !52}
!168 = distinct !{!168, !51, !52}
!169 = distinct !{!169, !51, !52}
!170 = distinct !{!170, !51, !52}
!171 = !{!163, !39, i64 48}
!172 = !{!163, !39, i64 40}
!173 = !{!163, !42, i64 32}
!174 = !{!38, !39, i64 1000}
!175 = !{!38, !42, i64 1136}
!176 = !{!38, !39, i64 1128}
!177 = !{!38, !35, i64 599}
!178 = !{!38, !39, i64 512}
!179 = !{!38, !35, i64 589}
!180 = !{!38, !42, i64 552}
!181 = !{!38, !40, i64 292}
!182 = distinct !{!182, !52}
!183 = distinct !{!183, !51, !52}
!184 = distinct !{!184, !52}
!185 = distinct !{!185, !51, !52}
!186 = distinct !{!186, !51, !52}
!187 = distinct !{!187, !51, !52}
!188 = distinct !{!188, !51, !52}
!189 = distinct !{!189, !51, !52}
!190 = distinct !{!190, !51, !52}
!191 = distinct !{!191, !52}
!192 = !{!193, !40, i64 0}
!193 = !{!"png_row_info_struct", !40, i64 0, !42, i64 8, !35, i64 16, !35, i64 17, !35, i64 18, !35, i64 19}
!194 = !{!193, !35, i64 19}
!195 = distinct !{!195, !51, !52}
!196 = distinct !{!196, !51, !52}
!197 = distinct !{!197, !51, !52}
!198 = distinct !{!198, !51, !52}
!199 = distinct !{!199, !51, !52}
!200 = distinct !{!200, !51, !52}
!201 = distinct !{!201, !51, !52}
!202 = distinct !{!202, !51, !52}
!203 = !{!193, !42, i64 8}
!204 = !{!38, !40, i64 492}
!205 = !{!38, !40, i64 472}
!206 = !{!38, !39, i64 504}
!207 = !{!38, !40, i64 488}
!208 = distinct !{!208, !51, !52}
!209 = !{!38, !40, i64 560}
!210 = !{i32 0, i32 -2147483648}
!211 = distinct !{!211, !51, !52}
!212 = distinct !{!212, !52}
!213 = !{!38, !35, i64 280}
!214 = !{!38, !35, i64 281}
!215 = !{!38, !35, i64 598}
!216 = !{!38, !42, i64 1152}
!217 = !{!38, !39, i64 1064}
!218 = !{!38, !39, i64 1176}
!219 = distinct !{!219, !51, !52}
!220 = distinct !{!220, !51, !52}
!221 = distinct !{!221, !51, !52}
!222 = distinct !{!222, !51, !52}
!223 = distinct !{!223, !51, !52}
!224 = distinct !{!224, !51, !52}
!225 = distinct !{!225, !51, !52}
