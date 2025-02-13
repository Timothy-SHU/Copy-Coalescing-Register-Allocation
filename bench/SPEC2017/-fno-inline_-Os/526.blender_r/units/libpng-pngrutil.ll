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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #11
  unreachable

22:                                               ; preds = %2
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef %8) #12
  store i8 8, ptr %3, align 1, !tbaa !37
  %12 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %7, i64 noundef %8) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = icmp ult i8 %4, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = sub nuw nsw i64 4, %7
  %18 = tail call i32 @png_sig_cmp(ptr noundef nonnull %10, i64 noundef %7, i64 noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #11
  unreachable

21:                                               ; preds = %16, %14
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #11
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

; Function Attrs: optsize
declare void @png_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_read_chunk_header(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 33, ptr %3, align 8, !tbaa !47
  call void @png_read_data(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 8) #12
  %4 = call i32 @png_get_uint_31(ptr noundef %0, ptr noundef nonnull %2) #14, !range !49
  %5 = getelementptr inbounds i8, ptr %2, i64 4
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds i8, ptr %2, i64 5
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or disjoint i32 %12, %8
  %14 = getelementptr inbounds i8, ptr %2, i64 6
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %13, %17
  %19 = getelementptr inbounds i8, ptr %2, i64 7
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %22, ptr %23, align 8, !tbaa !50
  call void @png_reset_crc(ptr noundef %0) #12
  call void @png_calculate_crc(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 4) #12
  %24 = load i32, ptr %23, align 8, !tbaa !50
  call void @png_check_chunk_name(ptr noundef %0, i32 noundef %24) #14
  store i32 65, ptr %3, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %4
}

; Function Attrs: optsize
declare void @png_reset_crc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @png_chunk_error(ptr noundef %0, ptr noundef nonnull @.str.133) #11
  unreachable

13:                                               ; preds = %3
  %14 = lshr i32 %4, 8
  %15 = add nuw nsw i32 %5, 1
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %3, !llvm.loop !51

17:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_crc_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #12
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @png_crc_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = zext i32 %4 to i64
  %6 = zext i32 %1 to i64
  %7 = icmp ult i32 %4, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %6, %8 ], [ %15, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !54
  %13 = load i32, ptr %3, align 8, !tbaa !53
  %14 = zext i32 %13 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %12, i64 noundef %14) #14
  %15 = sub i64 %11, %5
  %16 = icmp ugt i64 %15, %5
  br i1 %16, label %10, label %17, !llvm.loop !55

17:                                               ; preds = %10, %2
  %18 = phi i64 [ %6, %2 ], [ %15, %10 ]
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %22, i64 noundef %18) #14
  br label %23

23:                                               ; preds = %20, %17
  %24 = tail call i32 @png_crc_error(ptr noundef nonnull %0) #14, !range !56
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %28 = load i32, ptr %27, align 8, !tbaa !50
  %29 = and i32 %28, 536870912
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %32 = load i32, ptr %31, align 8, !tbaa !57
  br i1 %30, label %36, label %33

33:                                               ; preds = %26
  %34 = and i32 %32, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %40

36:                                               ; preds = %26
  %37 = and i32 %32, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  tail call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  br label %41

40:                                               ; preds = %36, %33
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  br label %41

41:                                               ; preds = %23, %39, %40
  %42 = phi i32 [ 1, %39 ], [ 0, %40 ], [ 0, %23 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @png_crc_error(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = and i32 %4, 536870912
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 129, ptr %9, align 8, !tbaa !47
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4) #12
  br i1 %6, label %13, label %10

10:                                               ; preds = %1
  %11 = and i32 %8, 768
  %12 = icmp eq i32 %11, 768
  br i1 %12, label %38, label %16

13:                                               ; preds = %1
  %14 = and i32 %8, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %10, %13
  %17 = load i8, ptr %2, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or disjoint i32 %23, %19
  %25 = getelementptr inbounds i8, ptr %2, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %24, %28
  %30 = getelementptr inbounds i8, ptr %2, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = or disjoint i32 %29, %32
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %35 = load i32, ptr %34, align 4, !tbaa !58
  %36 = icmp ne i32 %33, %35
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %10, %13, %16
  %39 = phi i32 [ %37, %16 ], [ 0, %13 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %39
}

; Function Attrs: optsize
declare void @png_chunk_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_decompress_chunk(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [8 x [32 x i8]], align 16
  %7 = icmp ugt i64 %3, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.4) #12
  br label %49

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds i8, ptr %13, i64 %3
  %15 = sub i64 %2, %3
  %16 = tail call fastcc i64 @png_inflate(ptr noundef %0, ptr noundef %14, i64 noundef %15, ptr noundef null, i64 noundef 0) #14
  %17 = icmp ult i64 %3, -2
  %18 = sub nuw i64 -2, %3
  %19 = icmp ult i64 %16, %18
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 138
  %23 = load i64, ptr %22, align 8, !tbaa !60
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = add i64 %16, %3
  %27 = add i64 %23, -1
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #12
  br label %49

30:                                               ; preds = %25, %21
  %31 = icmp eq i64 %16, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %30
  %33 = add i64 %16, %3
  %34 = add i64 %33, 1
  %35 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %34) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %12, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %38, i64 %3, i1 false)
  %39 = getelementptr inbounds i8, ptr %38, i64 %3
  %40 = getelementptr inbounds i8, ptr %35, i64 %3
  %41 = tail call fastcc i64 @png_inflate(ptr noundef nonnull %0, ptr noundef %39, i64 noundef %15, ptr noundef nonnull %40, i64 noundef %16) #14
  %42 = getelementptr inbounds i8, ptr %35, i64 %33
  store i8 0, ptr %42, align 1, !tbaa !34
  %43 = icmp eq i64 %41, %16
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %35) #12
  br label %49

45:                                               ; preds = %32
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  br label %49

46:                                               ; preds = %37
  %47 = load ptr, ptr %12, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %47) #12
  store ptr %35, ptr %12, align 8, !tbaa !59
  br label %62

48:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #13
  call void @png_warning_parameter_signed(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, i32 noundef %1) #12
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #13
  br label %49

49:                                               ; preds = %29, %30, %44, %45, %48, %8
  %50 = phi i64 [ 0, %8 ], [ %3, %48 ], [ %3, %45 ], [ %3, %44 ], [ %3, %30 ], [ %3, %29 ]
  %51 = add i64 %50, 1
  %52 = call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %51) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp eq i64 %50, 0
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  br i1 %55, label %59, label %58

58:                                               ; preds = %54
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr align 1 %57, i64 %50, i1 false)
  br label %59

59:                                               ; preds = %54, %58
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  call void @png_free(ptr noundef nonnull %0, ptr noundef %57) #12
  store ptr %52, ptr %60, align 8, !tbaa !59
  %61 = getelementptr inbounds i8, ptr %52, i64 %50
  store i8 0, ptr %61, align 1, !tbaa !34
  br label %62

62:                                               ; preds = %49, %59, %46
  %63 = phi i64 [ %33, %46 ], [ %50, %59 ], [ %50, %49 ]
  store i64 %63, ptr %4, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @png_inflate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly %3, i64 noundef %4) unnamed_addr #0 !PGOFuncName !62 {
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  store ptr %1, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %12 = icmp ne ptr %3, null
  br label %13

13:                                               ; preds = %49, %5
  %14 = phi i64 [ 0, %5 ], [ %50, %49 ]
  %15 = phi i64 [ %2, %5 ], [ %27, %49 ]
  %16 = load i32, ptr %7, align 8, !tbaa !64
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne i64 %15, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = icmp ult i64 %15, 4294967296
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = trunc i64 %15 to i32
  store i32 %23, ptr %7, align 8, !tbaa !64
  br label %26

24:                                               ; preds = %20
  store i32 -1, ptr %7, align 8, !tbaa !64
  %25 = add i64 %15, -4294967295
  br label %26

26:                                               ; preds = %22, %24, %13
  %27 = phi i64 [ 0, %22 ], [ %25, %24 ], [ %15, %13 ]
  %28 = load ptr, ptr %8, align 8, !tbaa !54
  store ptr %28, ptr %9, align 8, !tbaa !65
  %29 = load i32, ptr %10, align 8, !tbaa !53
  store i32 %29, ptr %11, align 8, !tbaa !66
  %30 = tail call i32 @inflate(ptr noundef nonnull %6, i32 noundef 0) #12
  %31 = load i32, ptr %10, align 8, !tbaa !53
  %32 = load i32, ptr %11, align 8, !tbaa !66
  %33 = sub i32 %31, %32
  %34 = icmp eq i32 %30, 0
  %35 = icmp ult i32 %30, 2
  %36 = icmp sgt i32 %33, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = zext nneg i32 %33 to i64
  %40 = icmp ult i64 %14, %4
  %41 = select i1 %12, i1 %40, i1 false
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = sub i64 %4, %14
  %44 = tail call i64 @llvm.umin.i64(i64 %43, i64 %39)
  %45 = getelementptr inbounds i8, ptr %3, i64 %14
  %46 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %46, i64 %44, i1 false)
  br label %47

47:                                               ; preds = %42, %38
  %48 = add i64 %14, %39
  br label %49

49:                                               ; preds = %26, %47
  %50 = phi i64 [ %48, %47 ], [ %14, %26 ]
  br i1 %34, label %13, label %51

51:                                               ; preds = %49
  %52 = icmp eq i32 %30, 1
  store i32 0, ptr %7, align 8, !tbaa !64
  %53 = tail call i32 @inflateReset(ptr noundef nonnull %6) #12
  br i1 %52, label %63, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  %58 = icmp eq i32 %30, -3
  %59 = select i1 %58, ptr @.str.144, ptr @.str.145
  %60 = icmp eq i32 %30, -5
  %61 = select i1 %60, ptr @.str.143, ptr %59
  %62 = select i1 %57, ptr %61, ptr %56
  tail call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull %62) #12
  br label %63

63:                                               ; preds = %51, %54
  %64 = phi i64 [ %50, %51 ], [ 0, %54 ]
  ret i64 %64
}

; Function Attrs: optsize
declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_warning_parameter_signed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_formatted_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_IHDR(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #11
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 13
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #11
  unreachable

13:                                               ; preds = %10
  %14 = or disjoint i32 %6, 1
  store i32 %14, ptr %5, align 4, !tbaa !48
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 13) #14
  %15 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %16 = call i32 @png_get_uint_31(ptr noundef nonnull %0, ptr noundef nonnull %4) #14, !range !49
  %17 = getelementptr inbounds i8, ptr %4, i64 4
  %18 = call i32 @png_get_uint_31(ptr noundef nonnull %0, ptr noundef nonnull %17) #14, !range !49
  %19 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 8
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 9
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 10
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 11
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = getelementptr inbounds [13 x i8], ptr %4, i64 0, i64 12
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  store i32 %16, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  store i32 %18, ptr %30, align 4, !tbaa !69
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  store i8 %20, ptr %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  store i8 %28, ptr %32, align 4, !tbaa !71
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  store i8 %22, ptr %33, align 1, !tbaa !72
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  store i8 %26, ptr %34, align 4, !tbaa !73
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 134
  store i8 %24, ptr %35, align 8, !tbaa !74
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %37 = icmp ult i8 %22, 7
  %38 = zext i8 %22 to i56
  %39 = shl nuw nsw i56 %38, 3
  %40 = lshr i56 1127008025379073, %39
  %41 = trunc i56 %40 to i8
  %42 = select i1 %37, i8 %41, i8 1
  store i8 %42, ptr %36, align 1, !tbaa !75
  %43 = mul i8 %42, %20
  %44 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  store i8 %43, ptr %44, align 2, !tbaa !76
  %45 = icmp ugt i8 %43, 7
  %46 = zext nneg i32 %16 to i64
  br i1 %45, label %47, label %51

47:                                               ; preds = %13
  %48 = lshr i8 %43, 3
  %49 = zext nneg i8 %48 to i64
  %50 = mul nuw nsw i64 %49, %46
  br label %56

51:                                               ; preds = %13
  %52 = zext nneg i8 %43 to i64
  %53 = mul nuw nsw i64 %52, %46
  %54 = add nuw nsw i64 %53, 7
  %55 = lshr i64 %54, 3
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i64 [ %50, %47 ], [ %55, %51 ]
  %58 = zext i8 %28 to i32
  %59 = zext i8 %26 to i32
  %60 = zext i8 %24 to i32
  %61 = zext i8 %22 to i32
  %62 = zext i8 %20 to i32
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  store i64 %57, ptr %63, align 8, !tbaa !77
  call void @png_set_IHDR(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %16, i32 noundef %18, i32 noundef %62, i32 noundef %61, i32 noundef %58, i32 noundef %60, i32 noundef %59) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_PLTE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x %struct.png_color_struct], align 16
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %79

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #11
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #12
  %27 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %79

28:                                               ; preds = %20
  %29 = icmp ult i32 %2, 769
  %30 = urem i32 %2, 3
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = icmp eq i8 %23, 3
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #12
  %36 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %79

37:                                               ; preds = %33
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #11
  unreachable

38:                                               ; preds = %28
  %39 = trunc i32 %2 to i16
  %40 = udiv i16 %39, 3
  %41 = zext nneg i16 %40 to i32
  %42 = icmp ult i16 %39, 3
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  %45 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  %46 = tail call i32 @llvm.umax.i32(i32 %41, i32 1)
  br label %47

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %4, %43 ], [ %56, %47 ]
  %49 = phi i32 [ 0, %43 ], [ %55, %47 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #13
  call void @png_crc_read(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 3) #14
  %50 = load i8, ptr %5, align 1, !tbaa !34
  store i8 %50, ptr %48, align 1, !tbaa !78
  %51 = load i8, ptr %44, align 1, !tbaa !34
  %52 = getelementptr inbounds %struct.png_color_struct, ptr %48, i64 0, i32 1
  store i8 %51, ptr %52, align 1, !tbaa !80
  %53 = load i8, ptr %45, align 1, !tbaa !34
  %54 = getelementptr inbounds %struct.png_color_struct, ptr %48, i64 0, i32 2
  store i8 %53, ptr %54, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #13
  %55 = add nuw nsw i32 %49, 1
  %56 = getelementptr inbounds %struct.png_color_struct, ptr %48, i64 1
  %57 = icmp eq i32 %55, %46
  br i1 %57, label %58, label %47, !llvm.loop !82

58:                                               ; preds = %47, %38
  %59 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0) #14, !range !56
  call void @png_set_PLTE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %41) #12
  %60 = load i8, ptr %22, align 1, !tbaa !72
  %61 = icmp eq i8 %60, 3
  %62 = icmp ne ptr %1, null
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !83
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %71 = load i16, ptr %70, align 8, !tbaa !86
  %72 = icmp ult i16 %40, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #12
  store i16 %40, ptr %70, align 8, !tbaa !86
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %76 = load i16, ptr %75, align 2, !tbaa !87
  %77 = icmp ult i16 %40, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #12
  store i16 %40, ptr %75, align 2, !tbaa !87
  br label %79

79:                                               ; preds = %58, %74, %78, %64, %35, %26, %14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_PLTE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_IEND(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 5
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #11
  unreachable

9:                                                ; preds = %3
  %10 = or i32 %5, 24
  store i32 %10, ptr %4, align 4, !tbaa !48
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #12
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_gAMA(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  %5 = alloca [8 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %52

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #12
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #12
  %28 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %52

29:                                               ; preds = %22, %20
  %30 = icmp eq i32 %2, 4
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #12
  %32 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %52

33:                                               ; preds = %29
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 4) #14
  %34 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %4) #14
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #12
  br label %52

40:                                               ; preds = %36
  br i1 %21, label %50, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !83
  %44 = and i32 %43, 2048
  %45 = icmp ne i32 %44, 0
  %46 = add nsw i32 %37, -46001
  %47 = icmp ult i32 %46, -1001
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 5, i32 noundef %37) #12
  call void @png_formatted_warning(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  br label %52

50:                                               ; preds = %41, %40
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 75
  store i32 %37, ptr %51, align 4, !tbaa !88
  call void @png_set_gAMA_fixed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %37) #12
  br label %52

52:                                               ; preds = %33, %50, %49, %39, %31, %27, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @png_get_fixed_point(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !89 {
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
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 -1)
  ret i32 %19
}

; Function Attrs: optsize
declare void @png_set_gAMA_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_sBIT(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
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
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #11
  unreachable

13:                                               ; preds = %3
  %14 = and i32 %9, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #12
  %17 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %69

18:                                               ; preds = %13
  %19 = and i32 %9, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #12
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #12
  %30 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %69

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #12
  %46 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %69

47:                                               ; preds = %39
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %40) #14
  %48 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i8, ptr %32, align 1, !tbaa !72
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  %54 = load i8, ptr %4, align 4, !tbaa !34
  br i1 %53, label %58, label %55

55:                                               ; preds = %50
  %56 = load i8, ptr %7, align 1, !tbaa !34
  %57 = load i8, ptr %6, align 2, !tbaa !34
  br label %60

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 3
  store i8 %54, ptr %59, align 1, !tbaa !90
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %7, %58 ], [ %5, %55 ]
  %62 = phi i8 [ %54, %58 ], [ %56, %55 ]
  %63 = phi i8 [ %54, %58 ], [ %57, %55 ]
  %64 = load i8, ptr %61, align 1, !tbaa !34
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83
  store i8 %54, ptr %65, align 8
  %66 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 1
  store i8 %62, ptr %66, align 1
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 2
  store i8 %63, ptr %67, align 2
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 83, i32 4
  store i8 %64, ptr %68, align 4
  call void @png_set_sBIT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %65) #12
  br label %69

69:                                               ; preds = %47, %60, %45, %29, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_sBIT(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_cHRM(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [8 x [32 x i8]], align 16
  %6 = alloca %struct.png_XYZ, align 4
  %7 = alloca %struct.png_xy, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #11
  unreachable

16:                                               ; preds = %3
  %17 = and i32 %12, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #12
  %20 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %196

21:                                               ; preds = %16
  %22 = and i32 %12, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #12
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.35) #12
  %33 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %196

34:                                               ; preds = %27, %25
  %35 = icmp eq i32 %2, 32
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #12
  %37 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %196

38:                                               ; preds = %34
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 32) #14
  %39 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %196

41:                                               ; preds = %38
  %42 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %4) #14
  %43 = getelementptr inbounds i8, ptr %4, i64 4
  %44 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %43) #14
  %45 = getelementptr inbounds i8, ptr %4, i64 8
  %46 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %45) #14
  %47 = getelementptr inbounds i8, ptr %4, i64 12
  %48 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %47) #14
  %49 = getelementptr inbounds i8, ptr %4, i64 16
  %50 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %49) #14
  %51 = getelementptr inbounds i8, ptr %4, i64 20
  %52 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %51) #14
  %53 = getelementptr inbounds i8, ptr %4, i64 24
  %54 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %53) #14
  %55 = getelementptr inbounds i8, ptr %4, i64 28
  %56 = call fastcc i32 @png_get_fixed_point(ptr noundef nonnull %55) #14
  %57 = icmp eq i32 %42, -1
  %58 = icmp eq i32 %44, -1
  %59 = select i1 %57, i1 true, i1 %58
  %60 = icmp eq i32 %46, -1
  %61 = select i1 %59, i1 true, i1 %60
  %62 = icmp eq i32 %48, -1
  %63 = select i1 %61, i1 true, i1 %62
  %64 = icmp eq i32 %50, -1
  %65 = select i1 %63, i1 true, i1 %64
  %66 = icmp eq i32 %52, -1
  %67 = select i1 %65, i1 true, i1 %66
  %68 = icmp eq i32 %54, -1
  %69 = select i1 %67, i1 true, i1 %68
  %70 = icmp eq i32 %56, -1
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %41
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #12
  br label %196

73:                                               ; preds = %41
  br i1 %26, label %111, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !83
  %77 = and i32 %76, 2048
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %111, label %79

79:                                               ; preds = %74
  %80 = add nsw i32 %42, -32271
  %81 = icmp ult i32 %80, -2001
  %82 = icmp slt i32 %44, 31900
  %83 = select i1 %81, i1 true, i1 %82
  %84 = icmp sgt i32 %44, 33900
  %85 = select i1 %83, i1 true, i1 %84
  %86 = icmp slt i32 %46, 63000
  %87 = select i1 %85, i1 true, i1 %86
  %88 = icmp sgt i32 %46, 65000
  %89 = select i1 %87, i1 true, i1 %88
  %90 = icmp ult i32 %48, 32000
  %91 = select i1 %89, i1 true, i1 %90
  %92 = icmp ugt i32 %48, 34000
  %93 = select i1 %91, i1 true, i1 %92
  %94 = icmp ult i32 %50, 29000
  %95 = select i1 %93, i1 true, i1 %94
  %96 = icmp ugt i32 %50, 31000
  %97 = select i1 %95, i1 true, i1 %96
  %98 = icmp ult i32 %52, 59000
  %99 = select i1 %97, i1 true, i1 %98
  %100 = icmp ugt i32 %52, 61000
  %101 = select i1 %99, i1 true, i1 %100
  %102 = icmp ult i32 %54, 14000
  %103 = select i1 %101, i1 true, i1 %102
  %104 = icmp ugt i32 %54, 16000
  %105 = select i1 %103, i1 true, i1 %104
  %106 = icmp ult i32 %56, 5000
  %107 = select i1 %105, i1 true, i1 %106
  %108 = icmp ugt i32 %56, 7000
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %110, label %196

110:                                              ; preds = %79
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 5, i32 noundef %42) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 5, i32 noundef %44) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 3, i32 noundef 5, i32 noundef %46) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 4, i32 noundef 5, i32 noundef %48) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 5, i32 noundef 5, i32 noundef %50) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 6, i32 noundef 5, i32 noundef %52) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 7, i32 noundef 5, i32 noundef %54) #12
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 8, i32 noundef 5, i32 noundef %56) #12
  call void @png_formatted_warning(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.38) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  br label %196

111:                                              ; preds = %74, %73
  %112 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 122
  %113 = load i8, ptr %112, align 2, !tbaa !91
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %195

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  store i32 %46, ptr %7, align 8, !tbaa !92
  %116 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 1
  store i32 %48, ptr %116, align 4, !tbaa !94
  %117 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 2
  store i32 %50, ptr %117, align 8, !tbaa !95
  %118 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 3
  store i32 %52, ptr %118, align 4, !tbaa !96
  %119 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 4
  store i32 %54, ptr %119, align 8, !tbaa !97
  %120 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 5
  store i32 %56, ptr %120, align 4, !tbaa !98
  %121 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 6
  store i32 %42, ptr %121, align 8, !tbaa !99
  %122 = getelementptr inbounds %struct.png_xy, ptr %7, i64 0, i32 7
  store i32 %44, ptr %122, align 4, !tbaa !100
  %123 = call i32 @png_XYZ_from_xy_checked(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull byval(%struct.png_xy) align 8 %7) #12
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %194, label %125

125:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %126 = getelementptr inbounds %struct.png_XYZ, ptr %6, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !101
  %128 = call i32 @png_muldiv(ptr noundef nonnull %8, i32 noundef %127, i32 noundef 32768, i32 noundef 100000) #12
  %129 = icmp ne i32 %128, 0
  %130 = load i32, ptr %8, align 4
  %131 = icmp sgt i32 %130, -1
  %132 = select i1 %129, i1 %131, i1 false
  %133 = icmp slt i32 %130, 32769
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %193

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.png_XYZ, ptr %6, i64 0, i32 4
  %137 = load i32, ptr %136, align 4, !tbaa !103
  %138 = call i32 @png_muldiv(ptr noundef nonnull %9, i32 noundef %137, i32 noundef 32768, i32 noundef 100000) #12
  %139 = icmp ne i32 %138, 0
  %140 = load i32, ptr %9, align 4
  %141 = icmp sgt i32 %140, -1
  %142 = select i1 %139, i1 %141, i1 false
  %143 = icmp slt i32 %140, 32769
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %193

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.png_XYZ, ptr %6, i64 0, i32 7
  %147 = load i32, ptr %146, align 4, !tbaa !104
  %148 = call i32 @png_muldiv(ptr noundef nonnull %10, i32 noundef %147, i32 noundef 32768, i32 noundef 100000) #12
  %149 = icmp ne i32 %148, 0
  %150 = load i32, ptr %10, align 4
  %151 = icmp sgt i32 %150, -1
  %152 = select i1 %149, i1 %151, i1 false
  %153 = icmp slt i32 %150, 32769
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %193

155:                                              ; preds = %145
  %156 = load i32, ptr %8, align 4, !tbaa !105
  %157 = load i32, ptr %9, align 4, !tbaa !105
  %158 = add i32 %156, %150
  %159 = add i32 %158, %157
  %160 = icmp slt i32 %159, 32770
  br i1 %160, label %161, label %193

161:                                              ; preds = %155
  %162 = icmp eq i32 %159, 32769
  br i1 %162, label %165, label %163

163:                                              ; preds = %161
  %164 = icmp slt i32 %159, 32768
  br i1 %164, label %165, label %180

165:                                              ; preds = %161, %163
  %166 = phi i32 [ 1, %163 ], [ -1, %161 ]
  %167 = icmp slt i32 %157, %156
  %168 = icmp slt i32 %157, %150
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %172, label %170

170:                                              ; preds = %165
  %171 = add nsw i32 %166, %157
  store i32 %171, ptr %9, align 4, !tbaa !105
  br label %180

172:                                              ; preds = %165
  %173 = icmp slt i32 %156, %157
  %174 = icmp slt i32 %156, %150
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = add nsw i32 %166, %156
  store i32 %177, ptr %8, align 4, !tbaa !105
  br label %180

178:                                              ; preds = %172
  %179 = add nsw i32 %166, %150
  store i32 %179, ptr %10, align 4, !tbaa !105
  br label %180

180:                                              ; preds = %170, %178, %176, %163
  %181 = phi i32 [ %150, %170 ], [ %179, %178 ], [ %150, %176 ], [ %150, %163 ]
  %182 = phi i32 [ %171, %170 ], [ %157, %178 ], [ %157, %176 ], [ %157, %163 ]
  %183 = phi i32 [ %156, %170 ], [ %156, %178 ], [ %177, %176 ], [ %156, %163 ]
  %184 = add nsw i32 %182, %183
  %185 = add nsw i32 %184, %181
  %186 = icmp eq i32 %185, 32768
  br i1 %186, label %188, label %187

187:                                              ; preds = %180
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #11
  unreachable

188:                                              ; preds = %180
  %189 = trunc i32 %183 to i16
  %190 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  store i16 %189, ptr %190, align 4, !tbaa !106
  %191 = trunc i32 %182 to i16
  %192 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  store i16 %191, ptr %192, align 2, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %194

193:                                              ; preds = %155, %145, %135, %125
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #11
  unreachable

194:                                              ; preds = %188, %115
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  br label %195

195:                                              ; preds = %194, %111
  call void @png_set_cHRM_fixed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #12
  br label %196

196:                                              ; preds = %110, %79, %38, %195, %72, %36, %32, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare i32 @png_XYZ_from_xy_checked(ptr noundef, ptr noundef, ptr noundef byval(%struct.png_xy) align 8) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_set_cHRM_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_sRGB(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [8 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %108

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #12
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #12
  %28 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %108

29:                                               ; preds = %22, %20
  %30 = icmp eq i32 %2, 1
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #12
  %32 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %108

33:                                               ; preds = %29
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 1) #14
  %34 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %108

36:                                               ; preds = %33
  %37 = load i8, ptr %4, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = icmp ugt i8 %37, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #12
  br label %108

41:                                               ; preds = %36
  br i1 %21, label %99, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !83
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  %49 = load i32, ptr %48, align 4, !tbaa !108
  %50 = add i32 %49, -46001
  %51 = icmp ult i32 %50, -1001
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  call void @png_warning_parameter_signed(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 5, i32 noundef %49) #12
  call void @png_formatted_warning(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  %53 = load i32, ptr %43, align 8, !tbaa !83
  br label %54

54:                                               ; preds = %42, %52, %47
  %55 = phi i32 [ %44, %42 ], [ %53, %52 ], [ %44, %47 ]
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %99, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %60 = load i32, ptr %59, align 8, !tbaa !109
  %61 = add i32 %60, -32271
  %62 = icmp ult i32 %61, -2001
  br i1 %62, label %98, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %65 = load i32, ptr %64, align 4, !tbaa !110
  %66 = add i32 %65, -33901
  %67 = icmp ult i32 %66, -2001
  br i1 %67, label %98, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %70 = load i32, ptr %69, align 8, !tbaa !111
  %71 = add i32 %70, -65001
  %72 = icmp ult i32 %71, -2001
  br i1 %72, label %98, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %75 = load i32, ptr %74, align 4, !tbaa !112
  %76 = add i32 %75, -34001
  %77 = icmp ult i32 %76, -2001
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %80 = load i32, ptr %79, align 8, !tbaa !113
  %81 = add i32 %80, -31001
  %82 = icmp ult i32 %81, -2001
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %85 = load i32, ptr %84, align 4, !tbaa !114
  %86 = add i32 %85, -61001
  %87 = icmp ult i32 %86, -2001
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %90 = load i32, ptr %89, align 8, !tbaa !115
  %91 = add i32 %90, -16001
  %92 = icmp ult i32 %91, -2001
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %95 = load i32, ptr %94, align 4, !tbaa !116
  %96 = add i32 %95, -7001
  %97 = icmp ult i32 %96, -2001
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88, %83, %78, %73, %68, %63, %58
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #12
  br label %99

99:                                               ; preds = %41, %93, %98, %54
  %100 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 120
  store i8 1, ptr %100, align 8, !tbaa !117
  %101 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 122
  %102 = load i8, ptr %101, align 2, !tbaa !91
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 123
  store i16 6968, ptr %105, align 4, !tbaa !106
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 124
  store i16 23434, ptr %106, align 2, !tbaa !107
  store i8 1, ptr %101, align 2, !tbaa !91
  br label %107

107:                                              ; preds = %104, %99
  call void @png_set_sRGB_gAMA_and_cHRM(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %38) #12
  br label %108

108:                                              ; preds = %33, %107, %40, %31, %27, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_sRGB_gAMA_and_cHRM(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca [8 x [32 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %101

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #12
  %20 = load i32, ptr %6, align 4, !tbaa !48
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ %7, %16 ]
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = icmp eq ptr %1, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !83
  %30 = and i32 %29, 6144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %21
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.51) #12
  %33 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %101

34:                                               ; preds = %27, %25
  %35 = or disjoint i32 %22, 16384
  store i32 %35, ptr %6, align 4, !tbaa !48
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %37) #12
  %38 = add i32 %2, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %39) #12
  store ptr %40, ptr %36, align 8, !tbaa !59
  %41 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %40, i64 noundef %41) #14
  %42 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %43 = icmp eq i32 %42, 0
  %44 = load ptr, ptr %36, align 8, !tbaa !59
  br i1 %43, label %46, label %45

45:                                               ; preds = %34
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %44) #12
  store ptr null, ptr %36, align 8, !tbaa !59
  br label %101

46:                                               ; preds = %34
  %47 = getelementptr inbounds i8, ptr %44, i64 %41
  store i8 0, ptr %47, align 1, !tbaa !34
  %48 = load ptr, ptr %36, align 8, !tbaa !59
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %48, %46 ], [ %53, %49 ]
  %51 = load i8, ptr %50, align 1, !tbaa !34
  %52 = icmp eq i8 %51, 0
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  br i1 %52, label %54, label %49, !llvm.loop !118

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %48, i64 %41
  %56 = getelementptr inbounds i8, ptr %55, i64 -1
  %57 = icmp ult ptr %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @png_free(ptr noundef %0, ptr noundef %48) #12
  store ptr null, ptr %36, align 8, !tbaa !59
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.52) #12
  br label %101

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %50, i64 2
  %61 = load i8, ptr %53, align 1, !tbaa !34
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.53) #12
  %64 = load ptr, ptr %36, align 8, !tbaa !59
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi ptr [ %64, %63 ], [ %48, %59 ]
  %67 = ptrtoint ptr %60 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  call void @png_decompress_chunk(ptr noundef %0, i32 noundef 0, i64 noundef %41, i64 noundef %69, ptr noundef nonnull %4) #14
  %70 = load i64, ptr %4, align 8, !tbaa !61
  %71 = sub i64 %70, %69
  %72 = icmp ugt i64 %69, %70
  %73 = icmp ult i64 %71, 4
  %74 = or i1 %72, %73
  %75 = load ptr, ptr %36, align 8, !tbaa !59
  br i1 %74, label %76, label %77

76:                                               ; preds = %65
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %75) #12
  store ptr null, ptr %36, align 8, !tbaa !59
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.54) #12
  br label %101

77:                                               ; preds = %65
  %78 = getelementptr inbounds i8, ptr %75, i64 %69
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = zext i8 %79 to i32
  %81 = shl nuw i32 %80, 24
  %82 = getelementptr inbounds i8, ptr %78, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !34
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or disjoint i32 %85, %81
  %87 = getelementptr inbounds i8, ptr %78, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !34
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or disjoint i32 %86, %90
  %92 = getelementptr inbounds i8, ptr %78, i64 3
  %93 = load i8, ptr %92, align 1, !tbaa !34
  %94 = zext i8 %93 to i32
  %95 = or disjoint i32 %91, %94
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %71, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %75) #12
  store ptr null, ptr %36, align 8, !tbaa !59
  call void @png_warning_parameter_unsigned(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i64 noundef %96) #12
  call void @png_warning_parameter_unsigned(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 1, i64 noundef %71) #12
  call void @png_formatted_warning(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.55) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  br label %101

99:                                               ; preds = %77
  tail call void @png_set_iCCP(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %75, i32 noundef 0, ptr noundef nonnull %78, i32 noundef %95) #12
  %100 = load ptr, ptr %36, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %100) #12
  store ptr null, ptr %36, align 8, !tbaa !59
  br label %101

101:                                              ; preds = %99, %98, %76, %58, %45, %32, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_warning_parameter_unsigned(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_set_iCCP(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_sPLT(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.png_sPLT_struct, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %6 = load i32, ptr %5, align 4, !tbaa !119
  switch i32 %6, label %9 [
    i32 0, label %14
    i32 1, label %7
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %147

9:                                                ; preds = %3
  %10 = add i32 %6, -1
  store i32 %10, ptr %5, align 4, !tbaa !119
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #12
  %13 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %147

14:                                               ; preds = %3, %9
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #11
  unreachable

20:                                               ; preds = %14
  %21 = and i32 %16, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.58) #12
  %24 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %147

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %27) #12
  %28 = add i32 %2, 1
  %29 = zext i32 %28 to i64
  %30 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %29) #12
  store ptr %30, ptr %26, align 8, !tbaa !59
  %31 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %30, i64 noundef %31) #14
  %32 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %26, align 8, !tbaa !59
  br i1 %33, label %36, label %35

35:                                               ; preds = %25
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %34) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  br label %147

36:                                               ; preds = %25
  %37 = getelementptr inbounds i8, ptr %34, i64 %31
  store i8 0, ptr %37, align 1, !tbaa !34
  %38 = load ptr, ptr %26, align 8, !tbaa !59
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi ptr [ %38, %36 ], [ %43, %39 ]
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  br i1 %42, label %44, label %39, !llvm.loop !120

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, ptr %38, i64 %31
  %46 = getelementptr inbounds i8, ptr %45, i64 -2
  %47 = icmp ugt ptr %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @png_free(ptr noundef %0, ptr noundef %38) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.59) #12
  br label %147

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %40, i64 2
  %51 = load i8, ptr %43, align 1, !tbaa !34
  %52 = getelementptr inbounds %struct.png_sPLT_struct, ptr %4, i64 0, i32 1
  store i8 %51, ptr %52, align 8, !tbaa !121
  %53 = icmp eq i8 %51, 8
  %54 = select i1 %53, i32 6, i32 10
  %55 = ptrtoint ptr %50 to i64
  %56 = ptrtoint ptr %38 to i64
  %57 = sub i64 %56, %55
  %58 = trunc i64 %57 to i32
  %59 = add i32 %58, %2
  %60 = urem i32 %59, %54
  %61 = udiv i32 %59, %54
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %49
  tail call void @png_free(ptr noundef %0, ptr noundef %38) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.60) #12
  br label %147

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.png_sPLT_struct, ptr %4, i64 0, i32 3
  store i32 %61, ptr %65, align 8, !tbaa !123
  %66 = zext nneg i32 %61 to i64
  %67 = mul nuw nsw i64 %66, 10
  %68 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %67) #12
  %69 = getelementptr inbounds %struct.png_sPLT_struct, ptr %4, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !124
  %70 = icmp eq ptr %68, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = icmp ugt i32 %54, %59
  br i1 %72, label %143, label %74

73:                                               ; preds = %64
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.62) #12
  br label %147

74:                                               ; preds = %71, %128
  %75 = phi i64 [ %141, %128 ], [ 0, %71 ]
  %76 = phi ptr [ %140, %128 ], [ %50, %71 ]
  %77 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75
  br i1 %53, label %78, label %93

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %76, i64 1
  %80 = load i8, ptr %76, align 1, !tbaa !34
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %77, align 2, !tbaa !125
  %82 = getelementptr inbounds i8, ptr %76, i64 2
  %83 = load i8, ptr %79, align 1, !tbaa !34
  %84 = zext i8 %83 to i16
  %85 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75, i32 1
  store i16 %84, ptr %85, align 2, !tbaa !127
  %86 = getelementptr inbounds i8, ptr %76, i64 3
  %87 = load i8, ptr %82, align 1, !tbaa !34
  %88 = zext i8 %87 to i16
  %89 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75, i32 2
  store i16 %88, ptr %89, align 2, !tbaa !128
  %90 = getelementptr inbounds i8, ptr %76, i64 4
  %91 = load i8, ptr %86, align 1, !tbaa !34
  %92 = zext i8 %91 to i16
  br label %128

93:                                               ; preds = %74
  %94 = load i8, ptr %76, align 1, !tbaa !34
  %95 = zext i8 %94 to i16
  %96 = shl nuw i16 %95, 8
  %97 = getelementptr inbounds i8, ptr %76, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !34
  %99 = zext i8 %98 to i16
  %100 = or disjoint i16 %96, %99
  store i16 %100, ptr %77, align 2, !tbaa !125
  %101 = getelementptr inbounds i8, ptr %76, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !34
  %103 = zext i8 %102 to i16
  %104 = shl nuw i16 %103, 8
  %105 = getelementptr inbounds i8, ptr %76, i64 3
  %106 = load i8, ptr %105, align 1, !tbaa !34
  %107 = zext i8 %106 to i16
  %108 = or disjoint i16 %104, %107
  %109 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75, i32 1
  store i16 %108, ptr %109, align 2, !tbaa !127
  %110 = getelementptr inbounds i8, ptr %76, i64 4
  %111 = load i8, ptr %110, align 1, !tbaa !34
  %112 = zext i8 %111 to i16
  %113 = shl nuw i16 %112, 8
  %114 = getelementptr inbounds i8, ptr %76, i64 5
  %115 = load i8, ptr %114, align 1, !tbaa !34
  %116 = zext i8 %115 to i16
  %117 = or disjoint i16 %113, %116
  %118 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75, i32 2
  store i16 %117, ptr %118, align 2, !tbaa !128
  %119 = getelementptr inbounds i8, ptr %76, i64 6
  %120 = load i8, ptr %119, align 1, !tbaa !34
  %121 = zext i8 %120 to i16
  %122 = shl nuw i16 %121, 8
  %123 = getelementptr inbounds i8, ptr %76, i64 7
  %124 = load i8, ptr %123, align 1, !tbaa !34
  %125 = zext i8 %124 to i16
  %126 = or disjoint i16 %122, %125
  %127 = getelementptr inbounds i8, ptr %76, i64 8
  br label %128

128:                                              ; preds = %93, %78
  %129 = phi i16 [ %92, %78 ], [ %126, %93 ]
  %130 = phi ptr [ %90, %78 ], [ %127, %93 ]
  %131 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75, i32 3
  store i16 %129, ptr %131, align 2
  %132 = load i8, ptr %130, align 1, !tbaa !34
  %133 = zext i8 %132 to i16
  %134 = shl nuw i16 %133, 8
  %135 = getelementptr inbounds i8, ptr %130, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = zext i8 %136 to i16
  %138 = or disjoint i16 %134, %137
  %139 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %68, i64 %75, i32 4
  store i16 %138, ptr %139, align 2, !tbaa !129
  %140 = getelementptr inbounds i8, ptr %130, i64 2
  %141 = add nuw nsw i64 %75, 1
  %142 = icmp eq i64 %141, %66
  br i1 %142, label %143, label %74, !llvm.loop !130

143:                                              ; preds = %128, %71
  %144 = load ptr, ptr %26, align 8, !tbaa !59
  store ptr %144, ptr %4, align 8, !tbaa !131
  call void @png_set_sPLT(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #12
  %145 = load ptr, ptr %26, align 8, !tbaa !59
  call void @png_free(ptr noundef %0, ptr noundef %145) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  %146 = load ptr, ptr %69, align 8, !tbaa !124
  call void @png_free(ptr noundef %0, ptr noundef %146) #12
  br label %147

147:                                              ; preds = %143, %73, %63, %48, %35, %23, %12, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_sPLT(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_tRNS(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [2 x i8], align 1
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.63) #11
  unreachable

12:                                               ; preds = %3
  %13 = and i32 %8, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.64) #12
  %16 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %107

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.65) #12
  %25 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %107

26:                                               ; preds = %19, %17
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %28 = load i8, ptr %27, align 1, !tbaa !72
  switch i8 %28, label %96 [
    i8 0, label %29
    i8 2, label %43
    i8 3, label %75
  ]

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %30 = icmp eq i32 %2, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 2) #14
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 1, ptr %32, align 8, !tbaa !86
  %33 = load i8, ptr %5, align 1, !tbaa !34
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr inbounds i8, ptr %5, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i16
  %39 = or disjoint i16 %35, %38
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 4
  store i16 %39, ptr %40, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  br label %98

41:                                               ; preds = %29
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #12
  %42 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  br label %107

43:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #13
  %44 = icmp eq i32 %2, 6
  br i1 %44, label %45, label %73

45:                                               ; preds = %43
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 6) #14
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 1, ptr %46, align 8, !tbaa !86
  %47 = load i8, ptr %6, align 1, !tbaa !34
  %48 = zext i8 %47 to i16
  %49 = shl nuw i16 %48, 8
  %50 = getelementptr inbounds i8, ptr %6, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !34
  %52 = zext i8 %51 to i16
  %53 = or disjoint i16 %49, %52
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 1
  store i16 %53, ptr %54, align 2, !tbaa !133
  %55 = getelementptr inbounds i8, ptr %6, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !34
  %57 = zext i8 %56 to i16
  %58 = shl nuw i16 %57, 8
  %59 = getelementptr inbounds i8, ptr %6, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = zext i8 %60 to i16
  %62 = or disjoint i16 %58, %61
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 2
  store i16 %62, ptr %63, align 4, !tbaa !134
  %64 = getelementptr inbounds i8, ptr %6, i64 4
  %65 = load i8, ptr %64, align 1, !tbaa !34
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = getelementptr inbounds i8, ptr %6, i64 5
  %69 = load i8, ptr %68, align 1, !tbaa !34
  %70 = zext i8 %69 to i16
  %71 = or disjoint i16 %67, %70
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86, i32 3
  store i16 %71, ptr %72, align 2, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  br label %98

73:                                               ; preds = %43
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #12
  %74 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  br label %107

75:                                               ; preds = %26
  %76 = and i32 %8, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.67) #12
  br label %79

79:                                               ; preds = %78, %75
  %80 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %81 = load i16, ptr %80, align 8, !tbaa !136
  %82 = zext i16 %81 to i32
  %83 = icmp ult i32 %82, %2
  %84 = icmp ugt i32 %2, 256
  %85 = or i1 %84, %83
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #12
  %87 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %107

88:                                               ; preds = %79
  %89 = icmp eq i32 %2, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.68) #12
  %91 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  br label %107

92:                                               ; preds = %88
  %93 = zext nneg i32 %2 to i64
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %93) #14
  %94 = trunc i32 %2 to i16
  %95 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  store i16 %94, ptr %95, align 8, !tbaa !86
  br label %98

96:                                               ; preds = %26
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #12
  %97 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %107

98:                                               ; preds = %45, %31, %92
  %99 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  br i1 %100, label %103, label %102

102:                                              ; preds = %98
  store i16 0, ptr %101, align 8, !tbaa !86
  br label %107

103:                                              ; preds = %98
  %104 = load i16, ptr %101, align 8, !tbaa !86
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 86
  call void @png_set_tRNS(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %105, ptr noundef nonnull %106) #12
  br label %107

107:                                              ; preds = %73, %41, %103, %102, %96, %90, %86, %24, %15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_tRNS(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_bKGD(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.png_color_16_struct, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %118

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %18 = load i8, ptr %17, align 1, !tbaa !72
  %19 = icmp eq i8 %18, 3
  %20 = and i32 %7, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %21, %19
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #12
  %24 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %118

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #12
  %33 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %118

34:                                               ; preds = %25, %27
  %35 = and i8 %18, 2
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i64 2, i64 6
  %38 = select i1 %19, i64 1, i64 %37
  %39 = zext i32 %2 to i64
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.74) #12
  %42 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %118

43:                                               ; preds = %34
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %38) #14
  %44 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %118

46:                                               ; preds = %43
  %47 = load i8, ptr %17, align 1, !tbaa !72
  %48 = icmp eq i8 %47, 3
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load i8, ptr %4, align 1, !tbaa !34
  store i8 %50, ptr %5, align 2, !tbaa !137
  br i1 %26, label %75, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %53 = load i16, ptr %52, align 8, !tbaa !138
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = zext i8 %50 to i16
  %57 = icmp ugt i16 %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.75) #12
  br label %118

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 47
  %61 = load ptr, ptr %60, align 8, !tbaa !139
  %62 = zext i8 %50 to i64
  %63 = getelementptr inbounds %struct.png_color_struct, ptr %61, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !78
  %65 = zext i8 %64 to i16
  %66 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 %65, ptr %66, align 2, !tbaa !140
  %67 = getelementptr inbounds %struct.png_color_struct, ptr %61, i64 %62, i32 1
  %68 = load i8, ptr %67, align 1, !tbaa !80
  %69 = zext i8 %68 to i16
  %70 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !141
  %71 = getelementptr inbounds %struct.png_color_struct, ptr %61, i64 %62, i32 2
  %72 = load i8, ptr %71, align 1, !tbaa !81
  %73 = zext i8 %72 to i16
  %74 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 %73, ptr %74, align 2, !tbaa !142
  br label %79

75:                                               ; preds = %51, %49
  %76 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 0, ptr %76, align 2, !tbaa !142
  %77 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 0, ptr %77, align 2, !tbaa !141
  %78 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 0, ptr %78, align 2, !tbaa !140
  br label %79

79:                                               ; preds = %75, %59
  %80 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 4
  store i16 0, ptr %80, align 2, !tbaa !143
  br label %117

81:                                               ; preds = %46
  %82 = and i8 %47, 2
  %83 = icmp eq i8 %82, 0
  store i8 0, ptr %5, align 2, !tbaa !137
  %84 = load i8, ptr %4, align 1, !tbaa !34
  %85 = zext i8 %84 to i16
  %86 = shl nuw i16 %85, 8
  %87 = getelementptr inbounds i8, ptr %4, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !34
  %89 = zext i8 %88 to i16
  %90 = or disjoint i16 %86, %89
  br i1 %83, label %91, label %96

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 4
  store i16 %90, ptr %92, align 2, !tbaa !143
  %93 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 %90, ptr %93, align 2, !tbaa !142
  %94 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 %90, ptr %94, align 2, !tbaa !141
  %95 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 %90, ptr %95, align 2, !tbaa !140
  br label %117

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 1
  store i16 %90, ptr %97, align 2, !tbaa !140
  %98 = getelementptr inbounds i8, ptr %4, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !34
  %100 = zext i8 %99 to i16
  %101 = shl nuw i16 %100, 8
  %102 = getelementptr inbounds i8, ptr %4, i64 3
  %103 = load i8, ptr %102, align 1, !tbaa !34
  %104 = zext i8 %103 to i16
  %105 = or disjoint i16 %101, %104
  %106 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 2
  store i16 %105, ptr %106, align 2, !tbaa !141
  %107 = getelementptr inbounds i8, ptr %4, i64 4
  %108 = load i8, ptr %107, align 1, !tbaa !34
  %109 = zext i8 %108 to i16
  %110 = shl nuw i16 %109, 8
  %111 = getelementptr inbounds i8, ptr %4, i64 5
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = zext i8 %112 to i16
  %114 = or disjoint i16 %110, %113
  %115 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 3
  store i16 %114, ptr %115, align 2, !tbaa !142
  %116 = getelementptr inbounds %struct.png_color_16_struct, ptr %5, i64 0, i32 4
  store i16 0, ptr %116, align 2, !tbaa !143
  br label %117

117:                                              ; preds = %91, %96, %79
  call void @png_set_bKGD(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #12
  br label %118

118:                                              ; preds = %43, %117, %58, %41, %32, %23, %14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_bKGD(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_hIST(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i16], align 16
  %5 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.76) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.77) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %61

16:                                               ; preds = %11
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.78) #12
  %20 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %61

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.79) #12
  %29 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %61

30:                                               ; preds = %21, %23
  %31 = icmp ugt i32 %2, 512
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %34 = load i16, ptr %33, align 8, !tbaa !136
  %35 = zext i16 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %40, label %38

38:                                               ; preds = %32, %30
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.80) #12
  %39 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %61

40:                                               ; preds = %32
  %41 = icmp ult i32 %2, 2
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = lshr i32 %2, 1
  %44 = getelementptr inbounds i8, ptr %5, i64 1
  %45 = zext nneg i32 %43 to i64
  br label %46

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %55, %46 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  call void @png_crc_read(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 2) #14
  %48 = load i8, ptr %5, align 1, !tbaa !34
  %49 = zext i8 %48 to i16
  %50 = shl nuw i16 %49, 8
  %51 = load i8, ptr %44, align 1, !tbaa !34
  %52 = zext i8 %51 to i16
  %53 = or disjoint i16 %50, %52
  %54 = getelementptr inbounds [256 x i16], ptr %4, i64 0, i64 %47
  store i16 %53, ptr %54, align 2, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %55 = add nuw nsw i64 %47, 1
  %56 = icmp eq i64 %55, %45
  br i1 %56, label %57, label %46, !llvm.loop !145

57:                                               ; preds = %46, %40
  %58 = call i32 @png_crc_finish(ptr noundef %0, i32 noundef 0) #14, !range !56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @png_set_hIST(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #12
  br label %61

61:                                               ; preds = %57, %60, %38, %28, %19, %14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_hIST(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_pHYs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.81) #11
  unreachable

10:                                               ; preds = %3
  %11 = and i32 %6, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.82) #12
  %14 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %70

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.83) #12
  %23 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %70

24:                                               ; preds = %17, %15
  %25 = icmp eq i32 %2, 9
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.84) #12
  %27 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %70

28:                                               ; preds = %24
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 9) #14
  %29 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load i8, ptr %4, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr inbounds i8, ptr %4, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or disjoint i32 %38, %34
  %40 = getelementptr inbounds i8, ptr %4, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or disjoint i32 %39, %43
  %45 = getelementptr inbounds i8, ptr %4, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %44, %47
  %49 = getelementptr inbounds i8, ptr %4, i64 4
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = getelementptr inbounds i8, ptr %4, i64 5
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or disjoint i32 %56, %52
  %58 = getelementptr inbounds i8, ptr %4, i64 6
  %59 = load i8, ptr %58, align 1, !tbaa !34
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or disjoint i32 %57, %61
  %63 = getelementptr inbounds i8, ptr %4, i64 7
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = zext i8 %64 to i32
  %66 = or disjoint i32 %62, %65
  %67 = getelementptr inbounds [9 x i8], ptr %4, i64 0, i64 8
  %68 = load i8, ptr %67, align 1, !tbaa !34
  %69 = zext i8 %68 to i32
  call void @png_set_pHYs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %48, i32 noundef %66, i32 noundef %69) #12
  br label %70

70:                                               ; preds = %28, %31, %26, %22, %13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_pHYs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_oFFs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.85) #11
  unreachable

10:                                               ; preds = %3
  %11 = and i32 %6, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.86) #12
  %14 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %110

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.87) #12
  %23 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %110

24:                                               ; preds = %17, %15
  %25 = icmp eq i32 %2, 9
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) #12
  %27 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %110

28:                                               ; preds = %24
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 9) #14
  %29 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %28
  %32 = load i8, ptr %4, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = icmp sgt i8 %32, -1
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %4, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = shl nuw i32 %33, 24
  %41 = getelementptr inbounds i8, ptr %4, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = getelementptr inbounds i8, ptr %4, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %39, %40
  %49 = or disjoint i32 %48, %44
  %50 = or disjoint i32 %49, %47
  br label %67

51:                                               ; preds = %31
  %52 = shl nuw nsw i32 %33, 24
  %53 = getelementptr inbounds i8, ptr %4, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or disjoint i32 %56, %52
  %58 = getelementptr inbounds i8, ptr %4, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !34
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or disjoint i32 %57, %61
  %63 = getelementptr inbounds i8, ptr %4, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = zext i8 %64 to i32
  %66 = or disjoint i32 %62, %65
  br label %67

67:                                               ; preds = %51, %35
  %68 = phi i32 [ %50, %35 ], [ %66, %51 ]
  %69 = getelementptr inbounds i8, ptr %4, i64 4
  %70 = load i8, ptr %69, align 1, !tbaa !34
  %71 = zext i8 %70 to i32
  %72 = icmp sgt i8 %70, -1
  br i1 %72, label %89, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds i8, ptr %4, i64 5
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 16
  %78 = shl nuw i32 %71, 24
  %79 = getelementptr inbounds i8, ptr %4, i64 6
  %80 = load i8, ptr %79, align 1, !tbaa !34
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = getelementptr inbounds i8, ptr %4, i64 7
  %84 = load i8, ptr %83, align 1, !tbaa !34
  %85 = zext i8 %84 to i32
  %86 = or disjoint i32 %77, %78
  %87 = or disjoint i32 %86, %82
  %88 = or disjoint i32 %87, %85
  br label %105

89:                                               ; preds = %67
  %90 = shl nuw nsw i32 %71, 24
  %91 = getelementptr inbounds i8, ptr %4, i64 5
  %92 = load i8, ptr %91, align 1, !tbaa !34
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or disjoint i32 %94, %90
  %96 = getelementptr inbounds i8, ptr %4, i64 6
  %97 = load i8, ptr %96, align 1, !tbaa !34
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = or disjoint i32 %95, %99
  %101 = getelementptr inbounds i8, ptr %4, i64 7
  %102 = load i8, ptr %101, align 1, !tbaa !34
  %103 = zext i8 %102 to i32
  %104 = or disjoint i32 %100, %103
  br label %105

105:                                              ; preds = %89, %73
  %106 = phi i32 [ %88, %73 ], [ %104, %89 ]
  %107 = getelementptr inbounds [9 x i8], ptr %4, i64 0, i64 8
  %108 = load i8, ptr %107, align 1, !tbaa !34
  %109 = zext i8 %108 to i32
  call void @png_set_oFFs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %68, i32 noundef %106, i32 noundef %109) #12
  br label %110

110:                                              ; preds = %28, %105, %26, %22, %13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_oFFs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #11
  unreachable

9:                                                ; preds = %3
  %10 = and i32 %5, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #12
  %13 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %189

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #12
  %22 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %189

23:                                               ; preds = %16, %14
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %25) #12
  %26 = add i32 %2, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %27) #12
  store ptr %28, ptr %24, align 8, !tbaa !59
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.92) #12
  br label %189

31:                                               ; preds = %23
  %32 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %28, i64 noundef %32) #14
  %33 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %24, align 8, !tbaa !59
  br i1 %34, label %37, label %36

36:                                               ; preds = %31
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %35) #12
  store ptr null, ptr %24, align 8, !tbaa !59
  br label %189

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %35, i64 %32
  store i8 0, ptr %38, align 1, !tbaa !34
  %39 = load ptr, ptr %24, align 8, !tbaa !59
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %39, %37 ], [ %44, %40 ]
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  br i1 %43, label %45, label %40, !llvm.loop !146

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %39, i64 %32
  %47 = getelementptr inbounds i8, ptr %41, i64 12
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.93) #12
  %50 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %50) #12
  store ptr null, ptr %24, align 8, !tbaa !59
  br label %189

51:                                               ; preds = %45
  %52 = load i8, ptr %44, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = icmp sgt i8 %52, -1
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %41, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = shl nuw i32 %53, 24
  %61 = getelementptr inbounds i8, ptr %41, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !34
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = getelementptr inbounds i8, ptr %41, i64 4
  %66 = load i8, ptr %65, align 1, !tbaa !34
  %67 = zext i8 %66 to i32
  %68 = or disjoint i32 %59, %60
  %69 = or disjoint i32 %68, %64
  %70 = or disjoint i32 %69, %67
  br label %87

71:                                               ; preds = %51
  %72 = shl nuw nsw i32 %53, 24
  %73 = getelementptr inbounds i8, ptr %41, i64 2
  %74 = load i8, ptr %73, align 1, !tbaa !34
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = or disjoint i32 %76, %72
  %78 = getelementptr inbounds i8, ptr %41, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = or disjoint i32 %77, %81
  %83 = getelementptr inbounds i8, ptr %41, i64 4
  %84 = load i8, ptr %83, align 1, !tbaa !34
  %85 = zext i8 %84 to i32
  %86 = or disjoint i32 %82, %85
  br label %87

87:                                               ; preds = %71, %55
  %88 = phi i32 [ %70, %55 ], [ %86, %71 ]
  %89 = getelementptr inbounds i8, ptr %41, i64 5
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = zext i8 %90 to i32
  %92 = icmp sgt i8 %90, -1
  br i1 %92, label %109, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, ptr %41, i64 6
  %95 = load i8, ptr %94, align 1, !tbaa !34
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = shl nuw i32 %91, 24
  %99 = getelementptr inbounds i8, ptr %41, i64 7
  %100 = load i8, ptr %99, align 1, !tbaa !34
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = getelementptr inbounds i8, ptr %41, i64 8
  %104 = load i8, ptr %103, align 1, !tbaa !34
  %105 = zext i8 %104 to i32
  %106 = or disjoint i32 %97, %98
  %107 = or disjoint i32 %106, %102
  %108 = or disjoint i32 %107, %105
  br label %125

109:                                              ; preds = %87
  %110 = shl nuw nsw i32 %91, 24
  %111 = getelementptr inbounds i8, ptr %41, i64 6
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 16
  %115 = or disjoint i32 %114, %110
  %116 = getelementptr inbounds i8, ptr %41, i64 7
  %117 = load i8, ptr %116, align 1, !tbaa !34
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or disjoint i32 %115, %119
  %121 = getelementptr inbounds i8, ptr %41, i64 8
  %122 = load i8, ptr %121, align 1, !tbaa !34
  %123 = zext i8 %122 to i32
  %124 = or disjoint i32 %120, %123
  br label %125

125:                                              ; preds = %109, %93
  %126 = phi i32 [ %108, %93 ], [ %124, %109 ]
  %127 = getelementptr inbounds i8, ptr %41, i64 9
  %128 = load i8, ptr %127, align 1, !tbaa !34
  %129 = getelementptr inbounds i8, ptr %41, i64 10
  %130 = load i8, ptr %129, align 1, !tbaa !34
  %131 = getelementptr inbounds i8, ptr %41, i64 11
  %132 = zext i8 %128 to i32
  %133 = icmp eq i8 %128, 0
  %134 = zext i8 %130 to i32
  %135 = icmp ne i8 %130, 2
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %146, label %137

137:                                              ; preds = %125
  %138 = icmp ne i8 %130, 3
  %139 = add i8 %128, -1
  %140 = icmp ult i8 %139, 2
  %141 = select i1 %140, i1 %138, i1 false
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = icmp eq i8 %128, 3
  %144 = icmp ne i8 %130, 4
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %146, label %148

146:                                              ; preds = %142, %137, %125
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.94) #12
  %147 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %147) #12
  store ptr null, ptr %24, align 8, !tbaa !59
  br label %189

148:                                              ; preds = %142
  %149 = icmp ugt i8 %128, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.95) #12
  br label %151

151:                                              ; preds = %148, %150
  br label %152

152:                                              ; preds = %151, %152
  %153 = phi ptr [ %156, %152 ], [ %131, %151 ]
  %154 = load i8, ptr %153, align 1, !tbaa !34
  %155 = icmp eq i8 %154, 0
  %156 = getelementptr inbounds i8, ptr %153, i64 1
  br i1 %155, label %157, label %152, !llvm.loop !147

157:                                              ; preds = %152
  %158 = zext i8 %130 to i64
  %159 = shl nuw nsw i64 %158, 3
  %160 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %159) #12
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = icmp eq i8 %130, 0
  br i1 %163, label %186, label %164

164:                                              ; preds = %162
  %165 = zext i8 %130 to i64
  br label %168

166:                                              ; preds = %157
  %167 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %167) #12
  store ptr null, ptr %24, align 8, !tbaa !59
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.96) #12
  br label %189

168:                                              ; preds = %164, %183
  %169 = phi i64 [ 0, %164 ], [ %184, %183 ]
  %170 = phi ptr [ %153, %164 ], [ %175, %183 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 1
  %172 = getelementptr inbounds ptr, ptr %160, i64 %169
  store ptr %171, ptr %172, align 8, !tbaa !148
  %173 = icmp ugt ptr %171, %46
  br i1 %173, label %181, label %174

174:                                              ; preds = %168, %178
  %175 = phi ptr [ %179, %178 ], [ %171, %168 ]
  %176 = load i8, ptr %175, align 1, !tbaa !34
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds i8, ptr %175, i64 1
  %180 = icmp ugt ptr %179, %46
  br i1 %180, label %181, label %174, !llvm.loop !149

181:                                              ; preds = %168, %178
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.93) #12
  %182 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %182) #12
  store ptr null, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %160) #12
  br label %189

183:                                              ; preds = %174
  %184 = add nuw nsw i64 %169, 1
  %185 = icmp eq i64 %184, %165
  br i1 %185, label %186, label %168, !llvm.loop !150

186:                                              ; preds = %183, %162
  %187 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_set_pCAL(ptr noundef %0, ptr noundef %1, ptr noundef %187, i32 noundef %88, i32 noundef %126, i32 noundef %132, i32 noundef %134, ptr noundef nonnull %131, ptr noundef nonnull %160) #12
  %188 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %188) #12
  store ptr null, ptr %24, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %160) #12
  br label %189

189:                                              ; preds = %186, %181, %166, %146, %49, %36, %30, %21, %12
  ret void
}

; Function Attrs: optsize
declare void @png_set_pCAL(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_sCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.97) #11
  unreachable

11:                                               ; preds = %3
  %12 = and i32 %7, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.98) #12
  %15 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %89

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.99) #12
  %24 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %89

25:                                               ; preds = %18, %16
  %26 = icmp ult i32 %2, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.100) #12
  %28 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %89

29:                                               ; preds = %25
  %30 = add i32 %2, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %31) #12
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 141
  store ptr %32, ptr %33, align 8, !tbaa !59
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.101) #12
  %36 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %89

37:                                               ; preds = %29
  %38 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef %38) #14
  %39 = load ptr, ptr %33, align 8, !tbaa !59
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  store i8 0, ptr %40, align 1, !tbaa !34
  %41 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr %33, align 8, !tbaa !59
  br i1 %42, label %45, label %44

44:                                               ; preds = %37
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %43) #12
  store ptr null, ptr %33, align 8, !tbaa !59
  br label %89

45:                                               ; preds = %37
  %46 = load i8, ptr %43, align 1, !tbaa !34
  %47 = add i8 %46, -1
  %48 = icmp ult i8 %47, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.102) #12
  %50 = load ptr, ptr %33, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %50) #12
  store ptr null, ptr %33, align 8, !tbaa !59
  br label %89

51:                                               ; preds = %45
  store i64 1, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %5, align 4, !tbaa !105
  %52 = call i32 @png_check_fp_number(ptr noundef nonnull %43, i64 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %4, align 8, !tbaa !61
  %56 = icmp ult i64 %55, %38
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load ptr, ptr %33, align 8, !tbaa !59
  %59 = add nuw nsw i64 %55, 1
  store i64 %59, ptr %4, align 8, !tbaa !61
  %60 = getelementptr inbounds i8, ptr %58, i64 %55
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57, %54, %51
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.103) #12
  br label %87

64:                                               ; preds = %57
  %65 = load i32, ptr %5, align 4, !tbaa !105
  %66 = and i32 %65, 392
  %67 = icmp eq i32 %66, 264
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #12
  br label %87

69:                                               ; preds = %64
  store i32 0, ptr %5, align 4, !tbaa !105
  %70 = call i32 @png_check_fp_number(ptr noundef nonnull %58, i64 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %71 = icmp ne i32 %70, 0
  %72 = load i64, ptr %4, align 8
  %73 = icmp eq i64 %72, %38
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.105) #12
  br label %87

76:                                               ; preds = %69
  %77 = load i32, ptr %5, align 4, !tbaa !105
  %78 = and i32 %77, 392
  %79 = icmp eq i32 %78, 264
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.106) #12
  br label %87

81:                                               ; preds = %76
  %82 = load ptr, ptr %33, align 8, !tbaa !59
  %83 = load i8, ptr %82, align 1, !tbaa !34
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds i8, ptr %82, i64 1
  %86 = getelementptr inbounds i8, ptr %82, i64 %59
  call void @png_set_sCAL_s(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %84, ptr noundef nonnull %85, ptr noundef nonnull %86) #12
  br label %87

87:                                               ; preds = %75, %81, %80, %68, %63
  %88 = load ptr, ptr %33, align 8, !tbaa !59
  call void @png_free(ptr noundef nonnull %0, ptr noundef %88) #12
  store ptr null, ptr %33, align 8, !tbaa !59
  br label %89

89:                                               ; preds = %87, %49, %44, %35, %27, %23, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare i32 @png_check_fp_number(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_set_sCAL_s(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_tIME(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [7 x i8], align 1
  %5 = alloca %struct.png_time_struct, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.107) #11
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.108) #12
  %19 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %46

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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.109) #12
  %28 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %46

29:                                               ; preds = %25
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 7) #14
  %30 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 6
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 5
  store i8 %34, ptr %35, align 2, !tbaa !151
  %36 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  %37 = getelementptr inbounds %struct.png_time_struct, ptr %5, i64 0, i32 1
  %38 = load <4 x i8>, ptr %36, align 1, !tbaa !34
  store <4 x i8> %38, ptr %37, align 2, !tbaa !34
  %39 = load i8, ptr %4, align 1, !tbaa !34
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = getelementptr inbounds i8, ptr %4, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = zext i8 %43 to i16
  %45 = or disjoint i16 %41, %44
  store i16 %45, ptr %5, align 2, !tbaa !152
  call void @png_set_tIME(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #12
  br label %46

46:                                               ; preds = %29, %32, %27, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @png_set_tIME(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_tEXt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !119
  switch i32 %5, label %8 [
    i32 0, label %13
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %63

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  store i32 %9, ptr %4, align 4, !tbaa !119
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.110) #12
  %12 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %63

13:                                               ; preds = %3, %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.111) #11
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
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %26) #12
  %27 = add i32 %2, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %28) #12
  store ptr %29, ptr %25, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.112) #12
  br label %63

32:                                               ; preds = %24
  %33 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef %33) #14
  %34 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %25, align 8, !tbaa !59
  br i1 %35, label %38, label %37

37:                                               ; preds = %32
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %36) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %63

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, ptr %36, i64 %33
  store i8 0, ptr %39, align 1, !tbaa !34
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi ptr [ %36, %38 ], [ %44, %40 ]
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  br i1 %43, label %45, label %40, !llvm.loop !153

45:                                               ; preds = %40
  %46 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 56) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.113) #12
  %49 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %49) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %63

50:                                               ; preds = %45
  %51 = icmp ne ptr %41, %39
  %52 = zext i1 %51 to i64
  %53 = getelementptr inbounds i8, ptr %41, i64 %52
  store i32 -1, ptr %46, align 8, !tbaa !154
  %54 = getelementptr inbounds %struct.png_text_struct, ptr %46, i64 0, i32 1
  store ptr %36, ptr %54, align 8, !tbaa !156
  %55 = getelementptr inbounds %struct.png_text_struct, ptr %46, i64 0, i32 4
  %56 = getelementptr inbounds %struct.png_text_struct, ptr %46, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  store ptr %53, ptr %56, align 8, !tbaa !157
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #15
  %58 = getelementptr inbounds %struct.png_text_struct, ptr %46, i64 0, i32 3
  store i64 %57, ptr %58, align 8, !tbaa !158
  %59 = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %46, i32 noundef 1) #12
  %60 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %60) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %46) #12
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.114) #12
  br label %63

63:                                               ; preds = %50, %62, %48, %37, %31, %11, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @png_set_text_2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_zTXt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %6 = load i32, ptr %5, align 4, !tbaa !119
  switch i32 %6, label %9 [
    i32 0, label %14
    i32 1, label %7
  ]

7:                                                ; preds = %3
  %8 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %80

9:                                                ; preds = %3
  %10 = add i32 %6, -1
  store i32 %10, ptr %5, align 4, !tbaa !119
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.115) #12
  %13 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %80

14:                                               ; preds = %3, %9
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.116) #11
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
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %27) #12
  %28 = add i32 %2, 1
  %29 = zext i32 %28 to i64
  %30 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %29) #12
  store ptr %30, ptr %26, align 8, !tbaa !59
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.117) #12
  br label %80

33:                                               ; preds = %25
  %34 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %30, i64 noundef %34) #14
  %35 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %26, align 8, !tbaa !59
  br i1 %36, label %39, label %38

38:                                               ; preds = %33
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %37) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  br label %80

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %37, i64 %34
  store i8 0, ptr %40, align 1, !tbaa !34
  %41 = load ptr, ptr %26, align 8, !tbaa !59
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %41, %39 ], [ %46, %42 ]
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  br i1 %45, label %47, label %42, !llvm.loop !159

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %41, i64 %34
  %49 = getelementptr inbounds i8, ptr %48, i64 -2
  %50 = icmp ult ptr %43, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.118) #12
  %52 = load ptr, ptr %26, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %52) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  br label %80

53:                                               ; preds = %47
  %54 = load i8, ptr %46, align 1, !tbaa !34
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.119) #12
  %57 = load ptr, ptr %26, align 8, !tbaa !59
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi ptr [ %57, %56 ], [ %41, %53 ]
  %60 = getelementptr inbounds i8, ptr %43, i64 2
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %59 to i64
  %63 = sub i64 %61, %62
  call void @png_decompress_chunk(ptr noundef %0, i32 noundef 0, i64 noundef %34, i64 noundef %63, ptr noundef nonnull %4) #14
  %64 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 56) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.120) #12
  %67 = load ptr, ptr %26, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %67) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  br label %80

68:                                               ; preds = %58
  store i32 0, ptr %64, align 8, !tbaa !154
  %69 = load ptr, ptr %26, align 8, !tbaa !59
  %70 = getelementptr inbounds %struct.png_text_struct, ptr %64, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !156
  %71 = getelementptr inbounds %struct.png_text_struct, ptr %64, i64 0, i32 4
  %72 = getelementptr inbounds i8, ptr %69, i64 %63
  %73 = getelementptr inbounds %struct.png_text_struct, ptr %64, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  store ptr %72, ptr %73, align 8, !tbaa !157
  %74 = load i64, ptr %4, align 8, !tbaa !61
  %75 = getelementptr inbounds %struct.png_text_struct, ptr %64, i64 0, i32 3
  store i64 %74, ptr %75, align 8, !tbaa !158
  %76 = tail call i32 @png_set_text_2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %64, i32 noundef 1) #12
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %64) #12
  %77 = load ptr, ptr %26, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %77) #12
  store ptr null, ptr %26, align 8, !tbaa !59
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.121) #11
  unreachable

80:                                               ; preds = %68, %66, %51, %38, %32, %12, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_iTXt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !119
  switch i32 %5, label %8 [
    i32 0, label %13
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %109

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  store i32 %9, ptr %4, align 4, !tbaa !119
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.122) #12
  %12 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %2) #14, !range !56
  br label %109

13:                                               ; preds = %3, %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.123) #11
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
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %26) #12
  %27 = add i32 %2, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %28) #12
  store ptr %29, ptr %25, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.124) #12
  br label %109

32:                                               ; preds = %24
  %33 = zext i32 %2 to i64
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %29, i64 noundef %33) #14
  %34 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %25, align 8, !tbaa !59
  br i1 %35, label %38, label %37

37:                                               ; preds = %32
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %36) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %109

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, ptr %36, i64 %33
  store i8 0, ptr %39, align 1, !tbaa !34
  %40 = load ptr, ptr %25, align 8, !tbaa !59
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %40, %38 ], [ %45, %41 ]
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds i8, ptr %42, i64 1
  br i1 %44, label %46, label %41, !llvm.loop !160

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %40, i64 %33
  %48 = getelementptr inbounds i8, ptr %47, i64 -3
  %49 = icmp ult ptr %45, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.125) #12
  %51 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %51) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %109

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %42, i64 2
  %54 = getelementptr inbounds i8, ptr %42, i64 3
  %55 = load i8, ptr %53, align 1, !tbaa !34
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8, ptr %45, align 1, !tbaa !34
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %52
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.126) #12
  %61 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %61) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %109

62:                                               ; preds = %57, %62
  %63 = phi ptr [ %66, %62 ], [ %54, %57 ]
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds i8, ptr %63, i64 1
  br i1 %65, label %67, label %62, !llvm.loop !161

67:                                               ; preds = %62
  %68 = icmp ult ptr %66, %47
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.125) #12
  %70 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %70) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %109

71:                                               ; preds = %67, %71
  %72 = phi ptr [ %75, %71 ], [ %66, %67 ]
  %73 = load i8, ptr %72, align 1, !tbaa !34
  %74 = icmp eq i8 %73, 0
  %75 = getelementptr inbounds i8, ptr %72, i64 1
  br i1 %74, label %76, label %71, !llvm.loop !162

76:                                               ; preds = %71
  %77 = icmp ult ptr %75, %47
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.127) #12
  %79 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %79) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %109

80:                                               ; preds = %76
  %81 = ptrtoint ptr %75 to i64
  %82 = ptrtoint ptr %40 to i64
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i8, ptr %40, i64 %83
  %85 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %84) #15
  %86 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef 56) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.128) #12
  %89 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %89) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  br label %109

90:                                               ; preds = %80
  store i32 1, ptr %86, align 8, !tbaa !154
  %91 = load ptr, ptr %25, align 8, !tbaa !59
  %92 = ptrtoint ptr %66 to i64
  %93 = sub i64 %92, %82
  %94 = getelementptr inbounds i8, ptr %91, i64 %93
  %95 = getelementptr inbounds %struct.png_text_struct, ptr %86, i64 0, i32 6
  store ptr %94, ptr %95, align 8, !tbaa !163
  %96 = ptrtoint ptr %54 to i64
  %97 = sub i64 %96, %82
  %98 = getelementptr inbounds i8, ptr %91, i64 %97
  %99 = getelementptr inbounds %struct.png_text_struct, ptr %86, i64 0, i32 5
  store ptr %98, ptr %99, align 8, !tbaa !164
  %100 = getelementptr inbounds %struct.png_text_struct, ptr %86, i64 0, i32 4
  store i64 %85, ptr %100, align 8, !tbaa !165
  %101 = getelementptr inbounds %struct.png_text_struct, ptr %86, i64 0, i32 3
  store i64 0, ptr %101, align 8, !tbaa !158
  %102 = getelementptr inbounds %struct.png_text_struct, ptr %86, i64 0, i32 1
  store ptr %91, ptr %102, align 8, !tbaa !156
  %103 = getelementptr inbounds i8, ptr %91, i64 %83
  %104 = getelementptr inbounds %struct.png_text_struct, ptr %86, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !157
  %105 = tail call i32 @png_set_text_2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %86, i32 noundef 1) #12
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %86) #12
  %106 = load ptr, ptr %25, align 8, !tbaa !59
  tail call void @png_free(ptr noundef %0, ptr noundef %106) #12
  store ptr null, ptr %25, align 8, !tbaa !59
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %90
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.129) #11
  unreachable

109:                                              ; preds = %90, %88, %78, %69, %60, %50, %37, %31, %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_handle_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 137
  %5 = load i32, ptr %4, align 4, !tbaa !119
  switch i32 %5, label %6 [
    i32 0, label %10
    i32 1, label %91
  ]

6:                                                ; preds = %3
  %7 = add i32 %5, -1
  store i32 %7, ptr %4, align 4, !tbaa !119
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.130) #12
  br label %91

10:                                               ; preds = %3, %6
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %16 = load i32, ptr %15, align 8, !tbaa !50
  br i1 %14, label %23, label %17

17:                                               ; preds = %10
  %18 = icmp eq i32 %16, 1229209940
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  br label %27

21:                                               ; preds = %17
  %22 = or i32 %12, 8
  store i32 %22, ptr %11, align 4, !tbaa !48
  br label %23

23:                                               ; preds = %10, %21
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %25 = and i32 %16, 536870912
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19, %23
  %28 = phi ptr [ %20, %19 ], [ %24, %23 ]
  %29 = phi i32 [ 1229209940, %19 ], [ %16, %23 ]
  %30 = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %29) #12
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  %34 = load ptr, ptr %33, align 8, !tbaa !166
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.131) #11
  unreachable

37:                                               ; preds = %27, %32, %23
  %38 = phi ptr [ %28, %27 ], [ %28, %32 ], [ %24, %23 ]
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  %45 = load ptr, ptr %44, align 8, !tbaa !166
  %46 = icmp eq ptr %45, null
  br i1 %46, label %91, label %47

47:                                               ; preds = %43, %37
  %48 = load i32, ptr %38, align 8, !tbaa !50
  %49 = lshr i32 %48, 24
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139
  store i8 %50, ptr %51, align 8, !tbaa !34
  %52 = lshr i32 %48, 16
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !34
  %55 = lshr i32 %48, 8
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 2
  store i8 %56, ptr %57, align 2, !tbaa !34
  %58 = trunc i32 %48 to i8
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 3
  store i8 %58, ptr %59, align 1, !tbaa !34
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 0, i64 4
  store i8 0, ptr %60, align 4, !tbaa !34
  %61 = zext i32 %2 to i64
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 2
  store i64 %61, ptr %62, align 8, !tbaa !167
  %63 = icmp eq i32 %2, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  store ptr null, ptr %65, align 8, !tbaa !168
  br label %69

66:                                               ; preds = %47
  %67 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %61) #12
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !168
  tail call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %67, i64 noundef %61) #14
  br label %69

69:                                               ; preds = %66, %64
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 117
  %71 = load ptr, ptr %70, align 8, !tbaa !166
  %72 = icmp eq ptr %71, null
  br i1 %72, label %87, label %73

73:                                               ; preds = %69
  %74 = tail call i32 %71(ptr noundef nonnull %0, ptr noundef nonnull %51) #12
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.132) #11
  unreachable

77:                                               ; preds = %73
  %78 = icmp eq i32 %74, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %77
  %80 = load i32, ptr %38, align 8, !tbaa !50
  %81 = and i32 %80, 536870912
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %80) #12
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.131) #11
  unreachable

87:                                               ; preds = %69, %79, %83
  tail call void @png_set_unknown_chunks(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %51, i32 noundef 1) #12
  br label %88

88:                                               ; preds = %87, %77
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 139, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !168
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %90) #12
  store ptr null, ptr %89, align 8, !tbaa !168
  br label %91

91:                                               ; preds = %88, %43, %3, %9
  %92 = phi i32 [ %2, %9 ], [ %2, %3 ], [ 0, %88 ], [ %2, %43 ]
  %93 = tail call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef %92) #14, !range !56
  ret void
}

; Function Attrs: optsize
declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @png_chunk_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @png_set_unknown_chunks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_combine_row(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %5 = load i8, ptr %4, align 1, !tbaa !169
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %13 = load i8, ptr %12, align 1, !tbaa !171
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %5, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.134) #11
  unreachable

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 44
  %19 = load i64, ptr %18, align 8, !tbaa !172
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
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.135) #11
  unreachable

37:                                               ; preds = %33, %17
  %38 = icmp eq i32 %11, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.136) #11
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
  %62 = load i32, ptr %61, align 4, !tbaa !173
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
  br i1 %75, label %341, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %78 = load i32, ptr %77, align 4, !tbaa !173
  %79 = and i32 %78, 2
  %80 = icmp ne i32 %79, 0
  %81 = icmp ult i8 %13, 6
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %341

83:                                               ; preds = %76
  switch i32 %2, label %341 [
    i32 0, label %84
    i32 1, label %86
  ]

84:                                               ; preds = %83
  %85 = and i32 %14, 1
  br label %89

86:                                               ; preds = %83
  %87 = and i32 %14, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %341, label %89

89:                                               ; preds = %84, %86
  %90 = phi i32 [ %85, %84 ], [ 1, %86 ]
  %91 = add nuw nsw i32 %14, 1
  %92 = lshr i32 %91, 1
  %93 = sub nuw nsw i32 3, %92
  %94 = shl nuw nsw i32 %90, %93
  %95 = and i32 %94, 7
  %96 = icmp ugt i32 %11, %95
  br i1 %96, label %97, label %366

97:                                               ; preds = %89
  %98 = icmp ult i8 %5, 8
  br i1 %98, label %99, label %155

99:                                               ; preds = %97
  %100 = udiv i8 8, %5
  %101 = zext nneg i8 %100 to i32
  %102 = and i32 %78, 65536
  %103 = icmp eq i32 %102, 0
  %104 = icmp eq i32 %2, 0
  %105 = icmp eq i8 %5, 1
  %106 = icmp eq i8 %5, 2
  %107 = select i1 %106, i64 1, i64 2
  %108 = select i1 %105, i64 0, i64 %107
  br i1 %103, label %117, label %109

109:                                              ; preds = %99
  br i1 %104, label %114, label %110

110:                                              ; preds = %109
  %111 = lshr i32 %14, 1
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds [3 x [3 x i32]], ptr @png_combine_row.display_mask, i64 0, i64 %108, i64 %112
  br label %125

114:                                              ; preds = %109
  %115 = zext nneg i8 %13 to i64
  %116 = getelementptr inbounds [3 x [6 x i32]], ptr @png_combine_row.row_mask, i64 0, i64 %108, i64 %115
  br label %125

117:                                              ; preds = %99
  br i1 %104, label %122, label %118

118:                                              ; preds = %117
  %119 = lshr i32 %14, 1
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [2 x [3 x [3 x i32]]], ptr @png_combine_row.display_mask, i64 0, i64 1, i64 %108, i64 %120
  br label %125

122:                                              ; preds = %117
  %123 = zext nneg i8 %13 to i64
  %124 = getelementptr inbounds [2 x [3 x [6 x i32]]], ptr @png_combine_row.row_mask, i64 0, i64 1, i64 %108, i64 %123
  br label %125

125:                                              ; preds = %118, %122, %110, %114
  %126 = phi ptr [ %113, %110 ], [ %116, %114 ], [ %121, %118 ], [ %124, %122 ]
  %127 = load i32, ptr %126, align 4, !tbaa !105
  br label %128

128:                                              ; preds = %151, %125
  %129 = phi i32 [ %127, %125 ], [ %133, %151 ]
  %130 = phi i32 [ %11, %125 ], [ %152, %151 ]
  %131 = phi ptr [ %9, %125 ], [ %154, %151 ]
  %132 = phi ptr [ %1, %125 ], [ %153, %151 ]
  %133 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 24)
  %134 = trunc i32 %129 to i8
  switch i8 %134, label %135 [
    i8 0, label %149
    i8 -1, label %145
  ]

135:                                              ; preds = %128
  %136 = load i8, ptr %132, align 1, !tbaa !34
  %137 = zext i8 %136 to i32
  %138 = xor i32 %129, -1
  %139 = and i32 %137, %138
  %140 = load i8, ptr %131, align 1, !tbaa !34
  %141 = zext i8 %140 to i32
  %142 = and i32 %129, %141
  %143 = or i32 %142, %139
  %144 = trunc i32 %143 to i8
  br label %147

145:                                              ; preds = %128
  %146 = load i8, ptr %131, align 1, !tbaa !34
  br label %147

147:                                              ; preds = %145, %135
  %148 = phi i8 [ %144, %135 ], [ %146, %145 ]
  store i8 %148, ptr %132, align 1, !tbaa !34
  br label %149

149:                                              ; preds = %147, %128
  %150 = icmp ugt i32 %130, %101
  br i1 %150, label %151, label %355

151:                                              ; preds = %149
  %152 = sub i32 %130, %101
  %153 = getelementptr inbounds i8, ptr %132, i64 1
  %154 = getelementptr inbounds i8, ptr %131, i64 1
  br label %128

155:                                              ; preds = %97
  %156 = and i32 %6, 7
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.137) #11
  unreachable

159:                                              ; preds = %155
  %160 = lshr exact i32 %6, 3
  %161 = mul nuw nsw i32 %95, %160
  %162 = sub i32 %11, %95
  %163 = mul i32 %162, %160
  %164 = zext nneg i32 %161 to i64
  %165 = getelementptr inbounds i8, ptr %1, i64 %164
  %166 = getelementptr inbounds i8, ptr %9, i64 %164
  %167 = icmp eq i32 %2, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %159
  %169 = sub nuw nsw i32 6, %14
  %170 = lshr i32 %169, 1
  %171 = shl nuw nsw i32 %160, %170
  %172 = tail call i32 @llvm.umin.i32(i32 %171, i32 %163)
  br label %173

173:                                              ; preds = %168, %159
  %174 = phi i32 [ %160, %159 ], [ %172, %168 ]
  %175 = sub nuw nsw i32 7, %14
  %176 = lshr i32 %175, 1
  %177 = shl nuw nsw i32 %160, %176
  switch i32 %174, label %236 [
    i32 1, label %191
    i32 2, label %189
    i32 3, label %178
  ]

178:                                              ; preds = %173
  %179 = load i8, ptr %166, align 1, !tbaa !34
  store i8 %179, ptr %165, align 1, !tbaa !34
  %180 = getelementptr inbounds i8, ptr %166, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !34
  %182 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %181, ptr %182, align 1, !tbaa !34
  %183 = getelementptr inbounds i8, ptr %166, i64 2
  %184 = load i8, ptr %183, align 1, !tbaa !34
  %185 = getelementptr inbounds i8, ptr %165, i64 2
  store i8 %184, ptr %185, align 1, !tbaa !34
  %186 = icmp ugt i32 %163, %177
  br i1 %186, label %187, label %366

187:                                              ; preds = %178
  %188 = zext nneg i32 %177 to i64
  br label %221

189:                                              ; preds = %173
  %190 = zext nneg i32 %177 to i64
  br label %205

191:                                              ; preds = %173
  %192 = load i8, ptr %166, align 1, !tbaa !34
  store i8 %192, ptr %165, align 1, !tbaa !34
  %193 = icmp ugt i32 %163, %177
  br i1 %193, label %194, label %366

194:                                              ; preds = %191
  %195 = zext nneg i32 %177 to i64
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi ptr [ %165, %194 ], [ %200, %196 ]
  %198 = phi ptr [ %166, %194 ], [ %201, %196 ]
  %199 = phi i32 [ %163, %194 ], [ %202, %196 ]
  %200 = getelementptr inbounds i8, ptr %197, i64 %195
  %201 = getelementptr inbounds i8, ptr %198, i64 %195
  %202 = sub i32 %199, %177
  %203 = load i8, ptr %201, align 1, !tbaa !34
  store i8 %203, ptr %200, align 1, !tbaa !34
  %204 = icmp ugt i32 %202, %177
  br i1 %204, label %196, label %366

205:                                              ; preds = %189, %214
  %206 = phi i32 [ %217, %214 ], [ %163, %189 ]
  %207 = phi ptr [ %215, %214 ], [ %166, %189 ]
  %208 = phi ptr [ %216, %214 ], [ %165, %189 ]
  %209 = load i8, ptr %207, align 1, !tbaa !34
  store i8 %209, ptr %208, align 1, !tbaa !34
  %210 = getelementptr inbounds i8, ptr %207, i64 1
  %211 = load i8, ptr %210, align 1, !tbaa !34
  %212 = getelementptr inbounds i8, ptr %208, i64 1
  store i8 %211, ptr %212, align 1, !tbaa !34
  %213 = icmp ugt i32 %206, %177
  br i1 %213, label %214, label %366

214:                                              ; preds = %205
  %215 = getelementptr inbounds i8, ptr %207, i64 %190
  %216 = getelementptr inbounds i8, ptr %208, i64 %190
  %217 = sub i32 %206, %177
  %218 = icmp ugt i32 %217, 1
  br i1 %218, label %205, label %219, !llvm.loop !174

219:                                              ; preds = %214
  %220 = load i8, ptr %215, align 1, !tbaa !34
  store i8 %220, ptr %216, align 1, !tbaa !34
  br label %366

221:                                              ; preds = %187, %221
  %222 = phi ptr [ %165, %187 ], [ %226, %221 ]
  %223 = phi ptr [ %166, %187 ], [ %225, %221 ]
  %224 = phi i32 [ %163, %187 ], [ %227, %221 ]
  %225 = getelementptr inbounds i8, ptr %223, i64 %188
  %226 = getelementptr inbounds i8, ptr %222, i64 %188
  %227 = sub i32 %224, %177
  %228 = load i8, ptr %225, align 1, !tbaa !34
  store i8 %228, ptr %226, align 1, !tbaa !34
  %229 = getelementptr inbounds i8, ptr %225, i64 1
  %230 = load i8, ptr %229, align 1, !tbaa !34
  %231 = getelementptr inbounds i8, ptr %226, i64 1
  store i8 %230, ptr %231, align 1, !tbaa !34
  %232 = getelementptr inbounds i8, ptr %225, i64 2
  %233 = load i8, ptr %232, align 1, !tbaa !34
  %234 = getelementptr inbounds i8, ptr %226, i64 2
  store i8 %233, ptr %234, align 1, !tbaa !34
  %235 = icmp ugt i32 %227, %177
  br i1 %235, label %221, label %366

236:                                              ; preds = %173
  %237 = icmp ult i32 %174, 16
  br i1 %237, label %238, label %325

238:                                              ; preds = %236
  %239 = ptrtoint ptr %165 to i64
  %240 = and i64 %239, 1
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %325

242:                                              ; preds = %238
  %243 = ptrtoint ptr %166 to i64
  %244 = and i64 %243, 1
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %325

246:                                              ; preds = %242
  %247 = zext nneg i32 %174 to i64
  %248 = and i64 %247, 1
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %325

250:                                              ; preds = %246
  %251 = zext nneg i32 %177 to i64
  %252 = and i64 %251, 1
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %325

254:                                              ; preds = %250
  %255 = or i64 %243, %251
  %256 = or i64 %255, %239
  %257 = or i64 %256, %247
  %258 = and i64 %257, 2
  %259 = icmp eq i64 %258, 0
  %260 = sub nsw i32 %177, %174
  br i1 %259, label %261, label %293

261:                                              ; preds = %254
  %262 = lshr i32 %260, 2
  %263 = zext nneg i32 %262 to i64
  br label %264

264:                                              ; preds = %279, %261
  %265 = phi i32 [ %163, %261 ], [ %280, %279 ]
  %266 = phi ptr [ %165, %261 ], [ %282, %279 ]
  %267 = phi ptr [ %166, %261 ], [ %281, %279 ]
  br label %268

268:                                              ; preds = %268, %264
  %269 = phi ptr [ %266, %264 ], [ %274, %268 ]
  %270 = phi ptr [ %267, %264 ], [ %272, %268 ]
  %271 = phi i64 [ %247, %264 ], [ %275, %268 ]
  %272 = getelementptr i32, ptr %270, i64 1
  %273 = load i32, ptr %270, align 4, !tbaa !105
  %274 = getelementptr i32, ptr %269, i64 1
  store i32 %273, ptr %269, align 4, !tbaa !105
  %275 = add i64 %271, -4
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %268, !llvm.loop !175

277:                                              ; preds = %268
  %278 = icmp ugt i32 %265, %177
  br i1 %278, label %279, label %366

279:                                              ; preds = %277
  %280 = sub i32 %265, %177
  %281 = getelementptr i32, ptr %272, i64 %263
  %282 = getelementptr i32, ptr %274, i64 %263
  %283 = icmp ugt i32 %174, %280
  br i1 %283, label %284, label %264, !llvm.loop !176

284:                                              ; preds = %279, %284
  %285 = phi i32 [ %291, %284 ], [ %280, %279 ]
  %286 = phi ptr [ %288, %284 ], [ %281, %279 ]
  %287 = phi ptr [ %290, %284 ], [ %282, %279 ]
  %288 = getelementptr inbounds i8, ptr %286, i64 1
  %289 = load i8, ptr %286, align 1, !tbaa !34
  %290 = getelementptr inbounds i8, ptr %287, i64 1
  store i8 %289, ptr %287, align 1, !tbaa !34
  %291 = add i32 %285, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %366, label %284, !llvm.loop !177

293:                                              ; preds = %254
  %294 = lshr i32 %260, 1
  %295 = zext nneg i32 %294 to i64
  br label %296

296:                                              ; preds = %311, %293
  %297 = phi i32 [ %163, %293 ], [ %312, %311 ]
  %298 = phi ptr [ %165, %293 ], [ %314, %311 ]
  %299 = phi ptr [ %166, %293 ], [ %313, %311 ]
  br label %300

300:                                              ; preds = %300, %296
  %301 = phi ptr [ %298, %296 ], [ %306, %300 ]
  %302 = phi ptr [ %299, %296 ], [ %304, %300 ]
  %303 = phi i64 [ %247, %296 ], [ %307, %300 ]
  %304 = getelementptr i16, ptr %302, i64 1
  %305 = load i16, ptr %302, align 2, !tbaa !144
  %306 = getelementptr i16, ptr %301, i64 1
  store i16 %305, ptr %301, align 2, !tbaa !144
  %307 = add i64 %303, -2
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %300, !llvm.loop !178

309:                                              ; preds = %300
  %310 = icmp ugt i32 %297, %177
  br i1 %310, label %311, label %366

311:                                              ; preds = %309
  %312 = sub i32 %297, %177
  %313 = getelementptr i16, ptr %304, i64 %295
  %314 = getelementptr i16, ptr %306, i64 %295
  %315 = icmp ugt i32 %174, %312
  br i1 %315, label %316, label %296, !llvm.loop !179

316:                                              ; preds = %311, %316
  %317 = phi i32 [ %323, %316 ], [ %312, %311 ]
  %318 = phi ptr [ %320, %316 ], [ %313, %311 ]
  %319 = phi ptr [ %322, %316 ], [ %314, %311 ]
  %320 = getelementptr inbounds i8, ptr %318, i64 1
  %321 = load i8, ptr %318, align 1, !tbaa !34
  %322 = getelementptr inbounds i8, ptr %319, i64 1
  store i8 %321, ptr %319, align 1, !tbaa !34
  %323 = add i32 %317, -1
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %366, label %316, !llvm.loop !180

325:                                              ; preds = %250, %246, %242, %238, %236
  %326 = zext nneg i32 %174 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr nonnull align 1 %166, i64 %326, i1 false)
  %327 = icmp ugt i32 %163, %177
  br i1 %327, label %328, label %366

328:                                              ; preds = %325
  %329 = zext nneg i32 %177 to i64
  br label %330

330:                                              ; preds = %328, %330
  %331 = phi ptr [ %165, %328 ], [ %336, %330 ]
  %332 = phi ptr [ %166, %328 ], [ %335, %330 ]
  %333 = phi i32 [ %163, %328 ], [ %337, %330 ]
  %334 = phi i32 [ %174, %328 ], [ %338, %330 ]
  %335 = getelementptr inbounds i8, ptr %332, i64 %329
  %336 = getelementptr inbounds i8, ptr %331, i64 %329
  %337 = sub i32 %333, %177
  %338 = tail call i32 @llvm.umin.i32(i32 %334, i32 %337)
  %339 = zext nneg i32 %338 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %336, ptr align 1 %335, i64 %339, i1 false)
  %340 = icmp ugt i32 %337, %177
  br i1 %340, label %330, label %366

341:                                              ; preds = %83, %86, %76, %69
  %342 = icmp ugt i8 %5, 7
  %343 = zext i32 %11 to i64
  br i1 %342, label %344, label %348

344:                                              ; preds = %341
  %345 = lshr i8 %5, 3
  %346 = zext nneg i8 %345 to i64
  %347 = mul nuw nsw i64 %343, %346
  br label %353

348:                                              ; preds = %341
  %349 = zext nneg i8 %5 to i64
  %350 = mul nuw nsw i64 %343, %349
  %351 = add nuw nsw i64 %350, 7
  %352 = lshr i64 %351, 3
  br label %353

353:                                              ; preds = %348, %344
  %354 = phi i64 [ %347, %344 ], [ %352, %348 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %9, i64 %354, i1 false)
  br label %355

355:                                              ; preds = %149, %353
  %356 = icmp eq ptr %72, null
  br i1 %356, label %366, label %357

357:                                              ; preds = %355
  %358 = zext i8 %70 to i32
  %359 = and i32 %71, %358
  %360 = load i8, ptr %72, align 1, !tbaa !34
  %361 = zext i8 %360 to i32
  %362 = xor i32 %71, -1
  %363 = and i32 %361, %362
  %364 = or i32 %363, %359
  %365 = trunc i32 %364 to i8
  store i8 %365, ptr %72, align 1, !tbaa !34
  br label %366

366:                                              ; preds = %221, %205, %196, %330, %309, %316, %277, %284, %178, %191, %325, %355, %357, %219, %89
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_read_interlace(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = alloca i64, align 8
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %272

9:                                                ; preds = %4
  %10 = load i32, ptr %0, align 8, !tbaa !181
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [7 x i32], ptr @png_do_read_interlace.png_pass_inc, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !105
  %14 = mul i32 %13, %10
  %15 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %16 = load i8, ptr %15, align 1, !tbaa !183
  switch i8 %16, label %224 [
    i8 1, label %17
    i8 2, label %85
    i8 4, label %156
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
  %44 = icmp eq i32 %10, 0
  br i1 %44, label %254, label %45

45:                                               ; preds = %38
  %46 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %47

47:                                               ; preds = %76, %45
  %48 = phi ptr [ %21, %45 ], [ %82, %76 ]
  %49 = phi ptr [ %25, %45 ], [ %73, %76 ]
  %50 = phi i32 [ %43, %45 ], [ %80, %76 ]
  %51 = phi i32 [ %42, %45 ], [ %71, %76 ]
  %52 = phi i32 [ 0, %45 ], [ %83, %76 ]
  %53 = load i8, ptr %48, align 1, !tbaa !34
  %54 = zext i8 %53 to i32
  %55 = lshr i32 %54, %50
  %56 = and i32 %55, 1
  br label %57

57:                                               ; preds = %47, %57
  %58 = phi ptr [ %73, %57 ], [ %49, %47 ]
  %59 = phi i32 [ %71, %57 ], [ %51, %47 ]
  %60 = phi i32 [ %74, %57 ], [ 0, %47 ]
  %61 = sub nsw i32 7, %59
  %62 = lshr i32 32639, %61
  %63 = load i8, ptr %58, align 1, !tbaa !34
  %64 = trunc i32 %62 to i8
  %65 = and i8 %63, %64
  %66 = shl nuw i32 %56, %59
  %67 = trunc i32 %66 to i8
  %68 = or i8 %65, %67
  store i8 %68, ptr %58, align 1, !tbaa !34
  %69 = icmp eq i32 %59, %40
  %70 = add nsw i32 %59, %39
  %71 = select i1 %69, i32 %41, i32 %70
  %72 = sext i1 %69 to i64
  %73 = getelementptr inbounds i8, ptr %58, i64 %72
  %74 = add nuw nsw i32 %60, 1
  %75 = icmp eq i32 %74, %46
  br i1 %75, label %76, label %57, !llvm.loop !184

76:                                               ; preds = %57
  %77 = load i32, ptr %0, align 8, !tbaa !181
  %78 = icmp eq i32 %50, %40
  %79 = add nsw i32 %50, %39
  %80 = select i1 %78, i32 %41, i32 %79
  %81 = sext i1 %78 to i64
  %82 = getelementptr inbounds i8, ptr %48, i64 %81
  %83 = add nuw i32 %52, 1
  %84 = icmp ult i32 %83, %77
  br i1 %84, label %47, label %254, !llvm.loop !185

85:                                               ; preds = %9
  %86 = add i32 %10, -1
  %87 = lshr i32 %86, 2
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %1, i64 %88
  %90 = add i32 %14, -1
  %91 = lshr i32 %90, 2
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %1, i64 %92
  %94 = and i32 %3, 65536
  %95 = icmp eq i32 %94, 0
  %96 = shl i32 %10, 1
  %97 = add i32 %96, 6
  %98 = and i32 %97, 6
  br i1 %95, label %103, label %99

99:                                               ; preds = %85
  %100 = shl i32 %14, 1
  %101 = add i32 %100, 6
  %102 = and i32 %101, 6
  br label %109

103:                                              ; preds = %85
  %104 = xor i32 %98, 6
  %105 = shl i32 %14, 1
  %106 = add i32 %105, 6
  %107 = and i32 %106, 6
  %108 = xor i32 %107, 6
  br label %109

109:                                              ; preds = %103, %99
  %110 = phi i32 [ %98, %99 ], [ %104, %103 ]
  %111 = phi i32 [ %102, %99 ], [ %108, %103 ]
  %112 = phi i32 [ 6, %99 ], [ 0, %103 ]
  %113 = phi i32 [ 0, %99 ], [ 6, %103 ]
  %114 = phi i32 [ -2, %99 ], [ 2, %103 ]
  %115 = icmp eq i32 %10, 0
  br i1 %115, label %254, label %116

116:                                              ; preds = %109
  %117 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %118

118:                                              ; preds = %147, %116
  %119 = phi i32 [ 0, %116 ], [ %154, %147 ]
  %120 = phi i32 [ %111, %116 ], [ %144, %147 ]
  %121 = phi i32 [ %110, %116 ], [ %153, %147 ]
  %122 = phi ptr [ %93, %116 ], [ %143, %147 ]
  %123 = phi ptr [ %89, %116 ], [ %152, %147 ]
  %124 = load i8, ptr %123, align 1, !tbaa !34
  %125 = zext i8 %124 to i32
  %126 = lshr i32 %125, %121
  %127 = and i32 %126, 3
  br label %128

128:                                              ; preds = %118, %128
  %129 = phi i32 [ %145, %128 ], [ 0, %118 ]
  %130 = phi i32 [ %144, %128 ], [ %120, %118 ]
  %131 = phi ptr [ %143, %128 ], [ %122, %118 ]
  %132 = sub nsw i32 6, %130
  %133 = lshr i32 16191, %132
  %134 = load i8, ptr %131, align 1, !tbaa !34
  %135 = trunc i32 %133 to i8
  %136 = and i8 %134, %135
  %137 = shl i32 %127, %130
  %138 = trunc i32 %137 to i8
  %139 = or i8 %136, %138
  store i8 %139, ptr %131, align 1, !tbaa !34
  %140 = icmp eq i32 %130, %113
  %141 = add nsw i32 %130, %114
  %142 = sext i1 %140 to i64
  %143 = getelementptr inbounds i8, ptr %131, i64 %142
  %144 = select i1 %140, i32 %112, i32 %141
  %145 = add nuw nsw i32 %129, 1
  %146 = icmp eq i32 %145, %117
  br i1 %146, label %147, label %128, !llvm.loop !186

147:                                              ; preds = %128
  %148 = load i32, ptr %0, align 8, !tbaa !181
  %149 = icmp eq i32 %121, %113
  %150 = add nsw i32 %121, %114
  %151 = sext i1 %149 to i64
  %152 = getelementptr inbounds i8, ptr %123, i64 %151
  %153 = select i1 %149, i32 %112, i32 %150
  %154 = add nuw i32 %119, 1
  %155 = icmp ult i32 %154, %148
  br i1 %155, label %118, label %254, !llvm.loop !187

156:                                              ; preds = %9
  %157 = add i32 %10, -1
  %158 = lshr i32 %157, 1
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %1, i64 %159
  %161 = add i32 %14, -1
  %162 = lshr i32 %161, 1
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %1, i64 %163
  %165 = and i32 %3, 65536
  %166 = icmp eq i32 %165, 0
  %167 = shl i32 %10, 2
  %168 = and i32 %167, 4
  br i1 %166, label %174, label %169

169:                                              ; preds = %156
  %170 = xor i32 %168, 4
  %171 = shl i32 %14, 2
  %172 = and i32 %171, 4
  %173 = xor i32 %172, 4
  br label %177

174:                                              ; preds = %156
  %175 = shl i32 %14, 2
  %176 = and i32 %175, 4
  br label %177

177:                                              ; preds = %174, %169
  %178 = phi i32 [ %170, %169 ], [ %168, %174 ]
  %179 = phi i32 [ %173, %169 ], [ %176, %174 ]
  %180 = phi i32 [ 4, %169 ], [ 0, %174 ]
  %181 = phi i32 [ 0, %169 ], [ 4, %174 ]
  %182 = phi i32 [ -4, %169 ], [ 4, %174 ]
  %183 = icmp eq i32 %10, 0
  br i1 %183, label %254, label %184

184:                                              ; preds = %177
  %185 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %186

186:                                              ; preds = %215, %184
  %187 = phi i32 [ 0, %184 ], [ %222, %215 ]
  %188 = phi i32 [ %179, %184 ], [ %212, %215 ]
  %189 = phi i32 [ %178, %184 ], [ %221, %215 ]
  %190 = phi ptr [ %164, %184 ], [ %211, %215 ]
  %191 = phi ptr [ %160, %184 ], [ %220, %215 ]
  %192 = load i8, ptr %191, align 1, !tbaa !34
  %193 = zext i8 %192 to i32
  %194 = lshr i32 %193, %189
  %195 = and i32 %194, 15
  br label %196

196:                                              ; preds = %186, %196
  %197 = phi i32 [ %213, %196 ], [ 0, %186 ]
  %198 = phi i32 [ %212, %196 ], [ %188, %186 ]
  %199 = phi ptr [ %211, %196 ], [ %190, %186 ]
  %200 = sub nsw i32 4, %198
  %201 = lshr i32 3855, %200
  %202 = load i8, ptr %199, align 1, !tbaa !34
  %203 = trunc i32 %201 to i8
  %204 = and i8 %202, %203
  %205 = shl i32 %195, %198
  %206 = trunc i32 %205 to i8
  %207 = or i8 %204, %206
  store i8 %207, ptr %199, align 1, !tbaa !34
  %208 = icmp eq i32 %198, %181
  %209 = add nsw i32 %198, %182
  %210 = sext i1 %208 to i64
  %211 = getelementptr inbounds i8, ptr %199, i64 %210
  %212 = select i1 %208, i32 %180, i32 %209
  %213 = add nuw nsw i32 %197, 1
  %214 = icmp eq i32 %213, %185
  br i1 %214, label %215, label %196, !llvm.loop !188

215:                                              ; preds = %196
  %216 = load i32, ptr %0, align 8, !tbaa !181
  %217 = icmp eq i32 %189, %181
  %218 = add nsw i32 %189, %182
  %219 = sext i1 %217 to i64
  %220 = getelementptr inbounds i8, ptr %191, i64 %219
  %221 = select i1 %217, i32 %180, i32 %218
  %222 = add nuw i32 %187, 1
  %223 = icmp ult i32 %222, %216
  br i1 %223, label %186, label %254, !llvm.loop !189

224:                                              ; preds = %9
  %225 = lshr i8 %16, 3
  %226 = zext nneg i8 %225 to i64
  %227 = icmp eq i32 %10, 0
  br i1 %227, label %256, label %228

228:                                              ; preds = %224
  %229 = add i32 %14, -1
  %230 = zext i32 %229 to i64
  %231 = mul nuw nsw i64 %230, %226
  %232 = getelementptr inbounds i8, ptr %1, i64 %231
  %233 = add i32 %10, -1
  %234 = zext i32 %233 to i64
  %235 = mul nuw nsw i64 %226, %234
  %236 = getelementptr inbounds i8, ptr %1, i64 %235
  %237 = sub nsw i64 0, %226
  %238 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  br label %239

239:                                              ; preds = %249, %228
  %240 = phi i32 [ 0, %228 ], [ %252, %249 ]
  %241 = phi ptr [ %232, %228 ], [ %246, %249 ]
  %242 = phi ptr [ %236, %228 ], [ %251, %249 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr align 1 %242, i64 %226, i1 false)
  br label %243

243:                                              ; preds = %239, %243
  %244 = phi i32 [ %247, %243 ], [ 0, %239 ]
  %245 = phi ptr [ %246, %243 ], [ %241, %239 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %245, ptr nonnull align 8 %5, i64 %226, i1 false)
  %246 = getelementptr inbounds i8, ptr %245, i64 %237
  %247 = add nuw nsw i32 %244, 1
  %248 = icmp eq i32 %247, %238
  br i1 %248, label %249, label %243, !llvm.loop !190

249:                                              ; preds = %243
  %250 = load i32, ptr %0, align 8, !tbaa !181
  %251 = getelementptr inbounds i8, ptr %242, i64 %237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %252 = add nuw i32 %240, 1
  %253 = icmp ult i32 %252, %250
  br i1 %253, label %239, label %254, !llvm.loop !191

254:                                              ; preds = %215, %147, %76, %249, %38, %109, %177
  %255 = load i8, ptr %15, align 1, !tbaa !183
  br label %256

256:                                              ; preds = %254, %224
  %257 = phi i8 [ %255, %254 ], [ %16, %224 ]
  store i32 %14, ptr %0, align 8, !tbaa !181
  %258 = icmp ugt i8 %257, 7
  %259 = zext i32 %14 to i64
  br i1 %258, label %260, label %264

260:                                              ; preds = %256
  %261 = lshr i8 %257, 3
  %262 = zext nneg i8 %261 to i64
  %263 = mul nuw nsw i64 %262, %259
  br label %269

264:                                              ; preds = %256
  %265 = zext nneg i8 %257 to i64
  %266 = mul nuw nsw i64 %265, %259
  %267 = add nuw nsw i64 %266, 7
  %268 = lshr i64 %267, 3
  br label %269

269:                                              ; preds = %264, %260
  %270 = phi i64 [ %263, %260 ], [ %268, %264 ]
  %271 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %270, ptr %271, align 8, !tbaa !192
  br label %272

272:                                              ; preds = %269, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_filter_row(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @png_init_filter_functions(ptr noundef nonnull %0) #14
  br label %10

10:                                               ; preds = %9, %5
  %11 = add i32 %4, -1
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !148
  tail call void %16(ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %17

17:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @png_init_filter_functions(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !193 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %3 = load i8, ptr %2, align 2, !tbaa !76
  %4 = zext i8 %3 to i32
  %5 = add nuw nsw i32 %4, 7
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144
  store ptr @png_read_filter_row_sub, ptr %6, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 1
  store ptr @png_read_filter_row_up, ptr %7, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 2
  store ptr @png_read_filter_row_avg, ptr %8, align 8, !tbaa !148
  %9 = and i32 %5, 504
  %10 = icmp eq i32 %9, 8
  %11 = select i1 %10, ptr @png_read_filter_row_paeth_1byte_pixel, ptr @png_read_filter_row_paeth_multibyte_pixel
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 144, i64 3
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_finish_row(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %4 = load i32, ptr %3, align 4, !tbaa !194
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !194
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %7 = load i32, ptr %6, align 8, !tbaa !195
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %140, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %11 = load i8, ptr %10, align 4, !tbaa !71
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %9
  store i32 0, ptr %3, align 4, !tbaa !194
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %17 = load i64, ptr %16, align 8, !tbaa !77
  %18 = add i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %15, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %20 = load i8, ptr %19, align 1, !tbaa !171
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %25

25:                                               ; preds = %45, %13
  %26 = phi i8 [ %27, %45 ], [ %20, %13 ]
  %27 = add i8 %26, 1
  %28 = icmp ugt i8 %27, 6
  br i1 %28, label %60, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %21, align 8, !tbaa !68
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
  store i32 %41, ptr %22, align 8, !tbaa !197
  %42 = load i32, ptr %23, align 4, !tbaa !173
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %139

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
  store i32 %56, ptr %6, align 8, !tbaa !195
  %57 = icmp ult i32 %55, %49
  %58 = icmp ult i32 %40, %34
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %25, label %139, !llvm.loop !198

60:                                               ; preds = %25
  store i8 %27, ptr %19, align 1, !tbaa !171
  br label %61

61:                                               ; preds = %60, %9
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %63 = load i32, ptr %62, align 8, !tbaa !57
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %124

66:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %2, ptr %68, align 8, !tbaa !65
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 1, ptr %69, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  br label %75

75:                                               ; preds = %116, %66
  %76 = load i32, ptr %70, align 8, !tbaa !64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load i32, ptr %71, align 8, !tbaa !199
  br label %80

80:                                               ; preds = %78, %83
  %81 = phi i32 [ %79, %78 ], [ %85, %83 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #14, !range !56
  %85 = call i32 @png_read_chunk_header(ptr noundef nonnull %0) #14, !range !49
  store i32 %85, ptr %71, align 8, !tbaa !199
  %86 = load i32, ptr %72, align 8, !tbaa !50
  %87 = icmp eq i32 %86, 1229209940
  br i1 %87, label %80, label %88, !llvm.loop !200

88:                                               ; preds = %83
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.138) #11
  unreachable

89:                                               ; preds = %80
  %90 = load i32, ptr %73, align 8, !tbaa !53
  store i32 %90, ptr %70, align 8, !tbaa !64
  %91 = load ptr, ptr %74, align 8, !tbaa !54
  store ptr %91, ptr %67, align 8, !tbaa !63
  %92 = icmp ugt i32 %90, %81
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 %81, ptr %70, align 8, !tbaa !64
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %81, %93 ], [ %90, %89 ]
  %96 = zext i32 %95 to i64
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef %91, i64 noundef %96) #14
  %97 = load i32, ptr %70, align 8, !tbaa !64
  %98 = load i32, ptr %71, align 8, !tbaa !199
  %99 = sub i32 %98, %97
  store i32 %99, ptr %71, align 8, !tbaa !199
  br label %100

100:                                              ; preds = %94, %75
  %101 = call i32 @inflate(ptr noundef nonnull %67, i32 noundef 1) #12
  switch i32 %101, label %111 [
    i32 1, label %102
    i32 0, label %116
  ]

102:                                              ; preds = %100
  %103 = load i32, ptr %69, align 8, !tbaa !66
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %70, align 8, !tbaa !64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32, ptr %71, align 8, !tbaa !199
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %119

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !67
  %114 = icmp eq ptr %113, null
  %115 = select i1 %114, ptr @.str.140, ptr %113
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %115) #11
  unreachable

116:                                              ; preds = %100
  %117 = load i32, ptr %69, align 8, !tbaa !66
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %75

119:                                              ; preds = %116, %102, %105, %108
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.139) #12
  br label %120

120:                                              ; preds = %119, %108
  %121 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %122 = load <2 x i32>, ptr %121, align 4, !tbaa !105
  %123 = or <2 x i32> %122, <i32 8, i32 32>
  store <2 x i32> %123, ptr %121, align 4, !tbaa !105
  store i32 0, ptr %69, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %124

124:                                              ; preds = %120, %61
  %125 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 45
  %126 = load i32, ptr %125, align 8, !tbaa !199
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !64
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128, %124
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.141) #12
  br label %133

133:                                              ; preds = %132, %128
  %134 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %135 = call i32 @inflateReset(ptr noundef nonnull %134) #12
  %136 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %137 = load i32, ptr %136, align 4, !tbaa !48
  %138 = or i32 %137, 8
  store i32 %138, ptr %136, align 4, !tbaa !48
  br label %140

139:                                              ; preds = %29, %45
  store i8 %27, ptr %19, align 1, !tbaa !171
  br label %140

140:                                              ; preds = %139, %1, %133
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @inflateReset(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_read_start_row(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %2, align 8, !tbaa !64
  tail call void @png_init_read_transformations(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %4 = load i8, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !173
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = add i32 %12, 7
  %14 = lshr i32 %13, 3
  %15 = select i1 %10, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %20 = load i8, ptr %19, align 1, !tbaa !171
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
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  store i32 %31, ptr %32, align 8, !tbaa !197
  br label %42

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %35 = load i32, ptr %34, align 4, !tbaa !69
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %35, ptr %36, align 8, !tbaa !195
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %38 = load i32, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 35
  store i32 %38, ptr %39, align 8, !tbaa !197
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %41 = load i32, ptr %40, align 4, !tbaa !173
  br label %42

42:                                               ; preds = %33, %6
  %43 = phi i32 [ %38, %33 ], [ %18, %6 ]
  %44 = phi i32 [ %41, %33 ], [ %8, %6 ]
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %46 = load i8, ptr %45, align 2, !tbaa !76
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %48 = and i32 %44, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %52 = load i8, ptr %51, align 8, !tbaa !70
  %53 = icmp ult i8 %52, 8
  %54 = select i1 %53, i8 8, i8 %46
  br label %55

55:                                               ; preds = %50, %42
  %56 = phi i8 [ %46, %42 ], [ %54, %50 ]
  %57 = zext i8 %56 to i32
  %58 = and i32 %44, 4096
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %88, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %62 = load i8, ptr %61, align 1, !tbaa !72
  switch i8 %62, label %84 [
    i8 3, label %63
    i8 0, label %68
    i8 2, label %75
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %65 = load i16, ptr %64, align 8, !tbaa !86
  %66 = icmp eq i16 %65, 0
  %67 = select i1 %66, i32 24, i32 32
  br label %84

68:                                               ; preds = %60
  %69 = tail call i32 @llvm.umax.i32(i32 %57, i32 8)
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %71 = load i16, ptr %70, align 8, !tbaa !86
  %72 = icmp ne i16 %71, 0
  %73 = zext i1 %72 to i32
  %74 = shl nuw nsw i32 %69, %73
  br label %84

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %77 = load i16, ptr %76, align 8, !tbaa !86
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = zext i8 %56 to i16
  %81 = shl nuw nsw i16 %80, 2
  %82 = udiv i16 %81, 3
  %83 = zext nneg i16 %82 to i32
  br label %84

84:                                               ; preds = %68, %60, %63, %79, %75
  %85 = phi i32 [ %83, %79 ], [ %57, %75 ], [ %67, %63 ], [ %74, %68 ], [ %57, %60 ]
  %86 = and i32 %44, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %99, label %91

88:                                               ; preds = %55
  %89 = and i32 %44, 512
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %97

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %93 = load i8, ptr %92, align 8, !tbaa !70
  %94 = icmp ult i8 %93, 16
  %95 = zext i1 %94 to i32
  %96 = shl nuw nsw i32 %85, %95
  br label %99

97:                                               ; preds = %88
  %98 = and i32 %44, -4609
  store i32 %98, ptr %47, align 4, !tbaa !173
  br label %99

99:                                               ; preds = %88, %91, %97, %84
  %100 = phi i32 [ %57, %97 ], [ %85, %84 ], [ %96, %91 ], [ %57, %88 ]
  %101 = load i32, ptr %47, align 4, !tbaa !173
  %102 = and i32 %101, 32768
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %106 = load i8, ptr %105, align 1, !tbaa !72
  switch i8 %106, label %113 [
    i8 0, label %107
    i8 2, label %110
    i8 3, label %110
  ]

107:                                              ; preds = %104
  %108 = icmp ult i32 %100, 9
  %109 = select i1 %108, i32 16, i32 32
  br label %113

110:                                              ; preds = %104, %104
  %111 = icmp ugt i32 %100, 32
  %112 = select i1 %111, i32 64, i32 32
  br label %113

113:                                              ; preds = %110, %104, %107, %99
  %114 = phi i32 [ %100, %99 ], [ %109, %107 ], [ %100, %104 ], [ %112, %110 ]
  %115 = and i32 %101, 16384
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 50
  %119 = load i16, ptr %118, align 8, !tbaa !86
  %120 = icmp ne i16 %119, 0
  %121 = and i32 %101, 4096
  %122 = icmp ne i32 %121, 0
  %123 = and i1 %122, %120
  %124 = or i1 %103, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %127 = load i8, ptr %126, align 1, !tbaa !72
  %128 = icmp eq i8 %127, 4
  br i1 %128, label %129, label %132

129:                                              ; preds = %117, %125
  %130 = icmp ult i32 %114, 17
  %131 = select i1 %130, i32 32, i32 64
  br label %139

132:                                              ; preds = %125
  %133 = icmp ult i32 %114, 9
  %134 = icmp eq i8 %127, 6
  br i1 %133, label %135, label %137

135:                                              ; preds = %132
  %136 = select i1 %134, i32 32, i32 24
  br label %139

137:                                              ; preds = %132
  %138 = select i1 %134, i32 64, i32 48
  br label %139

139:                                              ; preds = %137, %135, %129, %113
  %140 = phi i32 [ %114, %113 ], [ %131, %129 ], [ %136, %135 ], [ %138, %137 ]
  %141 = and i32 %101, 1048576
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  %145 = load i8, ptr %144, align 8, !tbaa !201
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  %148 = load i8, ptr %147, align 1, !tbaa !202
  %149 = zext i8 %148 to i32
  %150 = mul nuw nsw i32 %149, %146
  %151 = tail call i32 @llvm.umax.i32(i32 %150, i32 %140)
  br label %152

152:                                              ; preds = %143, %139
  %153 = phi i32 [ %151, %143 ], [ %140, %139 ]
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  store i8 %154, ptr %155, align 2, !tbaa !203
  %156 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  store i8 0, ptr %156, align 1, !tbaa !169
  %157 = add i32 %43, 7
  %158 = and i32 %157, -8
  %159 = zext i32 %158 to i64
  %160 = icmp ugt i32 %153, 7
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = lshr i32 %153, 3
  %163 = zext nneg i32 %162 to i64
  %164 = mul nuw nsw i64 %159, %163
  br label %169

165:                                              ; preds = %152
  %166 = zext nneg i32 %153 to i64
  %167 = mul nuw nsw i64 %159, %166
  %168 = lshr exact i64 %167, 3
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i64 [ %164, %161 ], [ %168, %165 ]
  %171 = add nuw nsw i32 %153, 7
  %172 = lshr i32 %171, 3
  %173 = add nuw nsw i32 %172, 49
  %174 = zext nneg i32 %173 to i64
  %175 = add nuw nsw i64 %170, %174
  %176 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 140
  %177 = load i64, ptr %176, align 8, !tbaa !204
  %178 = icmp ugt i64 %175, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 130
  %181 = load ptr, ptr %180, align 8, !tbaa !205
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %181) #12
  %182 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 143
  %183 = load ptr, ptr %182, align 8, !tbaa !206
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %183) #12
  %184 = load i8, ptr %3, align 4, !tbaa !71
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179
  %187 = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef %175) #12
  br label %190

188:                                              ; preds = %179
  %189 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %175) #12
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi ptr [ %189, %188 ], [ %187, %186 ]
  store ptr %191, ptr %180, align 8, !tbaa !205
  %192 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %175) #12
  store ptr %192, ptr %182, align 8, !tbaa !206
  %193 = load ptr, ptr %180, align 8, !tbaa !205
  %194 = getelementptr inbounds i8, ptr %193, i64 31
  %195 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  store ptr %194, ptr %195, align 8, !tbaa !170
  %196 = getelementptr inbounds i8, ptr %192, i64 31
  %197 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  store ptr %196, ptr %197, align 8, !tbaa !196
  store i64 %175, ptr %176, align 8, !tbaa !204
  br label %198

198:                                              ; preds = %190, %169
  %199 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %200 = load i64, ptr %199, align 8, !tbaa !77
  %201 = icmp eq i64 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.142) #11
  unreachable

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %205 = load ptr, ptr %204, align 8, !tbaa !196
  %206 = add nuw i64 %200, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %205, i8 0, i64 %206, i1 false)
  %207 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %208 = load i32, ptr %207, align 8, !tbaa !57
  %209 = or i32 %208, 64
  store i32 %209, ptr %207, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @png_init_read_transformations(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_sub(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #7 !PGOFuncName !207 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !183
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
  br i1 %24, label %25, label %15, !llvm.loop !208

25:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_up(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !209 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !192
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
  br i1 %17, label %18, label %7, !llvm.loop !210

18:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_avg(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !211 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !183
  %6 = zext i8 %5 to i64
  %7 = add nuw nsw i64 %6, 7
  %8 = lshr i64 %7, 3
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !192
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
  br i1 %30, label %13, label %19, !llvm.loop !212

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
  br i1 %48, label %49, label %31, !llvm.loop !213

49:                                               ; preds = %31, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !214 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !192
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
  br i1 %41, label %16, label %42, !llvm.loop !215

42:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !216 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !183
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
  br i1 %19, label %11, label %20, !llvm.loop !217

20:                                               ; preds = %11, %3
  %21 = phi ptr [ %2, %3 ], [ %15, %11 ]
  %22 = phi ptr [ %1, %3 ], [ %18, %11 ]
  %23 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !192
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
  br i1 %55, label %29, label %56, !llvm.loop !218

56:                                               ; preds = %29, %20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!49 = !{i32 0, i32 -2147483648}
!50 = !{!38, !40, i64 496}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!38, !40, i64 416}
!54 = !{!38, !39, i64 408}
!55 = distinct !{!55, !52}
!56 = !{i32 0, i32 2}
!57 = !{!38, !40, i64 288}
!58 = !{!38, !40, i64 564}
!59 = !{!38, !39, i64 1160}
!60 = !{!38, !42, i64 1112}
!61 = !{!42, !42, i64 0}
!62 = !{!"pngrutil.c:png_inflate"}
!63 = !{!38, !39, i64 296}
!64 = !{!38, !40, i64 304}
!65 = !{!38, !39, i64 320}
!66 = !{!38, !40, i64 328}
!67 = !{!38, !39, i64 344}
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
!82 = distinct !{!82, !52}
!83 = !{!84, !40, i64 8}
!84 = !{!"png_info_def", !40, i64 0, !40, i64 4, !40, i64 8, !42, i64 16, !39, i64 24, !43, i64 32, !43, i64 34, !35, i64 36, !35, i64 37, !35, i64 38, !35, i64 39, !35, i64 40, !35, i64 41, !35, i64 42, !35, i64 43, !35, i64 44, !40, i64 52, !35, i64 56, !40, i64 60, !40, i64 64, !39, i64 72, !85, i64 80, !45, i64 88, !39, i64 96, !44, i64 104, !44, i64 114, !40, i64 124, !40, i64 128, !35, i64 132, !40, i64 136, !40, i64 140, !35, i64 144, !39, i64 152, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !39, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 216, !35, i64 224, !35, i64 225, !40, i64 228, !39, i64 232, !40, i64 240, !39, i64 248, !39, i64 256, !40, i64 264, !35, i64 268, !39, i64 272, !40, i64 280, !35, i64 284, !39, i64 288, !39, i64 296, !39, i64 304}
!85 = !{!"png_time_struct", !43, i64 0, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6}
!86 = !{!38, !43, i64 584}
!87 = !{!84, !43, i64 34}
!88 = !{!38, !40, i64 660}
!89 = !{!"pngrutil.c:png_get_fixed_point"}
!90 = !{!38, !35, i64 723}
!91 = !{!38, !35, i64 1026}
!92 = !{!93, !40, i64 0}
!93 = !{!"png_xy", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!94 = !{!93, !40, i64 4}
!95 = !{!93, !40, i64 8}
!96 = !{!93, !40, i64 12}
!97 = !{!93, !40, i64 16}
!98 = !{!93, !40, i64 20}
!99 = !{!93, !40, i64 24}
!100 = !{!93, !40, i64 28}
!101 = !{!102, !40, i64 4}
!102 = !{!"png_XYZ", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32}
!103 = !{!102, !40, i64 16}
!104 = !{!102, !40, i64 28}
!105 = !{!40, !40, i64 0}
!106 = !{!38, !43, i64 1028}
!107 = !{!38, !43, i64 1030}
!108 = !{!84, !40, i64 52}
!109 = !{!84, !40, i64 160}
!110 = !{!84, !40, i64 164}
!111 = !{!84, !40, i64 168}
!112 = !{!84, !40, i64 172}
!113 = !{!84, !40, i64 176}
!114 = !{!84, !40, i64 180}
!115 = !{!84, !40, i64 184}
!116 = !{!84, !40, i64 188}
!117 = !{!38, !35, i64 1024}
!118 = distinct !{!118, !52}
!119 = !{!38, !40, i64 1108}
!120 = distinct !{!120, !52}
!121 = !{!122, !35, i64 8}
!122 = !{!"png_sPLT_struct", !39, i64 0, !35, i64 8, !39, i64 16, !40, i64 24}
!123 = !{!122, !40, i64 24}
!124 = !{!122, !39, i64 16}
!125 = !{!126, !43, i64 0}
!126 = !{!"png_sPLT_entry_struct", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8}
!127 = !{!126, !43, i64 2}
!128 = !{!126, !43, i64 4}
!129 = !{!126, !43, i64 8}
!130 = distinct !{!130, !52}
!131 = !{!122, !39, i64 0}
!132 = !{!38, !43, i64 752}
!133 = !{!38, !43, i64 746}
!134 = !{!38, !43, i64 748}
!135 = !{!38, !43, i64 750}
!136 = !{!38, !43, i64 576}
!137 = !{!44, !35, i64 0}
!138 = !{!84, !43, i64 32}
!139 = !{!38, !39, i64 568}
!140 = !{!44, !43, i64 2}
!141 = !{!44, !43, i64 4}
!142 = !{!44, !43, i64 6}
!143 = !{!44, !43, i64 8}
!144 = !{!43, !43, i64 0}
!145 = distinct !{!145, !52}
!146 = distinct !{!146, !52}
!147 = distinct !{!147, !52}
!148 = !{!39, !39, i64 0}
!149 = distinct !{!149, !52}
!150 = distinct !{!150, !52}
!151 = !{!85, !35, i64 6}
!152 = !{!85, !43, i64 0}
!153 = distinct !{!153, !52}
!154 = !{!155, !40, i64 0}
!155 = !{!"png_text_struct", !40, i64 0, !39, i64 8, !39, i64 16, !42, i64 24, !42, i64 32, !39, i64 40, !39, i64 48}
!156 = !{!155, !39, i64 8}
!157 = !{!155, !39, i64 16}
!158 = !{!155, !42, i64 24}
!159 = distinct !{!159, !52}
!160 = distinct !{!160, !52}
!161 = distinct !{!161, !52}
!162 = distinct !{!162, !52}
!163 = !{!155, !39, i64 48}
!164 = !{!155, !39, i64 40}
!165 = !{!155, !42, i64 32}
!166 = !{!38, !39, i64 1000}
!167 = !{!38, !42, i64 1136}
!168 = !{!38, !39, i64 1128}
!169 = !{!38, !35, i64 599}
!170 = !{!38, !39, i64 512}
!171 = !{!38, !35, i64 589}
!172 = !{!38, !42, i64 552}
!173 = !{!38, !40, i64 292}
!174 = distinct !{!174, !52}
!175 = distinct !{!175, !52}
!176 = distinct !{!176, !52}
!177 = distinct !{!177, !52}
!178 = distinct !{!178, !52}
!179 = distinct !{!179, !52}
!180 = distinct !{!180, !52}
!181 = !{!182, !40, i64 0}
!182 = !{!"png_row_info_struct", !40, i64 0, !42, i64 8, !35, i64 16, !35, i64 17, !35, i64 18, !35, i64 19}
!183 = !{!182, !35, i64 19}
!184 = distinct !{!184, !52}
!185 = distinct !{!185, !52}
!186 = distinct !{!186, !52}
!187 = distinct !{!187, !52}
!188 = distinct !{!188, !52}
!189 = distinct !{!189, !52}
!190 = distinct !{!190, !52}
!191 = distinct !{!191, !52}
!192 = !{!182, !42, i64 8}
!193 = !{!"pngrutil.c:png_init_filter_functions"}
!194 = !{!38, !40, i64 492}
!195 = !{!38, !40, i64 472}
!196 = !{!38, !39, i64 504}
!197 = !{!38, !40, i64 488}
!198 = distinct !{!198, !52}
!199 = !{!38, !40, i64 560}
!200 = distinct !{!200, !52}
!201 = !{!38, !35, i64 280}
!202 = !{!38, !35, i64 281}
!203 = !{!38, !35, i64 598}
!204 = !{!38, !42, i64 1152}
!205 = !{!38, !39, i64 1064}
!206 = !{!38, !39, i64 1176}
!207 = !{!"pngrutil.c:png_read_filter_row_sub"}
!208 = distinct !{!208, !52}
!209 = !{!"pngrutil.c:png_read_filter_row_up"}
!210 = distinct !{!210, !52}
!211 = !{!"pngrutil.c:png_read_filter_row_avg"}
!212 = distinct !{!212, !52}
!213 = distinct !{!213, !52}
!214 = !{!"pngrutil.c:png_read_filter_row_paeth_1byte_pixel"}
!215 = distinct !{!215, !52}
!216 = !{!"pngrutil.c:png_read_filter_row_paeth_multibyte_pixel"}
!217 = distinct !{!217, !52}
!218 = distinct !{!218, !52}
