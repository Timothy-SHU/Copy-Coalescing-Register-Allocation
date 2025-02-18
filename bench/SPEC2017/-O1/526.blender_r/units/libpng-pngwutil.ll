; ModuleID = 'libpng/pngwutil.c'
source_filename = "libpng/pngwutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.compression_state = type { ptr, i64, i32, i32, ptr }
%struct.png_sPLT_struct = type { ptr, i8, ptr, i32 }
%struct.png_sPLT_entry_struct = type { i16, i16, i16, i16, i16 }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [38 x i8] c"Invalid bit depth for grayscale image\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid bit depth for RGB image\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid bit depth for paletted image\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid bit depth for grayscale+alpha image\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid bit depth for RGBA image\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid image color type specified\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid compression type specified\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid filter type specified\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Invalid interlace type specified\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Invalid number of colors in palette\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Ignoring request to write a PLTE chunk in grayscale PNG\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Invalid zlib compression method or flags in IDAT\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Invalid sRGB rendering intent specified\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Unknown compression type in iCCP chunk\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Embedded profile length in iCCP chunk is negative\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Embedded profile length too large in iCCP chunk\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Truncating profile to actual length in iCCP chunk\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Invalid sBIT depth specified\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Invalid number of transparent colors specified\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write tRNS chunk out-of-range for bit_depth\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Can't write tRNS with an alpha channel\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Invalid background palette index\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8\00", align 1
@.str.24 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write bKGD chunk out-of-range for bit_depth\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Invalid number of histogram entries specified\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"zero length keyword\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Out of memory while procesing keyword\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid keyword character 0x@1\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"trailing spaces removed from keyword\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"leading spaces removed from keyword\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"extra interior spaces removed from keyword\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Zero length keyword\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"keyword length must be 1 - 79 characters\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"Empty language field in iTXt chunk\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Unrecognized unit type for oFFs chunk\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Unrecognized equation type for pCAL chunk\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Can't write sCAL (buffer too small)\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Unrecognized unit type for pHYs chunk\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"Invalid time specified for tIME chunk\00", align 1
@png_write_finish_row.png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1
@png_write_finish_row.png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"zlib error\00", align 1
@png_do_write_interlace.png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_do_write_interlace.png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"length exceeds PNG maxima\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Unknown compression type @1\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"Invalid zlib compression method or flags in non-IDAT chunk\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"1.2.6\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"IDAT\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"zlib failed to initialize compressor (\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c") version error\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c") stream error\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c") memory error\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c") unknown error\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"zstream already in use (internal error)\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"[no zlib message]\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"zlib failed to reset compressor: @1(@2): @3\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"zstream not in use (internal error)\00", align 1
@reltable.png_zlib_claim = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.png_zlib_claim to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.54 to i64), i64 ptrtoint (ptr @reltable.png_zlib_claim to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.53 to i64), i64 ptrtoint (ptr @reltable.png_zlib_claim to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.54 to i64), i64 ptrtoint (ptr @reltable.png_zlib_claim to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.png_zlib_claim to i64)) to i32)], align 4
@reltable.png_zlib_release = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.56 to i64), i64 ptrtoint (ptr @reltable.png_zlib_release to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.png_zlib_release to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.58 to i64), i64 ptrtoint (ptr @reltable.png_zlib_release to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.png_zlib_release to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.57 to i64), i64 ptrtoint (ptr @reltable.png_zlib_release to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_save_uint_32(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !34
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !34
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !34
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_save_int_32(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !34
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !34
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !34
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_save_uint_16(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sig(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 727905341920923785, ptr %2, align 8
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 18, ptr %3, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 62
  %5 = load i8, ptr %4, align 1, !tbaa !47
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 %6
  %8 = sub nsw i64 8, %6
  call void @png_write_data(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %8) #11
  %9 = load i8, ptr %4, align 1, !tbaa !47
  %10 = icmp ult i8 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = or i32 %13, 4096
  store i32 %14, ptr %12, align 4, !tbaa !48
  br label %15

15:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @png_write_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk_start(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [8 x i8], align 1
  %5 = load i8, ptr %1, align 1, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = getelementptr inbounds i8, ptr %1, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %12 = icmp eq ptr %0, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %3
  %14 = zext i8 %5 to i32
  %15 = shl nuw i32 %14, 24
  %16 = zext i8 %7 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or disjoint i32 %17, %15
  %19 = zext i8 %9 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = zext i8 %11 to i32
  %22 = or disjoint i32 %18, %20
  %23 = or disjoint i32 %22, %21
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %24, align 8, !tbaa !37
  %25 = lshr i32 %2, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %4, align 1, !tbaa !34
  %27 = lshr i32 %2, 16
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %28, ptr %29, align 1, !tbaa !34
  %30 = lshr i32 %2, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = trunc i32 %2 to i8
  %34 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %33, ptr %34, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %4, i64 4
  store i8 %5, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 %7, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %4, i64 6
  store i8 %9, ptr %37, align 1, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %4, i64 7
  store i8 %11, ptr %38, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 8) #11
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %23, ptr %39, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %35, i64 noundef 4) #11
  store i32 66, ptr %24, align 8, !tbaa !37
  br label %40

40:                                               ; preds = %3, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne i64 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #11
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk_end(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = lshr i32 %7, 24
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %2, align 1, !tbaa !34
  %10 = lshr i32 %7, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !34
  %13 = lshr i32 %7, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %14, ptr %15, align 1, !tbaa !34
  %16 = trunc i32 %7 to i8
  %17 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %16, ptr %17, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4) #11
  br label %18

18:                                               ; preds = %1, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_chunk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = load i8, ptr %1, align 1, !tbaa !34
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr inbounds i8, ptr %1, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %17, %20
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef %21, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
  %5 = alloca [8 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %4
  %9 = icmp ugt i64 %3, 4294967295
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #12
  unreachable

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %12, align 8, !tbaa !37
  %13 = lshr i64 %3, 24
  %14 = trunc i64 %13 to i8
  store i8 %14, ptr %5, align 1, !tbaa !34
  %15 = lshr i64 %3, 16
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !34
  %18 = lshr i64 %3, 8
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %19, ptr %20, align 1, !tbaa !34
  %21 = trunc i64 %3 to i8
  %22 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %21, ptr %22, align 1, !tbaa !34
  %23 = getelementptr inbounds i8, ptr %5, i64 4
  %24 = lshr i32 %1, 24
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %23, align 1, !tbaa !34
  %26 = lshr i32 %1, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, ptr %5, i64 5
  store i8 %27, ptr %28, align 1, !tbaa !34
  %29 = lshr i32 %1, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, ptr %5, i64 6
  store i8 %30, ptr %31, align 1, !tbaa !34
  %32 = trunc i32 %1 to i8
  %33 = getelementptr inbounds i8, ptr %5, i64 7
  store i8 %32, ptr %33, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 8) #11
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %1, ptr %34, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %23, i64 noundef 4) #11
  store i32 66, ptr %12, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %35 = icmp ne ptr %2, null
  %36 = icmp ne i64 %3, 0
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %11
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3) #11
  br label %39

39:                                               ; preds = %11, %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %40, align 8, !tbaa !37
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = lshr i32 %42, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %6, align 1, !tbaa !34
  %45 = lshr i32 %42, 16
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %46, ptr %47, align 1, !tbaa !34
  %48 = lshr i32 %42, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = trunc i32 %42 to i8
  %52 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 %51, ptr %52, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %53

53:                                               ; preds = %4, %39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_IHDR(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %9) #11
  switch i32 %4, label %22 [
    i32 0, label %10
    i32 2, label %12
    i32 3, label %14
    i32 4, label %18
    i32 6, label %20
  ]

10:                                               ; preds = %8
  switch i32 %3, label %11 [
    i32 1, label %28
    i32 2, label %28
    i32 4, label %28
    i32 8, label %28
    i32 16, label %28
  ]

11:                                               ; preds = %10
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #12
  unreachable

12:                                               ; preds = %8
  switch i32 %3, label %13 [
    i32 16, label %28
    i32 8, label %28
  ]

13:                                               ; preds = %12
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.1) #12
  unreachable

14:                                               ; preds = %8
  %15 = add i32 %3, -1
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %23, label %17

17:                                               ; preds = %23, %14
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  unreachable

18:                                               ; preds = %8
  switch i32 %3, label %19 [
    i32 16, label %28
    i32 8, label %28
  ]

19:                                               ; preds = %18
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  unreachable

20:                                               ; preds = %8
  switch i32 %3, label %21 [
    i32 16, label %28
    i32 8, label %28
  ]

21:                                               ; preds = %20
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.4) #12
  unreachable

22:                                               ; preds = %8
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  unreachable

23:                                               ; preds = %14
  %24 = trunc i32 %15 to i8
  %25 = lshr i8 -117, %24
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %17, label %28

28:                                               ; preds = %23, %20, %20, %18, %18, %12, %12, %10, %10, %10, %10, %10
  %29 = phi i8 [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 3, %12 ], [ 3, %12 ], [ 2, %18 ], [ 2, %18 ], [ 4, %20 ], [ 4, %20 ], [ 1, %23 ]
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  store i8 %29, ptr %30, align 1, !tbaa !51
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %35 = load i32, ptr %34, align 8, !tbaa !52
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %40 = load i32, ptr %39, align 4, !tbaa !48
  %41 = and i32 %40, 4096
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = and i32 %4, -5
  %45 = icmp ne i32 %44, 2
  %46 = icmp ne i32 %6, 64
  %47 = or i1 %45, %46
  %48 = icmp ne i32 %6, 0
  %49 = and i1 %48, %47
  br i1 %49, label %52, label %53

50:                                               ; preds = %38, %33
  %51 = icmp eq i32 %6, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43, %50
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  br label %53

53:                                               ; preds = %43, %52, %50
  %54 = phi i32 [ 0, %52 ], [ %6, %43 ], [ 0, %50 ]
  %55 = icmp ugt i32 %7, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ 1, %56 ], [ %7, %53 ]
  %59 = trunc i32 %3 to i8
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  store i8 %59, ptr %60, align 8, !tbaa !53
  %61 = trunc i32 %4 to i8
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  store i8 %61, ptr %62, align 1, !tbaa !54
  %63 = trunc i32 %58 to i8
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  store i8 %63, ptr %64, align 4, !tbaa !55
  %65 = trunc i32 %54 to i8
  %66 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  store i8 %65, ptr %66, align 4, !tbaa !56
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 134
  store i8 0, ptr %67, align 8, !tbaa !57
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  store i32 %1, ptr %68, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  store i32 %2, ptr %69, align 4, !tbaa !59
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %71 = load i8, ptr %70, align 1, !tbaa !51
  %72 = mul i8 %71, %59
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  store i8 %72, ptr %73, align 2, !tbaa !60
  %74 = icmp ugt i8 %72, 7
  %75 = zext i32 %1 to i64
  br i1 %74, label %76, label %80

76:                                               ; preds = %57
  %77 = lshr i8 %72, 3
  %78 = zext nneg i8 %77 to i64
  %79 = mul nuw nsw i64 %78, %75
  br label %85

80:                                               ; preds = %57
  %81 = zext nneg i8 %72 to i64
  %82 = mul nuw nsw i64 %81, %75
  %83 = add nuw nsw i64 %82, 7
  %84 = lshr i64 %83, 3
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i64 [ %79, %76 ], [ %84, %80 ]
  %87 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  store i64 %86, ptr %87, align 8, !tbaa !61
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  store i32 %1, ptr %88, align 4, !tbaa !62
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  store i8 %59, ptr %89, align 1, !tbaa !63
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  store i8 %71, ptr %90, align 4, !tbaa !64
  %91 = lshr i32 %1, 24
  %92 = trunc i32 %91 to i8
  store i8 %92, ptr %9, align 1, !tbaa !34
  %93 = lshr i32 %1, 16
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %94, ptr %95, align 1, !tbaa !34
  %96 = lshr i32 %1, 8
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %97, ptr %98, align 1, !tbaa !34
  %99 = trunc i32 %1 to i8
  %100 = getelementptr inbounds i8, ptr %9, i64 3
  store i8 %99, ptr %100, align 1, !tbaa !34
  %101 = getelementptr inbounds i8, ptr %9, i64 4
  %102 = lshr i32 %2, 24
  %103 = trunc i32 %102 to i8
  store i8 %103, ptr %101, align 1, !tbaa !34
  %104 = lshr i32 %2, 16
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds i8, ptr %9, i64 5
  store i8 %105, ptr %106, align 1, !tbaa !34
  %107 = lshr i32 %2, 8
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds i8, ptr %9, i64 6
  store i8 %108, ptr %109, align 1, !tbaa !34
  %110 = trunc i32 %2 to i8
  %111 = getelementptr inbounds i8, ptr %9, i64 7
  store i8 %110, ptr %111, align 1, !tbaa !34
  %112 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 8
  store i8 %59, ptr %112, align 1, !tbaa !34
  %113 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 9
  store i8 %61, ptr %113, align 1, !tbaa !34
  %114 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 10
  store i8 0, ptr %114, align 1, !tbaa !34
  %115 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 11
  store i8 %65, ptr %115, align 1, !tbaa !34
  %116 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 12
  store i8 %63, ptr %116, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1229472850, ptr noundef nonnull %9, i64 noundef 13)
  %117 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 8
  store ptr @png_zalloc, ptr %117, align 8, !tbaa !65
  %118 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 9
  store ptr @png_zfree, ptr %118, align 8, !tbaa !66
  %119 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 10
  store ptr %0, ptr %119, align 8, !tbaa !67
  %120 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %121 = load i8, ptr %120, align 2, !tbaa !68
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %85
  %124 = load i8, ptr %62, align 1, !tbaa !54
  %125 = icmp eq i8 %124, 3
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = load i8, ptr %60, align 8, !tbaa !53
  %128 = icmp ult i8 %127, 8
  %129 = select i1 %128, i8 8, i8 -8
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i8 [ 8, %123 ], [ %129, %126 ]
  store i8 %131, ptr %120, align 2, !tbaa !68
  br label %132

132:                                              ; preds = %130, %85
  %133 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %134 = load i32, ptr %133, align 8, !tbaa !69
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i8, ptr %120, align 2, !tbaa !68
  %139 = icmp ne i8 %138, 8
  %140 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 24
  %141 = zext i1 %139 to i32
  store i32 %141, ptr %140, align 8, !tbaa !70
  br label %142

142:                                              ; preds = %137, %132
  %143 = and i32 %134, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  store i32 -1, ptr %146, align 8, !tbaa !71
  br label %147

147:                                              ; preds = %145, %142
  %148 = and i32 %134, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  store i32 8, ptr %151, align 4, !tbaa !72
  br label %152

152:                                              ; preds = %150, %147
  %153 = and i32 %134, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  store i32 15, ptr %156, align 8, !tbaa !73
  br label %157

157:                                              ; preds = %155, %152
  %158 = and i32 %134, 16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  store i32 8, ptr %161, align 4, !tbaa !74
  br label %162

162:                                              ; preds = %160, %157
  %163 = and i32 %134, 16777216
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 29
  store i32 0, ptr %166, align 4, !tbaa !75
  br label %167

167:                                              ; preds = %165, %162
  %168 = and i32 %134, 33554432
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  %172 = load i32, ptr %171, align 8, !tbaa !71
  %173 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 25
  store i32 %172, ptr %173, align 4, !tbaa !76
  br label %174

174:                                              ; preds = %170, %167
  %175 = and i32 %134, 67108864
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  %179 = load i32, ptr %178, align 4, !tbaa !72
  %180 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 28
  store i32 %179, ptr %180, align 8, !tbaa !77
  br label %181

181:                                              ; preds = %177, %174
  %182 = and i32 %134, 134217728
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  %186 = load i32, ptr %185, align 8, !tbaa !73
  %187 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 27
  store i32 %186, ptr %187, align 4, !tbaa !78
  br label %188

188:                                              ; preds = %184, %181
  %189 = and i32 %134, 268435456
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  %193 = load i32, ptr %192, align 4, !tbaa !74
  %194 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 26
  store i32 %193, ptr %194, align 8, !tbaa !79
  br label %195

195:                                              ; preds = %191, %188
  %196 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  store i32 0, ptr %196, align 4, !tbaa !80
  %197 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  store i32 1, ptr %197, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %9) #11
  ret void
}

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @png_zalloc(ptr noundef, i32 noundef, i32 noundef) #4

declare void @png_zfree(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_PLTE(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = and i32 %8, 1
  %10 = or i32 %9, %2
  %11 = icmp eq i32 %10, 0
  %12 = icmp ugt i32 %2, 256
  %13 = or i1 %12, %11
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %15 = load i8, ptr %14, align 1, !tbaa !54
  br i1 %13, label %16, label %20

16:                                               ; preds = %3
  %17 = icmp eq i8 %15, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.9) #12
  unreachable

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.9) #11
  br label %83

20:                                               ; preds = %3
  %21 = and i8 %15, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  br label %83

24:                                               ; preds = %20
  %25 = trunc i32 %2 to i16
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  store i16 %25, ptr %26, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %27 = icmp eq ptr %0, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = mul nuw nsw i32 %2, 3
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %30, align 8, !tbaa !37
  %31 = lshr i32 %29, 24
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %4, align 1, !tbaa !34
  %33 = lshr i32 %29, 16
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %34, ptr %35, align 1, !tbaa !34
  %36 = lshr i32 %29, 8
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = trunc i32 %29 to i8
  %40 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %4, i64 4
  store i8 80, ptr %41, align 1, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 76, ptr %42, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %4, i64 6
  store i8 84, ptr %43, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %4, i64 7
  store i8 69, ptr %44, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 8) #11
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1347179589, ptr %45, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %41, i64 noundef 4) #11
  store i32 66, ptr %30, align 8, !tbaa !37
  br label %46

46:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 1
  %50 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 2
  br label %51

51:                                               ; preds = %48, %60
  %52 = phi ptr [ %1, %48 ], [ %62, %60 ]
  %53 = phi i32 [ 0, %48 ], [ %61, %60 ]
  %54 = load i8, ptr %52, align 1, !tbaa !82
  store i8 %54, ptr %6, align 1, !tbaa !34
  %55 = getelementptr inbounds %struct.png_color_struct, ptr %52, i64 0, i32 1
  %56 = load i8, ptr %55, align 1, !tbaa !84
  store i8 %56, ptr %49, align 1, !tbaa !34
  %57 = getelementptr inbounds %struct.png_color_struct, ptr %52, i64 0, i32 2
  %58 = load i8, ptr %57, align 1, !tbaa !85
  store i8 %58, ptr %50, align 1, !tbaa !34
  br i1 %27, label %60, label %59

59:                                               ; preds = %51
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 3) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 3) #11
  br label %60

60:                                               ; preds = %51, %59
  %61 = add nuw i32 %53, 1
  %62 = getelementptr inbounds %struct.png_color_struct, ptr %52, i64 1
  %63 = icmp eq i32 %61, %2
  br i1 %63, label %64, label %51, !llvm.loop !86

64:                                               ; preds = %60, %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  br i1 %27, label %79, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %66, align 8, !tbaa !37
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = lshr i32 %68, 24
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %5, align 1, !tbaa !34
  %71 = lshr i32 %68, 16
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %72, ptr %73, align 1, !tbaa !34
  %74 = lshr i32 %68, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %75, ptr %76, align 1, !tbaa !34
  %77 = trunc i32 %68 to i8
  %78 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %77, ptr %78, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 4) #11
  br label %79

79:                                               ; preds = %64, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %80 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %81 = load i32, ptr %80, align 4, !tbaa !48
  %82 = or i32 %81, 2
  store i32 %82, ptr %80, align 4, !tbaa !48
  br label %83

83:                                               ; preds = %79, %23, %19
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_IDAT(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %85

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 134
  %10 = load i8, ptr %9, align 8, !tbaa !57
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %8
  %13 = load i8, ptr %1, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 15
  %16 = icmp eq i32 %15, 8
  %17 = and i32 %14, 240
  %18 = icmp ult i32 %17, 113
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %12
  %21 = icmp ugt i64 %2, 1
  br i1 %21, label %22, label %85

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %24 = load i32, ptr %23, align 4, !tbaa !59
  %25 = icmp ult i32 %24, 16384
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = icmp ult i32 %28, 16384
  br i1 %29, label %30, label %85

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %32 = load i8, ptr %31, align 1, !tbaa !51
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %28, %33
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %36 = load i8, ptr %35, align 8, !tbaa !53
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %34, %37
  %39 = add nuw nsw i32 %38, 15
  %40 = lshr i32 %39, 3
  %41 = mul i32 %40, %24
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %43 = load i8, ptr %42, align 4, !tbaa !55
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %30
  %46 = add nuw nsw i32 %24, 7
  %47 = lshr i32 %46, 3
  %48 = icmp ult i8 %36, 8
  %49 = select i1 %48, i32 12, i32 6
  %50 = mul nuw nsw i32 %49, %47
  %51 = add i32 %41, %50
  br label %52

52:                                               ; preds = %45, %30
  %53 = phi i32 [ %51, %45 ], [ %41, %30 ]
  %54 = lshr i32 %14, 4
  %55 = shl nuw nsw i32 128, %54
  %56 = icmp ule i32 %53, %55
  %57 = icmp ugt i32 %55, 255
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %52, %59
  %60 = phi i32 [ %63, %59 ], [ %55, %52 ]
  %61 = phi i32 [ %62, %59 ], [ %54, %52 ]
  %62 = add nsw i32 %61, -1
  %63 = lshr i32 %60, 1
  %64 = icmp ule i32 %53, %63
  %65 = icmp ugt i32 %60, 511
  %66 = and i1 %64, %65
  br i1 %66, label %59, label %67, !llvm.loop !89

67:                                               ; preds = %59, %52
  %68 = phi i32 [ %54, %52 ], [ %62, %59 ]
  %69 = shl i32 %68, 4
  %70 = or disjoint i32 %69, 8
  %71 = icmp eq i32 %70, %14
  br i1 %71, label %85, label %72

72:                                               ; preds = %67
  %73 = trunc i32 %70 to i8
  store i8 %73, ptr %1, align 1, !tbaa !34
  %74 = getelementptr inbounds i8, ptr %1, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = and i8 %75, -32
  %77 = zext i8 %76 to i32
  %78 = shl i32 %70, 8
  %79 = or disjoint i32 %78, %77
  %80 = urem i32 %79, 31
  %81 = trunc i32 %80 to i8
  %82 = or disjoint i8 %76, %81
  %83 = xor i8 %82, 31
  store i8 %83, ptr %74, align 1, !tbaa !34
  br label %85

84:                                               ; preds = %12
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #12
  unreachable

85:                                               ; preds = %26, %22, %20, %72, %67, %8, %3
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1229209940, ptr noundef %1, i64 noundef %2)
  %86 = load i32, ptr %4, align 4, !tbaa !48
  %87 = or i32 %86, 4
  store i32 %87, ptr %4, align 4, !tbaa !48
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !90
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %89, ptr %90, align 8, !tbaa !91
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %92 = load i32, ptr %91, align 8, !tbaa !92
  %93 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %92, ptr %93, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_IEND(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1229278788, ptr noundef null, i64 noundef 0)
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !48
  %4 = or i32 %3, 16
  store i32 %4, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_gAMA_fixed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !34
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !34
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !34
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1732332865, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sRGB(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  %4 = icmp sgt i32 %1, 3
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  br label %6

6:                                                ; preds = %5, %2
  %7 = trunc i32 %1 to i8
  store i8 %7, ptr %3, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1934772034, ptr noundef nonnull %3, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [8 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca ptr, align 8
  %9 = alloca %struct.compression_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %10 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8), !range !94
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %109, label %12

12:                                               ; preds = %5
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.13) #11
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  %17 = select i1 %16, i32 0, i32 %4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i8, ptr %3, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 %21, 24
  %23 = getelementptr inbounds i8, ptr %3, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %26, %22
  %28 = getelementptr inbounds i8, ptr %3, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or disjoint i32 %27, %31
  %33 = getelementptr inbounds i8, ptr %3, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %32, %35
  br label %37

37:                                               ; preds = %19, %15
  %38 = phi i32 [ %36, %19 ], [ 0, %15 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  %41 = load ptr, ptr %8, align 8, !tbaa !95
  br label %107

42:                                               ; preds = %37
  %43 = icmp slt i32 %17, %38
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  %45 = load ptr, ptr %8, align 8, !tbaa !95
  br label %107

46:                                               ; preds = %42
  %47 = icmp sgt i32 %17, %38
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %38, %48 ], [ %17, %46 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = zext nneg i32 %50 to i64
  %54 = call fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef %3, i64 noundef %53, i32 noundef 0, ptr noundef nonnull %9)
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %54, %52 ], [ 0, %49 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %57 = icmp eq ptr %0, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %55
  %59 = trunc i64 %10 to i32
  %60 = add nuw nsw i32 %59, 2
  %61 = add i32 %60, %56
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %62, align 8, !tbaa !37
  %63 = lshr i32 %61, 24
  %64 = trunc i32 %63 to i8
  store i8 %64, ptr %6, align 1, !tbaa !34
  %65 = lshr i32 %61, 16
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %66, ptr %67, align 1, !tbaa !34
  %68 = lshr i32 %61, 8
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %69, ptr %70, align 1, !tbaa !34
  %71 = trunc i32 %61 to i8
  %72 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 %71, ptr %72, align 1, !tbaa !34
  %73 = getelementptr inbounds i8, ptr %6, i64 4
  store i8 105, ptr %73, align 1, !tbaa !34
  %74 = getelementptr inbounds i8, ptr %6, i64 5
  store i8 67, ptr %74, align 1, !tbaa !34
  %75 = getelementptr inbounds i8, ptr %6, i64 6
  store i8 67, ptr %75, align 1, !tbaa !34
  %76 = getelementptr inbounds i8, ptr %6, i64 7
  store i8 80, ptr %76, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 8) #11
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1766015824, ptr %77, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %73, i64 noundef 4) #11
  store i32 66, ptr %62, align 8, !tbaa !37
  br label %78

78:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %79 = load ptr, ptr %8, align 8, !tbaa !95
  %80 = getelementptr i8, ptr %79, i64 %10
  %81 = getelementptr i8, ptr %80, i64 1
  store i8 0, ptr %81, align 1, !tbaa !34
  %82 = icmp ne ptr %0, null
  %83 = icmp ne ptr %79, null
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = add nuw nsw i64 %10, 2
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %79, i64 noundef %86) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %79, i64 noundef %86) #11
  br label %87

87:                                               ; preds = %78, %85
  %88 = icmp eq i32 %56, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = sext i32 %56 to i64
  call fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr noundef nonnull %9, i64 noundef %90)
  br label %91

91:                                               ; preds = %89, %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  br i1 %57, label %106, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %93, align 8, !tbaa !37
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = lshr i32 %95, 24
  %97 = trunc i32 %96 to i8
  store i8 %97, ptr %7, align 1, !tbaa !34
  %98 = lshr i32 %95, 16
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %99, ptr %100, align 1, !tbaa !34
  %101 = lshr i32 %95, 8
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %102, ptr %103, align 1, !tbaa !34
  %104 = trunc i32 %95 to i8
  %105 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %104, ptr %105, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef 4) #11
  br label %106

106:                                              ; preds = %91, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %107

107:                                              ; preds = %40, %44, %106
  %108 = phi ptr [ %79, %106 ], [ %45, %44 ], [ %41, %40 ]
  call void @png_free(ptr noundef %0, ptr noundef %108) #11
  br label %109

109:                                              ; preds = %107, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @png_check_keyword(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = alloca [8 x [32 x i8]], align 16
  store ptr null, ptr %2, align 8, !tbaa !95
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.26) #11
  br label %114

10:                                               ; preds = %6
  %11 = add i64 %7, 2
  %12 = and i64 %11, 4294967295
  %13 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %12) #11
  store ptr %13, ptr %2, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i8, ptr %1, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %19

18:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.27) #11
  br label %114

19:                                               ; preds = %15, %30
  %20 = phi i8 [ %33, %30 ], [ %16, %15 ]
  %21 = phi ptr [ %32, %30 ], [ %13, %15 ]
  %22 = phi ptr [ %31, %30 ], [ %1, %15 ]
  %23 = icmp ult i8 %20, 32
  %24 = add i8 %20, -127
  %25 = icmp ult i8 %24, 34
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #11
  %28 = zext i8 %20 to i64
  call void @png_warning_parameter_unsigned(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 4, i64 noundef %28) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.28) #11
  store i8 32, ptr %21, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #11
  br label %30

29:                                               ; preds = %19
  store i8 %20, ptr %21, align 1, !tbaa !34
  br label %30

30:                                               ; preds = %27, %29
  %31 = getelementptr inbounds i8, ptr %22, i64 1
  %32 = getelementptr inbounds i8, ptr %21, i64 1
  %33 = load i8, ptr %31, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %19, !llvm.loop !96

35:                                               ; preds = %30, %15
  %36 = phi ptr [ %13, %15 ], [ %32, %30 ]
  store i8 0, ptr %36, align 1, !tbaa !34
  %37 = load ptr, ptr %2, align 8, !tbaa !95
  %38 = getelementptr inbounds i8, ptr %37, i64 %7
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = icmp eq i8 %40, 32
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.29) #11
  %43 = load i8, ptr %39, align 1, !tbaa !34
  %44 = icmp eq i8 %43, 32
  br i1 %44, label %45, label %52

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %48, %45 ], [ %39, %42 ]
  %47 = phi i64 [ %49, %45 ], [ %7, %42 ]
  %48 = getelementptr inbounds i8, ptr %46, i64 -1
  store i8 0, ptr %46, align 1, !tbaa !34
  %49 = add i64 %47, -1
  %50 = load i8, ptr %48, align 1, !tbaa !34
  %51 = icmp eq i8 %50, 32
  br i1 %51, label %45, label %52, !llvm.loop !97

52:                                               ; preds = %45, %42, %35
  %53 = phi i64 [ %7, %35 ], [ %7, %42 ], [ %49, %45 ]
  %54 = load ptr, ptr %2, align 8, !tbaa !95
  %55 = load i8, ptr %54, align 1, !tbaa !34
  %56 = icmp eq i8 %55, 32
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.30) #11
  %58 = load i8, ptr %54, align 1, !tbaa !34
  %59 = icmp eq i8 %58, 32
  br i1 %59, label %60, label %67

60:                                               ; preds = %57, %60
  %61 = phi ptr [ %63, %60 ], [ %54, %57 ]
  %62 = phi i64 [ %64, %60 ], [ %53, %57 ]
  %63 = getelementptr inbounds i8, ptr %61, i64 1
  %64 = add i64 %62, -1
  %65 = load i8, ptr %63, align 1, !tbaa !34
  %66 = icmp eq i8 %65, 32
  br i1 %66, label %60, label %67, !llvm.loop !98

67:                                               ; preds = %60, %57, %52
  %68 = phi i64 [ %53, %52 ], [ %53, %57 ], [ %64, %60 ]
  %69 = phi ptr [ %54, %52 ], [ %54, %57 ], [ %63, %60 ]
  %70 = load ptr, ptr %2, align 8, !tbaa !95
  %71 = load i8, ptr %69, align 1, !tbaa !34
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %67, %90
  %74 = phi i8 [ %96, %90 ], [ %71, %67 ]
  %75 = phi i32 [ %94, %90 ], [ 0, %67 ]
  %76 = phi i32 [ %93, %90 ], [ 0, %67 ]
  %77 = phi ptr [ %92, %90 ], [ %70, %67 ]
  %78 = phi ptr [ %95, %90 ], [ %69, %67 ]
  %79 = phi i64 [ %91, %90 ], [ %68, %67 ]
  %80 = icmp eq i8 %74, 32
  %81 = icmp eq i32 %76, 0
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %74, ptr %77, align 1, !tbaa !34
  br label %90

85:                                               ; preds = %73
  br i1 %80, label %86, label %88

86:                                               ; preds = %85
  %87 = add i64 %79, -1
  br label %90

88:                                               ; preds = %85
  %89 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %74, ptr %77, align 1, !tbaa !34
  br label %90

90:                                               ; preds = %83, %88, %86
  %91 = phi i64 [ %79, %83 ], [ %87, %86 ], [ %79, %88 ]
  %92 = phi ptr [ %84, %83 ], [ %77, %86 ], [ %89, %88 ]
  %93 = phi i32 [ 1, %83 ], [ %76, %86 ], [ 0, %88 ]
  %94 = phi i32 [ %75, %83 ], [ 1, %86 ], [ %75, %88 ]
  %95 = getelementptr inbounds i8, ptr %78, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !34
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %73, !llvm.loop !99

98:                                               ; preds = %90
  %99 = icmp eq i32 %94, 0
  br label %100

100:                                              ; preds = %98, %67
  %101 = phi i64 [ %68, %67 ], [ %91, %98 ]
  %102 = phi ptr [ %70, %67 ], [ %92, %98 ]
  %103 = phi i1 [ true, %67 ], [ %99, %98 ]
  store i8 0, ptr %102, align 1, !tbaa !34
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.31) #11
  br label %105

105:                                              ; preds = %104, %100
  %106 = icmp eq i64 %101, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = load ptr, ptr %2, align 8, !tbaa !95
  call void @png_free(ptr noundef %0, ptr noundef %108) #11
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.32) #11
  br label %109

109:                                              ; preds = %107, %105
  %110 = icmp ugt i64 %101, 79
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.33) #11
  %112 = load ptr, ptr %2, align 8, !tbaa !95
  %113 = getelementptr inbounds i8, ptr %112, i64 79
  store i8 0, ptr %113, align 1, !tbaa !34
  br label %114

114:                                              ; preds = %109, %111, %18, %9
  %115 = phi i64 [ 0, %9 ], [ 0, %18 ], [ 79, %111 ], [ %101, %109 ]
  ret i64 %115
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #1 {
  %6 = alloca [8 x [32 x i8]], align 16
  %7 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 %2, ptr %10, align 8, !tbaa !102
  %11 = icmp eq i32 %3, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  store ptr %1, ptr %4, align 8, !tbaa !100
  %13 = trunc i64 %2 to i32
  br label %126

14:                                               ; preds = %5
  %15 = icmp sgt i32 %3, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, i32 noundef %3) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.42) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #11
  br label %17

17:                                               ; preds = %16, %14
  call fastcc void @png_zlib_claim(ptr noundef %0, i32 noundef 2)
  %18 = trunc i64 %2 to i32
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 %18, ptr %20, align 8, !tbaa !103
  store ptr %1, ptr %19, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %22, ptr %23, align 8, !tbaa !93
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !91
  br label %27

27:                                               ; preds = %71, %17
  %28 = call i32 @deflate(ptr noundef nonnull %19, i32 noundef 0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @png_error(ptr noundef %0, ptr noundef nonnull %32) #12
  unreachable

35:                                               ; preds = %30
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  unreachable

36:                                               ; preds = %27
  %37 = load i32, ptr %23, align 8, !tbaa !93
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load i32, ptr %7, align 8, !tbaa !106
  %41 = load i32, ptr %8, align 4, !tbaa !107
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = add nsw i32 %40, 4
  store i32 %44, ptr %8, align 4, !tbaa !107
  %45 = load ptr, ptr %9, align 8, !tbaa !108
  %46 = icmp eq ptr %45, null
  %47 = sext i32 %44 to i64
  %48 = shl nsw i64 %47, 3
  %49 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %48) #11
  store ptr %49, ptr %9, align 8, !tbaa !108
  br i1 %46, label %53, label %50

50:                                               ; preds = %43
  %51 = sext i32 %41 to i64
  %52 = shl nsw i64 %51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr nonnull align 8 %45, i64 %52, i1 false)
  call void @png_free(ptr noundef %0, ptr noundef nonnull %45) #11
  br label %53

53:                                               ; preds = %43, %50, %39
  %54 = load i32, ptr %21, align 8, !tbaa !92
  %55 = zext i32 %54 to i64
  %56 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %55) #11
  %57 = load ptr, ptr %9, align 8, !tbaa !108
  %58 = load i32, ptr %7, align 8, !tbaa !106
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59
  store ptr %56, ptr %60, align 8, !tbaa !95
  %61 = load ptr, ptr %9, align 8, !tbaa !108
  %62 = getelementptr inbounds ptr, ptr %61, i64 %59
  %63 = load ptr, ptr %62, align 8, !tbaa !95
  %64 = load ptr, ptr %24, align 8, !tbaa !90
  %65 = load i32, ptr %21, align 8, !tbaa !92
  %66 = zext i32 %65 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %64, i64 %66, i1 false)
  %67 = load i32, ptr %7, align 8, !tbaa !106
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %7, align 8, !tbaa !106
  %69 = load i32, ptr %21, align 8, !tbaa !92
  store i32 %69, ptr %23, align 8, !tbaa !93
  %70 = load ptr, ptr %24, align 8, !tbaa !90
  store ptr %70, ptr %26, align 8, !tbaa !91
  br label %71

71:                                               ; preds = %36, %53
  %72 = load i32, ptr %20, align 8, !tbaa !103
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %27, !llvm.loop !109

74:                                               ; preds = %71, %117
  %75 = call i32 @deflate(ptr noundef nonnull %19, i32 noundef 4) #11
  switch i32 %75, label %111 [
    i32 0, label %76
    i32 1, label %119
  ]

76:                                               ; preds = %74
  %77 = load i32, ptr %23, align 8, !tbaa !93
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %76
  %80 = load i32, ptr %7, align 8, !tbaa !106
  %81 = load i32, ptr %8, align 4, !tbaa !107
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = add nsw i32 %80, 4
  store i32 %84, ptr %8, align 4, !tbaa !107
  %85 = load ptr, ptr %9, align 8, !tbaa !108
  %86 = icmp eq ptr %85, null
  %87 = sext i32 %84 to i64
  %88 = shl nsw i64 %87, 3
  %89 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %88) #11
  store ptr %89, ptr %9, align 8, !tbaa !108
  br i1 %86, label %93, label %90

90:                                               ; preds = %83
  %91 = sext i32 %81 to i64
  %92 = shl nsw i64 %91, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %89, ptr nonnull align 8 %85, i64 %92, i1 false)
  call void @png_free(ptr noundef %0, ptr noundef nonnull %85) #11
  br label %93

93:                                               ; preds = %83, %90, %79
  %94 = load i32, ptr %21, align 8, !tbaa !92
  %95 = zext i32 %94 to i64
  %96 = call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %95) #11
  %97 = load ptr, ptr %9, align 8, !tbaa !108
  %98 = load i32, ptr %7, align 8, !tbaa !106
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  store ptr %96, ptr %100, align 8, !tbaa !95
  %101 = load ptr, ptr %9, align 8, !tbaa !108
  %102 = getelementptr inbounds ptr, ptr %101, i64 %99
  %103 = load ptr, ptr %102, align 8, !tbaa !95
  %104 = load ptr, ptr %24, align 8, !tbaa !90
  %105 = load i32, ptr %21, align 8, !tbaa !92
  %106 = zext i32 %105 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %103, ptr align 1 %104, i64 %106, i1 false)
  %107 = load i32, ptr %7, align 8, !tbaa !106
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %7, align 8, !tbaa !106
  %109 = load i32, ptr %21, align 8, !tbaa !92
  store i32 %109, ptr %23, align 8, !tbaa !93
  %110 = load ptr, ptr %24, align 8, !tbaa !90
  store ptr %110, ptr %26, align 8, !tbaa !91
  br label %117

111:                                              ; preds = %74
  %112 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !105
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  call void @png_error(ptr noundef %0, ptr noundef nonnull %113) #12
  unreachable

116:                                              ; preds = %111
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  unreachable

117:                                              ; preds = %93, %76
  %118 = icmp eq i32 %75, 1
  br i1 %118, label %119, label %74, !llvm.loop !110

119:                                              ; preds = %74, %117
  %120 = load i32, ptr %21, align 8, !tbaa !92
  %121 = load i32, ptr %7, align 8, !tbaa !106
  %122 = mul i32 %121, %120
  %123 = load i32, ptr %23, align 8, !tbaa !93
  %124 = call i32 @llvm.usub.sat.i32(i32 %120, i32 %123)
  %125 = add i32 %124, %122
  br label %126

126:                                              ; preds = %119, %12
  %127 = phi i32 [ %13, %12 ], [ %125, %119 ]
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %1, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i64 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %139

10:                                               ; preds = %6
  tail call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %2) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %2) #11
  br label %139

11:                                               ; preds = %3
  %12 = icmp ugt i64 %2, 1
  br i1 %12, label %13, label %88

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !102
  %16 = icmp ult i64 %15, 16384
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !106
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  br label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 8
  %37 = and i32 %34, 240
  %38 = icmp ult i32 %37, 113
  %39 = and i1 %36, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %30
  %41 = lshr i32 %34, 4
  %42 = shl nuw nsw i32 128, %41
  %43 = zext nneg i32 %42 to i64
  %44 = icmp ule i64 %15, %43
  %45 = icmp ugt i32 %42, 255
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %56

47:                                               ; preds = %40, %47
  %48 = phi i32 [ %51, %47 ], [ %42, %40 ]
  %49 = phi i32 [ %50, %47 ], [ %41, %40 ]
  %50 = add nsw i32 %49, -1
  %51 = lshr i32 %48, 1
  %52 = zext nneg i32 %51 to i64
  %53 = icmp ule i64 %15, %52
  %54 = icmp ugt i32 %48, 511
  %55 = and i1 %54, %53
  br i1 %55, label %47, label %56, !llvm.loop !111

56:                                               ; preds = %47, %40
  %57 = phi i32 [ %41, %40 ], [ %50, %47 ]
  %58 = shl i32 %57, 4
  %59 = or disjoint i32 %58, 8
  br i1 %24, label %70, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !108
  %63 = load ptr, ptr %62, align 8, !tbaa !95
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %59, %65
  br i1 %66, label %88, label %67

67:                                               ; preds = %60
  %68 = trunc i32 %59 to i8
  store i8 %68, ptr %63, align 1, !tbaa !34
  %69 = load ptr, ptr %61, align 8, !tbaa !108
  br label %75

70:                                               ; preds = %56
  %71 = trunc i32 %59 to i8
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  store i8 %71, ptr %73, align 1, !tbaa !34
  br label %75

74:                                               ; preds = %30
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.43) #12
  unreachable

75:                                               ; preds = %67, %70
  %76 = phi ptr [ %69, %67 ], [ %72, %70 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !95
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = and i8 %79, -32
  %81 = zext i8 %80 to i32
  %82 = shl i32 %59, 8
  %83 = or disjoint i32 %82, %81
  %84 = urem i32 %83, 31
  %85 = trunc i32 %84 to i8
  %86 = or disjoint i8 %80, %85
  %87 = xor i8 %86, 31
  store i8 %87, ptr %78, align 1, !tbaa !34
  br label %88

88:                                               ; preds = %75, %60, %17, %13, %11
  %89 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !106
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %95 = icmp ne ptr %0, null
  br label %96

96:                                               ; preds = %92, %108
  %97 = phi i64 [ 0, %92 ], [ %112, %108 ]
  %98 = load ptr, ptr %93, align 8, !tbaa !108
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !95
  %101 = load i32, ptr %94, align 8, !tbaa !92
  %102 = icmp ne ptr %100, null
  %103 = and i1 %95, %102
  %104 = icmp ne i32 %101, 0
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = zext i32 %101 to i64
  tail call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %100, i64 noundef %107) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %100, i64 noundef %107) #11
  br label %108

108:                                              ; preds = %96, %106
  %109 = load ptr, ptr %93, align 8, !tbaa !108
  %110 = getelementptr inbounds ptr, ptr %109, i64 %97
  %111 = load ptr, ptr %110, align 8, !tbaa !95
  tail call void @png_free(ptr noundef %0, ptr noundef %111) #11
  %112 = add nuw nsw i64 %97, 1
  %113 = load i32, ptr %89, align 8, !tbaa !106
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %96, label %116, !llvm.loop !112

116:                                              ; preds = %108, %88
  %117 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !107
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !108
  tail call void @png_free(ptr noundef %0, ptr noundef %122) #11
  br label %123

123:                                              ; preds = %120, %116
  %124 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %125 = load i32, ptr %124, align 8, !tbaa !93
  %126 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %127 = load i32, ptr %126, align 8, !tbaa !92
  %128 = icmp ult i32 %125, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !90
  %132 = icmp ne ptr %0, null
  %133 = icmp ne ptr %131, null
  %134 = and i1 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = sub i32 %127, %125
  %137 = zext i32 %136 to i64
  tail call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %131, i64 noundef %137) #11
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %131, i64 noundef %137) #11
  br label %138

138:                                              ; preds = %135, %129, %123
  tail call fastcc void @png_zlib_release(ptr noundef %0)
  br label %139

139:                                              ; preds = %10, %6, %138
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sPLT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [8 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca ptr, align 8
  %6 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.png_sPLT_struct, ptr %1, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !113
  %9 = icmp eq i8 %8, 8
  %10 = select i1 %9, i64 6, i64 10
  %11 = getelementptr inbounds %struct.png_sPLT_struct, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = load ptr, ptr %1, align 8, !tbaa !116
  %14 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %5), !range !94
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %136, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %17 = icmp eq ptr %0, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %14, 2
  %20 = zext i32 %12 to i64
  %21 = mul nuw nsw i64 %10, %20
  %22 = add nuw nsw i64 %19, %21
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %23, align 8, !tbaa !37
  %24 = lshr i64 %22, 24
  %25 = trunc i64 %24 to i8
  store i8 %25, ptr %3, align 1, !tbaa !34
  %26 = lshr i64 %22, 16
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !34
  %29 = lshr i64 %22, 8
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %30, ptr %31, align 1, !tbaa !34
  %32 = trunc i64 %22 to i8
  %33 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %32, ptr %33, align 1, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %3, i64 4
  store i8 115, ptr %34, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %3, i64 5
  store i8 80, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %3, i64 6
  store i8 76, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %3, i64 7
  store i8 84, ptr %37, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 8) #11
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1934642260, ptr %38, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %34, i64 noundef 4) #11
  store i32 66, ptr %23, align 8, !tbaa !37
  br label %39

39:                                               ; preds = %16, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %40 = load ptr, ptr %5, align 8, !tbaa !95
  %41 = icmp ne ptr %0, null
  %42 = icmp ne ptr %40, null
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = add nuw nsw i64 %14, 1
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %40, i64 noundef %45) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %40, i64 noundef %45) #11
  br label %46

46:                                               ; preds = %39, %44
  br i1 %17, label %48, label %47

47:                                               ; preds = %46
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef 1) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef 1) #11
  br label %48

48:                                               ; preds = %46, %47
  %49 = getelementptr inbounds %struct.png_sPLT_struct, ptr %1, i64 0, i32 2
  %50 = load i32, ptr %11, align 8, !tbaa !115
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %120

52:                                               ; preds = %48
  %53 = load ptr, ptr %49, align 8, !tbaa !117
  %54 = getelementptr inbounds i8, ptr %6, i64 1
  %55 = getelementptr inbounds i8, ptr %6, i64 2
  %56 = getelementptr inbounds i8, ptr %6, i64 3
  %57 = getelementptr inbounds i8, ptr %6, i64 4
  %58 = getelementptr inbounds i8, ptr %6, i64 5
  %59 = getelementptr inbounds i8, ptr %6, i64 6
  %60 = getelementptr inbounds i8, ptr %6, i64 7
  %61 = getelementptr inbounds i8, ptr %6, i64 8
  %62 = getelementptr inbounds i8, ptr %6, i64 9
  %63 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 1
  %64 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 2
  %65 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3
  %66 = getelementptr inbounds i8, ptr %6, i64 4
  %67 = getelementptr inbounds i8, ptr %6, i64 5
  br label %68

68:                                               ; preds = %52, %113
  %69 = phi ptr [ %53, %52 ], [ %114, %113 ]
  %70 = load i8, ptr %7, align 8, !tbaa !113
  %71 = icmp eq i8 %70, 8
  %72 = load i16, ptr %69, align 2, !tbaa !118
  br i1 %71, label %73, label %83

73:                                               ; preds = %68
  %74 = trunc i16 %72 to i8
  store i8 %74, ptr %6, align 1, !tbaa !34
  %75 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !120
  %77 = trunc i16 %76 to i8
  store i8 %77, ptr %63, align 1, !tbaa !34
  %78 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !121
  %80 = trunc i16 %79 to i8
  store i8 %80, ptr %64, align 1, !tbaa !34
  %81 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !122
  br label %101

83:                                               ; preds = %68
  %84 = lshr i16 %72, 8
  %85 = trunc i16 %84 to i8
  store i8 %85, ptr %6, align 1, !tbaa !34
  %86 = trunc i16 %72 to i8
  store i8 %86, ptr %54, align 1, !tbaa !34
  %87 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !120
  %89 = lshr i16 %88, 8
  %90 = trunc i16 %89 to i8
  store i8 %90, ptr %55, align 1, !tbaa !34
  %91 = trunc i16 %88 to i8
  store i8 %91, ptr %56, align 1, !tbaa !34
  %92 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 2
  %93 = load i16, ptr %92, align 2, !tbaa !121
  %94 = lshr i16 %93, 8
  %95 = trunc i16 %94 to i8
  store i8 %95, ptr %57, align 1, !tbaa !34
  %96 = trunc i16 %93 to i8
  store i8 %96, ptr %58, align 1, !tbaa !34
  %97 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !122
  %99 = lshr i16 %98, 8
  %100 = trunc i16 %99 to i8
  store i8 %100, ptr %59, align 1, !tbaa !34
  br label %101

101:                                              ; preds = %83, %73
  %102 = phi i16 [ %98, %83 ], [ %82, %73 ]
  %103 = phi ptr [ %60, %83 ], [ %65, %73 ]
  %104 = phi ptr [ %61, %83 ], [ %66, %73 ]
  %105 = phi ptr [ %62, %83 ], [ %67, %73 ]
  %106 = trunc i16 %102 to i8
  store i8 %106, ptr %103, align 1, !tbaa !34
  %107 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 0, i32 4
  %108 = load i16, ptr %107, align 2, !tbaa !123
  %109 = lshr i16 %108, 8
  %110 = trunc i16 %109 to i8
  store i8 %110, ptr %104, align 1, !tbaa !34
  %111 = trunc i16 %108 to i8
  store i8 %111, ptr %105, align 1, !tbaa !34
  br i1 %17, label %113, label %112

112:                                              ; preds = %101
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %10) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %10) #11
  br label %113

113:                                              ; preds = %101, %112
  %114 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %69, i64 1
  %115 = load ptr, ptr %49, align 8, !tbaa !117
  %116 = load i32, ptr %11, align 8, !tbaa !115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %115, i64 %117
  %119 = icmp ult ptr %114, %118
  br i1 %119, label %68, label %120, !llvm.loop !124

120:                                              ; preds = %113, %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  br i1 %17, label %135, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %122, align 8, !tbaa !37
  %123 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = lshr i32 %124, 24
  %126 = trunc i32 %125 to i8
  store i8 %126, ptr %4, align 1, !tbaa !34
  %127 = lshr i32 %124, 16
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %128, ptr %129, align 1, !tbaa !34
  %130 = lshr i32 %124, 8
  %131 = trunc i32 %130 to i8
  %132 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %131, ptr %132, align 1, !tbaa !34
  %133 = trunc i32 %124 to i8
  %134 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %133, ptr %134, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 4) #11
  br label %135

135:                                              ; preds = %120, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @png_free(ptr noundef %0, ptr noundef %40) #11
  br label %136

136:                                              ; preds = %2, %135
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sBIT(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = and i32 %2, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 3
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %11 = load i8, ptr %10, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ 8, %7 ]
  %15 = load i8, ptr %1, align 1, !tbaa !125
  %16 = icmp eq i8 %15, 0
  %17 = zext i8 %15 to i32
  %18 = icmp ult i32 %14, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.png_color_8_struct, ptr %1, i64 0, i32 1
  %22 = load i8, ptr %21, align 1, !tbaa !126
  %23 = icmp eq i8 %22, 0
  %24 = zext i8 %22 to i32
  %25 = icmp ult i32 %14, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.png_color_8_struct, ptr %1, i64 0, i32 2
  %29 = load i8, ptr %28, align 1, !tbaa !127
  %30 = icmp eq i8 %29, 0
  %31 = zext i8 %29 to i32
  %32 = icmp ult i32 %14, %31
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20, %13
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  br label %66

35:                                               ; preds = %27
  store i8 %15, ptr %4, align 1, !tbaa !34
  %36 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  store i8 %22, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  store i8 %29, ptr %37, align 1, !tbaa !34
  br label %48

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.png_color_8_struct, ptr %1, i64 0, i32 3
  %40 = load i8, ptr %39, align 1, !tbaa !128
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %44 = load i8, ptr %43, align 1, !tbaa !63
  %45 = icmp ugt i8 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  br label %66

47:                                               ; preds = %42
  store i8 %40, ptr %4, align 1, !tbaa !34
  br label %48

48:                                               ; preds = %35, %47
  %49 = phi i64 [ 3, %35 ], [ 1, %47 ]
  %50 = and i32 %2, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.png_color_8_struct, ptr %1, i64 0, i32 4
  %54 = load i8, ptr %53, align 1, !tbaa !129
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %58 = load i8, ptr %57, align 1, !tbaa !63
  %59 = icmp ugt i8 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #11
  br label %66

61:                                               ; preds = %56
  %62 = add nuw nsw i64 %49, 1
  %63 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 %49
  store i8 %54, ptr %63, align 1, !tbaa !34
  br label %64

64:                                               ; preds = %61, %48
  %65 = phi i64 [ %62, %61 ], [ %49, %48 ]
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1933723988, ptr noundef nonnull %4, i64 noundef %65)
  br label %66

66:                                               ; preds = %34, %64, %60, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_cHRM_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %11 = tail call i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %101, label %13

13:                                               ; preds = %9
  %14 = lshr i32 %1, 24
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %10, align 16, !tbaa !34
  %16 = lshr i32 %1, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !34
  %19 = lshr i32 %1, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %20, ptr %21, align 2, !tbaa !34
  %22 = trunc i32 %1 to i8
  %23 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %22, ptr %23, align 1, !tbaa !34
  %24 = getelementptr inbounds i8, ptr %10, i64 4
  %25 = lshr i32 %2, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %24, align 4, !tbaa !34
  %27 = lshr i32 %2, 16
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %10, i64 5
  store i8 %28, ptr %29, align 1, !tbaa !34
  %30 = lshr i32 %2, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %10, i64 6
  store i8 %31, ptr %32, align 2, !tbaa !34
  %33 = trunc i32 %2 to i8
  %34 = getelementptr inbounds i8, ptr %10, i64 7
  store i8 %33, ptr %34, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %10, i64 8
  %36 = lshr i32 %3, 24
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %35, align 8, !tbaa !34
  %38 = lshr i32 %3, 16
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %10, i64 9
  store i8 %39, ptr %40, align 1, !tbaa !34
  %41 = lshr i32 %3, 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %10, i64 10
  store i8 %42, ptr %43, align 2, !tbaa !34
  %44 = trunc i32 %3 to i8
  %45 = getelementptr inbounds i8, ptr %10, i64 11
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %10, i64 12
  %47 = lshr i32 %4, 24
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %46, align 4, !tbaa !34
  %49 = lshr i32 %4, 16
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %10, i64 13
  store i8 %50, ptr %51, align 1, !tbaa !34
  %52 = lshr i32 %4, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %10, i64 14
  store i8 %53, ptr %54, align 2, !tbaa !34
  %55 = trunc i32 %4 to i8
  %56 = getelementptr inbounds i8, ptr %10, i64 15
  store i8 %55, ptr %56, align 1, !tbaa !34
  %57 = getelementptr inbounds i8, ptr %10, i64 16
  %58 = lshr i32 %5, 24
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %57, align 16, !tbaa !34
  %60 = lshr i32 %5, 16
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %10, i64 17
  store i8 %61, ptr %62, align 1, !tbaa !34
  %63 = lshr i32 %5, 8
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %10, i64 18
  store i8 %64, ptr %65, align 2, !tbaa !34
  %66 = trunc i32 %5 to i8
  %67 = getelementptr inbounds i8, ptr %10, i64 19
  store i8 %66, ptr %67, align 1, !tbaa !34
  %68 = getelementptr inbounds i8, ptr %10, i64 20
  %69 = lshr i32 %6, 24
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %68, align 4, !tbaa !34
  %71 = lshr i32 %6, 16
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %10, i64 21
  store i8 %72, ptr %73, align 1, !tbaa !34
  %74 = lshr i32 %6, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %10, i64 22
  store i8 %75, ptr %76, align 2, !tbaa !34
  %77 = trunc i32 %6 to i8
  %78 = getelementptr inbounds i8, ptr %10, i64 23
  store i8 %77, ptr %78, align 1, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %10, i64 24
  %80 = lshr i32 %7, 24
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %79, align 8, !tbaa !34
  %82 = lshr i32 %7, 16
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %10, i64 25
  store i8 %83, ptr %84, align 1, !tbaa !34
  %85 = lshr i32 %7, 8
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %10, i64 26
  store i8 %86, ptr %87, align 2, !tbaa !34
  %88 = trunc i32 %7 to i8
  %89 = getelementptr inbounds i8, ptr %10, i64 27
  store i8 %88, ptr %89, align 1, !tbaa !34
  %90 = getelementptr inbounds i8, ptr %10, i64 28
  %91 = lshr i32 %8, 24
  %92 = trunc i32 %91 to i8
  store i8 %92, ptr %90, align 4, !tbaa !34
  %93 = lshr i32 %8, 16
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %10, i64 29
  store i8 %94, ptr %95, align 1, !tbaa !34
  %96 = lshr i32 %8, 8
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds i8, ptr %10, i64 30
  store i8 %97, ptr %98, align 2, !tbaa !34
  %99 = trunc i32 %8 to i8
  %100 = getelementptr inbounds i8, ptr %10, i64 31
  store i8 %99, ptr %100, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1665684045, ptr noundef nonnull %10, i64 noundef 32)
  br label %101

101:                                              ; preds = %13, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  ret void
}

declare i32 @png_check_cHRM_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_tRNS(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  switch i32 %4, label %62 [
    i32 3, label %7
    i32 0, label %17
    i32 2, label %32
  ]

7:                                                ; preds = %5
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %11 = load i16, ptr %10, align 8, !tbaa !81
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %12, %3
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %7
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.18) #11
  br label %63

15:                                               ; preds = %9
  %16 = zext nneg i32 %3 to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1951551059, ptr noundef %1, i64 noundef %16)
  br label %63

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !130
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %22 = load i8, ptr %21, align 8, !tbaa !53
  %23 = zext nneg i8 %22 to i32
  %24 = shl nuw i32 1, %23
  %25 = icmp sgt i32 %24, %20
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  br label %63

27:                                               ; preds = %17
  %28 = lshr i16 %19, 8
  %29 = trunc i16 %28 to i8
  store i8 %29, ptr %6, align 1, !tbaa !34
  %30 = trunc i16 %19 to i8
  %31 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1951551059, ptr noundef nonnull %6, i64 noundef 2)
  br label %63

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !131
  %35 = lshr i16 %34, 8
  %36 = trunc i16 %35 to i8
  store i8 %36, ptr %6, align 1, !tbaa !34
  %37 = trunc i16 %34 to i8
  %38 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %6, i64 2
  %40 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !132
  %42 = lshr i16 %41, 8
  %43 = trunc i16 %42 to i8
  store i8 %43, ptr %39, align 1, !tbaa !34
  %44 = trunc i16 %41 to i8
  %45 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %6, i64 4
  %47 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 3
  %48 = load i16, ptr %47, align 2, !tbaa !133
  %49 = lshr i16 %48, 8
  %50 = trunc i16 %49 to i8
  store i8 %50, ptr %46, align 1, !tbaa !34
  %51 = trunc i16 %48 to i8
  %52 = getelementptr inbounds i8, ptr %6, i64 5
  store i8 %51, ptr %52, align 1, !tbaa !34
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %54 = load i8, ptr %53, align 8, !tbaa !53
  %55 = icmp eq i8 %54, 8
  br i1 %55, label %56, label %61

56:                                               ; preds = %32
  %57 = or i8 %43, %36
  %58 = or i8 %57, %50
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.20) #11
  br label %63

61:                                               ; preds = %56, %32
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1951551059, ptr noundef nonnull %6, i64 noundef 6)
  br label %63

62:                                               ; preds = %5
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.21) #11
  br label %63

63:                                               ; preds = %15, %61, %62, %27, %60, %26, %14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_bKGD(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %5 = icmp eq i32 %2, 3
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %8 = load i16, ptr %7, align 8, !tbaa !81
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %6
  %16 = load i8, ptr %1, align 2, !tbaa !134
  %17 = zext i8 %16 to i16
  %18 = icmp ugt i16 %8, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.22) #11
  br label %70

20:                                               ; preds = %15, %10
  %21 = load i8, ptr %1, align 2, !tbaa !134
  store i8 %21, ptr %4, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1649100612, ptr noundef nonnull %4, i64 noundef 1)
  br label %70

22:                                               ; preds = %3
  %23 = and i32 %2, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !131
  %28 = lshr i16 %27, 8
  %29 = trunc i16 %28 to i8
  store i8 %29, ptr %4, align 1, !tbaa !34
  %30 = trunc i16 %27 to i8
  %31 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %4, i64 2
  %33 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !132
  %35 = lshr i16 %34, 8
  %36 = trunc i16 %35 to i8
  store i8 %36, ptr %32, align 1, !tbaa !34
  %37 = trunc i16 %34 to i8
  %38 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %4, i64 4
  %40 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !133
  %42 = lshr i16 %41, 8
  %43 = trunc i16 %42 to i8
  store i8 %43, ptr %39, align 1, !tbaa !34
  %44 = trunc i16 %41 to i8
  %45 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %47 = load i8, ptr %46, align 8, !tbaa !53
  %48 = icmp eq i8 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %25
  %50 = or i8 %36, %29
  %51 = or i8 %50, %43
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %70

54:                                               ; preds = %49, %25
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1649100612, ptr noundef nonnull %4, i64 noundef 6)
  br label %70

55:                                               ; preds = %22
  %56 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !130
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %60 = load i8, ptr %59, align 8, !tbaa !53
  %61 = zext nneg i8 %60 to i32
  %62 = shl nuw i32 1, %61
  %63 = icmp sgt i32 %62, %58
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  br label %70

65:                                               ; preds = %55
  %66 = lshr i16 %57, 8
  %67 = trunc i16 %66 to i8
  store i8 %67, ptr %4, align 1, !tbaa !34
  %68 = trunc i16 %57 to i8
  %69 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1649100612, ptr noundef nonnull %4, i64 noundef 2)
  br label %70

70:                                               ; preds = %20, %65, %54, %64, %53, %19
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_hIST(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %8 = load i16, ptr %7, align 8, !tbaa !81
  %9 = zext i16 %8 to i32
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.25) #11
  br label %64

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %13 = icmp eq ptr %0, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = shl nsw i32 %2, 1
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %16, align 8, !tbaa !37
  %17 = lshr i32 %15, 24
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %4, align 1, !tbaa !34
  %19 = lshr i32 %15, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !34
  %22 = lshr i32 %15, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %23, ptr %24, align 1, !tbaa !34
  %25 = trunc i32 %15 to i8
  %26 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %25, ptr %26, align 1, !tbaa !34
  %27 = getelementptr inbounds i8, ptr %4, i64 4
  store i8 104, ptr %27, align 1, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %4, i64 5
  store i8 73, ptr %28, align 1, !tbaa !34
  %29 = getelementptr inbounds i8, ptr %4, i64 6
  store i8 83, ptr %29, align 1, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %4, i64 7
  store i8 84, ptr %30, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 8) #11
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1749635924, ptr %31, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %27, i64 noundef 4) #11
  store i32 66, ptr %16, align 8, !tbaa !37
  br label %32

32:                                               ; preds = %12, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %33 = icmp sgt i32 %2, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = getelementptr inbounds i8, ptr %6, i64 1
  %36 = zext nneg i32 %2 to i64
  br label %37

37:                                               ; preds = %34, %45
  %38 = phi i64 [ 0, %34 ], [ %46, %45 ]
  %39 = getelementptr inbounds i16, ptr %1, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !135
  %41 = lshr i16 %40, 8
  %42 = trunc i16 %41 to i8
  store i8 %42, ptr %6, align 1, !tbaa !34
  %43 = trunc i16 %40 to i8
  store i8 %43, ptr %35, align 1, !tbaa !34
  br i1 %13, label %45, label %44

44:                                               ; preds = %37
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 2) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 2) #11
  br label %45

45:                                               ; preds = %37, %44
  %46 = add nuw nsw i64 %38, 1
  %47 = icmp eq i64 %46, %36
  br i1 %47, label %48, label %37, !llvm.loop !136

48:                                               ; preds = %45, %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  br i1 %13, label %63, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %50, align 8, !tbaa !37
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = lshr i32 %52, 24
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %5, align 1, !tbaa !34
  %55 = lshr i32 %52, 16
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %56, ptr %57, align 1, !tbaa !34
  %58 = lshr i32 %52, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !34
  %61 = trunc i32 %52 to i8
  %62 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %61, ptr %62, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 4) #11
  br label %63

63:                                               ; preds = %48, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %64

64:                                               ; preds = %63, %11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @png_warning_parameter_unsigned(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @png_formatted_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_tEXt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #1 {
  %5 = alloca [8 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %8 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7), !range !94
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %2, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  br label %17

17:                                               ; preds = %10, %12, %15
  %18 = phi i64 [ %16, %15 ], [ 0, %12 ], [ 0, %10 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %19 = icmp eq ptr %0, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = add i64 %18, %8
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, 1
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %24, align 8, !tbaa !37
  %25 = lshr i32 %23, 24
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %5, align 1, !tbaa !34
  %27 = lshr i32 %23, 16
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %28, ptr %29, align 1, !tbaa !34
  %30 = lshr i32 %23, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = trunc i32 %23 to i8
  %34 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %33, ptr %34, align 1, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %5, i64 4
  store i8 116, ptr %35, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %5, i64 5
  store i8 69, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %5, i64 6
  store i8 88, ptr %37, align 1, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %5, i64 7
  store i8 116, ptr %38, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef 8) #11
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1950701684, ptr %39, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %35, i64 noundef 4) #11
  store i32 66, ptr %24, align 8, !tbaa !37
  br label %40

40:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %41 = load ptr, ptr %7, align 8, !tbaa !95
  %42 = icmp ne ptr %0, null
  %43 = icmp ne ptr %41, null
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %8, 1
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %41, i64 noundef %46) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %41, i64 noundef %46) #11
  br label %47

47:                                               ; preds = %40, %45
  %48 = icmp ne i64 %18, 0
  %49 = icmp ne ptr %2, null
  %50 = and i1 %49, %48
  %51 = and i1 %42, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %18) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %18) #11
  br label %53

53:                                               ; preds = %52, %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  br i1 %19, label %68, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %55, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %57 = load i32, ptr %56, align 4, !tbaa !50
  %58 = lshr i32 %57, 24
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %6, align 1, !tbaa !34
  %60 = lshr i32 %57, 16
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %61, ptr %62, align 1, !tbaa !34
  %63 = lshr i32 %57, 8
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %64, ptr %65, align 1, !tbaa !34
  %66 = trunc i32 %57 to i8
  %67 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 %66, ptr %67, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 4) #11
  br label %68

68:                                               ; preds = %53, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @png_free(ptr noundef %0, ptr noundef %41) #11
  br label %69

69:                                               ; preds = %4, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_zTXt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [8 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca %struct.compression_state, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %11 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9), !range !94
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %9, align 8, !tbaa !95
  tail call void @png_free(ptr noundef %0, ptr noundef %14) #11
  br label %74

15:                                               ; preds = %5
  %16 = icmp eq ptr %2, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = load i8, ptr %2, align 1, !tbaa !34
  %19 = icmp eq i8 %18, 0
  %20 = icmp eq i32 %4, -1
  %21 = or i1 %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %15
  %23 = load ptr, ptr %9, align 8, !tbaa !95
  tail call void @png_write_tEXt(ptr noundef %0, ptr noundef %23, ptr noundef %2, i64 poison)
  tail call void @png_free(ptr noundef %0, ptr noundef %23) #11
  br label %74

24:                                               ; preds = %17
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %26 = call fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %25, i32 noundef %4, ptr noundef nonnull %10)
  %27 = sext i32 %26 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %28 = icmp eq ptr %0, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = trunc i64 %11 to i32
  %31 = add nuw nsw i32 %30, 2
  %32 = add i32 %31, %26
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %33, align 8, !tbaa !37
  %34 = lshr i32 %32, 24
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %6, align 1, !tbaa !34
  %36 = lshr i32 %32, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = lshr i32 %32, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %40, ptr %41, align 1, !tbaa !34
  %42 = trunc i32 %32 to i8
  %43 = getelementptr inbounds i8, ptr %6, i64 3
  store i8 %42, ptr %43, align 1, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %6, i64 4
  store i8 122, ptr %44, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %6, i64 5
  store i8 84, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %6, i64 6
  store i8 88, ptr %46, align 1, !tbaa !34
  %47 = getelementptr inbounds i8, ptr %6, i64 7
  store i8 116, ptr %47, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef 8) #11
  %48 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 2052348020, ptr %48, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %44, i64 noundef 4) #11
  store i32 66, ptr %33, align 8, !tbaa !37
  br label %49

49:                                               ; preds = %24, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %50 = load ptr, ptr %9, align 8, !tbaa !95
  %51 = icmp ne ptr %0, null
  %52 = icmp ne ptr %50, null
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = add nuw nsw i64 %11, 1
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %50, i64 noundef %55) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %50, i64 noundef %55) #11
  br label %56

56:                                               ; preds = %49, %54
  call void @png_free(ptr noundef %0, ptr noundef %50) #11
  %57 = trunc i32 %4 to i8
  store i8 %57, ptr %8, align 1, !tbaa !34
  br i1 %28, label %72, label %58

58:                                               ; preds = %56
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef 1) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef 1) #11
  call fastcc void @png_write_compressed_data_out(ptr noundef nonnull %0, ptr noundef nonnull %10, i64 noundef %27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %59 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %59, align 8, !tbaa !37
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = lshr i32 %61, 24
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %7, align 1, !tbaa !34
  %64 = lshr i32 %61, 16
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %65, ptr %66, align 1, !tbaa !34
  %67 = lshr i32 %61, 8
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %68, ptr %69, align 1, !tbaa !34
  %70 = trunc i32 %61 to i8
  %71 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %70, ptr %71, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef 4) #11
  br label %73

72:                                               ; preds = %56
  call fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr noundef nonnull %10, i64 noundef %27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  br label %73

73:                                               ; preds = %72, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %74

74:                                               ; preds = %73, %22, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_iTXt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = alloca [8 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca %struct.compression_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store ptr null, ptr %10, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #11
  %13 = getelementptr inbounds %struct.compression_state, ptr %12, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10), !range !94
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %100, label %16

16:                                               ; preds = %6
  %17 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %9), !range !94
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.34) #11
  store ptr null, ptr %9, align 8, !tbaa !95
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i64 [ 0, %19 ], [ %17, %16 ]
  %22 = icmp eq ptr %4, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #13
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi i64 [ %24, %23 ], [ 0, %20 ]
  %27 = icmp eq ptr %5, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #13
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i64 [ %29, %28 ], [ 0, %25 ]
  %32 = add nsw i32 %1, -2
  %33 = call fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef %5, i64 noundef %31, i32 noundef %32, ptr noundef nonnull %12)
  %34 = sext i32 %33 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %35 = icmp eq ptr %0, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %30
  %37 = add nuw nsw i64 %14, 5
  %38 = add nuw nsw i64 %37, %21
  %39 = add i64 %38, %26
  %40 = trunc i64 %39 to i32
  %41 = add i32 %33, %40
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %42, align 8, !tbaa !37
  %43 = lshr i32 %41, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %7, align 1, !tbaa !34
  %45 = lshr i32 %41, 16
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %46, ptr %47, align 1, !tbaa !34
  %48 = lshr i32 %41, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %49, ptr %50, align 1, !tbaa !34
  %51 = trunc i32 %41 to i8
  %52 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %51, ptr %52, align 1, !tbaa !34
  %53 = getelementptr inbounds i8, ptr %7, i64 4
  store i8 105, ptr %53, align 1, !tbaa !34
  %54 = getelementptr inbounds i8, ptr %7, i64 5
  store i8 84, ptr %54, align 1, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %7, i64 6
  store i8 88, ptr %55, align 1, !tbaa !34
  %56 = getelementptr inbounds i8, ptr %7, i64 7
  store i8 116, ptr %56, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef 8) #11
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1767135348, ptr %57, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %53, i64 noundef 4) #11
  store i32 66, ptr %42, align 8, !tbaa !37
  br label %58

58:                                               ; preds = %30, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %59 = load ptr, ptr %10, align 8, !tbaa !95
  %60 = icmp ne ptr %0, null
  %61 = icmp ne ptr %59, null
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = add nuw nsw i64 %14, 1
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %59, i64 noundef %64) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %59, i64 noundef %64) #11
  br label %65

65:                                               ; preds = %58, %63
  %66 = add i32 %1, 1
  %67 = and i32 %66, -3
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %11, align 1, !tbaa !34
  %70 = getelementptr inbounds [2 x i8], ptr %11, i64 0, i64 1
  store i8 0, ptr %70, align 1, !tbaa !34
  br i1 %60, label %71, label %76

71:                                               ; preds = %65
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef 2) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef 2) #11
  store i8 0, ptr %11, align 1, !tbaa !34
  %72 = add nuw nsw i64 %21, 1
  %73 = load ptr, ptr %9, align 8
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr %11, ptr %73
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %75, i64 noundef %72) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %75, i64 noundef %72) #11
  br label %77

76:                                               ; preds = %65
  store i8 0, ptr %11, align 1, !tbaa !34
  br label %77

77:                                               ; preds = %76, %71
  %78 = add i64 %26, 1
  %79 = icmp ne i64 %78, 0
  %80 = and i1 %60, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = select i1 %22, ptr %11, ptr %4
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %82, i64 noundef %78) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %82, i64 noundef %78) #11
  br label %83

83:                                               ; preds = %77, %81
  call fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr noundef nonnull %12, i64 noundef %34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  br i1 %35, label %98, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %85, align 8, !tbaa !37
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %87 = load i32, ptr %86, align 4, !tbaa !50
  %88 = lshr i32 %87, 24
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %8, align 1, !tbaa !34
  %90 = lshr i32 %87, 16
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %91, ptr %92, align 1, !tbaa !34
  %93 = lshr i32 %87, 8
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 %94, ptr %95, align 1, !tbaa !34
  %96 = trunc i32 %87 to i8
  %97 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %96, ptr %97, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef 4) #11
  br label %98

98:                                               ; preds = %83, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @png_free(ptr noundef %0, ptr noundef %59) #11
  %99 = load ptr, ptr %9, align 8, !tbaa !95
  call void @png_free(ptr noundef %0, ptr noundef %99) #11
  br label %100

100:                                              ; preds = %6, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_oFFs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #11
  %6 = icmp sgt i32 %3, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  br label %8

8:                                                ; preds = %7, %4
  %9 = lshr i32 %1, 24
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %5, align 1, !tbaa !34
  %11 = lshr i32 %1, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !34
  %14 = lshr i32 %1, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !34
  %17 = trunc i32 %1 to i8
  %18 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %17, ptr %18, align 1, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %5, i64 4
  %20 = lshr i32 %2, 24
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %19, align 1, !tbaa !34
  %22 = lshr i32 %2, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %5, i64 5
  store i8 %23, ptr %24, align 1, !tbaa !34
  %25 = lshr i32 %2, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %5, i64 6
  store i8 %26, ptr %27, align 1, !tbaa !34
  %28 = trunc i32 %2 to i8
  %29 = getelementptr inbounds i8, ptr %5, i64 7
  store i8 %28, ptr %29, align 1, !tbaa !34
  %30 = trunc i32 %3 to i8
  %31 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 8
  store i8 %30, ptr %31, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1866876531, ptr noundef nonnull %5, i64 noundef 9)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7) local_unnamed_addr #1 {
  %9 = alloca [8 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [10 x i8], align 1
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %13 = icmp sgt i32 %4, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.36) #11
  br label %15

15:                                               ; preds = %14, %8
  %16 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12), !range !94
  %17 = add nuw nsw i64 %16, 1
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #13
  %19 = icmp ne i32 %5, 0
  %20 = zext i1 %19 to i64
  %21 = add i64 %18, %20
  %22 = add nuw nsw i64 %16, 11
  %23 = add i64 %22, %21
  %24 = sext i32 %5 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %25) #11
  %27 = icmp sgt i32 %5, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %15
  %29 = add nsw i32 %5, -1
  %30 = zext i32 %29 to i64
  %31 = zext nneg i32 %5 to i64
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i64 [ 0, %28 ], [ %43, %32 ]
  %34 = phi i64 [ %23, %28 ], [ %42, %32 ]
  %35 = getelementptr inbounds ptr, ptr %7, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #13
  %38 = icmp ne i64 %33, %30
  %39 = zext i1 %38 to i64
  %40 = add i64 %37, %39
  %41 = getelementptr inbounds i64, ptr %26, i64 %33
  store i64 %40, ptr %41, align 8, !tbaa !137
  %42 = add i64 %40, %34
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp eq i64 %43, %31
  br i1 %44, label %45, label %32, !llvm.loop !138

45:                                               ; preds = %32, %15
  %46 = phi i64 [ %23, %15 ], [ %42, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %47 = icmp eq ptr %0, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %49, align 8, !tbaa !37
  %50 = lshr i64 %46, 24
  %51 = trunc i64 %50 to i8
  store i8 %51, ptr %9, align 1, !tbaa !34
  %52 = lshr i64 %46, 16
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %53, ptr %54, align 1, !tbaa !34
  %55 = lshr i64 %46, 8
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds i8, ptr %9, i64 2
  store i8 %56, ptr %57, align 1, !tbaa !34
  %58 = trunc i64 %46 to i8
  %59 = getelementptr inbounds i8, ptr %9, i64 3
  store i8 %58, ptr %59, align 1, !tbaa !34
  %60 = getelementptr inbounds i8, ptr %9, i64 4
  store i8 112, ptr %60, align 1, !tbaa !34
  %61 = getelementptr inbounds i8, ptr %9, i64 5
  store i8 67, ptr %61, align 1, !tbaa !34
  %62 = getelementptr inbounds i8, ptr %9, i64 6
  store i8 65, ptr %62, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %9, i64 7
  store i8 76, ptr %63, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %9, i64 noundef 8) #11
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 1883455820, ptr %64, align 8, !tbaa !49
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %60, i64 noundef 4) #11
  store i32 66, ptr %49, align 8, !tbaa !37
  br label %65

65:                                               ; preds = %45, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %66 = load ptr, ptr %12, align 8, !tbaa !95
  %67 = icmp ne ptr %0, null
  %68 = icmp ne ptr %66, null
  %69 = and i1 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %66, i64 noundef %17) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %66, i64 noundef %17) #11
  br label %71

71:                                               ; preds = %65, %70
  %72 = lshr i32 %2, 24
  %73 = trunc i32 %72 to i8
  store i8 %73, ptr %11, align 1, !tbaa !34
  %74 = lshr i32 %2, 16
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %75, ptr %76, align 1, !tbaa !34
  %77 = lshr i32 %2, 8
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %11, i64 2
  store i8 %78, ptr %79, align 1, !tbaa !34
  %80 = trunc i32 %2 to i8
  %81 = getelementptr inbounds i8, ptr %11, i64 3
  store i8 %80, ptr %81, align 1, !tbaa !34
  %82 = getelementptr inbounds i8, ptr %11, i64 4
  %83 = lshr i32 %3, 24
  %84 = trunc i32 %83 to i8
  store i8 %84, ptr %82, align 1, !tbaa !34
  %85 = lshr i32 %3, 16
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %11, i64 5
  store i8 %86, ptr %87, align 1, !tbaa !34
  %88 = lshr i32 %3, 8
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds i8, ptr %11, i64 6
  store i8 %89, ptr %90, align 1, !tbaa !34
  %91 = trunc i32 %3 to i8
  %92 = getelementptr inbounds i8, ptr %11, i64 7
  store i8 %91, ptr %92, align 1, !tbaa !34
  %93 = trunc i32 %4 to i8
  %94 = getelementptr inbounds [10 x i8], ptr %11, i64 0, i64 8
  store i8 %93, ptr %94, align 1, !tbaa !34
  %95 = trunc i32 %5 to i8
  %96 = getelementptr inbounds [10 x i8], ptr %11, i64 0, i64 9
  store i8 %95, ptr %96, align 1, !tbaa !34
  br i1 %47, label %98, label %97

97:                                               ; preds = %71
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef 10) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef 10) #11
  br label %98

98:                                               ; preds = %71, %97
  %99 = icmp ne ptr %6, null
  %100 = icmp ne i64 %21, 0
  %101 = and i1 %99, %100
  %102 = and i1 %67, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %21) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %21) #11
  br label %104

104:                                              ; preds = %98, %103
  call void @png_free(ptr noundef %0, ptr noundef %66) #11
  %105 = icmp sgt i32 %5, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %104
  %107 = zext nneg i32 %5 to i64
  br label %108

108:                                              ; preds = %106, %119
  %109 = phi i64 [ 0, %106 ], [ %120, %119 ]
  %110 = getelementptr inbounds ptr, ptr %7, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !95
  %112 = getelementptr inbounds i64, ptr %26, i64 %109
  %113 = load i64, ptr %112, align 8, !tbaa !137
  %114 = icmp ne ptr %111, null
  %115 = icmp ne i64 %113, 0
  %116 = and i1 %114, %115
  %117 = and i1 %67, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %111, i64 noundef %113) #11
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %111, i64 noundef %113) #11
  br label %119

119:                                              ; preds = %108, %118
  %120 = add nuw nsw i64 %109, 1
  %121 = icmp eq i64 %120, %107
  br i1 %121, label %122, label %108, !llvm.loop !139

122:                                              ; preds = %119, %104
  call void @png_free(ptr noundef %0, ptr noundef %26) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  br i1 %47, label %137, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %124, align 8, !tbaa !37
  %125 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %126 = load i32, ptr %125, align 4, !tbaa !50
  %127 = lshr i32 %126, 24
  %128 = trunc i32 %127 to i8
  store i8 %128, ptr %10, align 1, !tbaa !34
  %129 = lshr i32 %126, 16
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %130, ptr %131, align 1, !tbaa !34
  %132 = lshr i32 %126, 8
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %133, ptr %134, align 1, !tbaa !34
  %135 = trunc i32 %126 to i8
  %136 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %135, ptr %136, align 1, !tbaa !34
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %10, i64 noundef 4) #11
  br label %137

137:                                              ; preds = %122, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %11) #11
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @png_write_sCAL_s(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #13
  %8 = add i64 %6, 2
  %9 = add i64 %8, %7
  %10 = icmp ugt i64 %9, 64
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.37) #11
  br label %18

12:                                               ; preds = %4
  %13 = trunc i32 %1 to i8
  store i8 %13, ptr %5, align 16, !tbaa !34
  %14 = getelementptr inbounds i8, ptr %5, i64 1
  %15 = add i64 %6, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %2, i64 %15, i1 false)
  %16 = getelementptr inbounds i8, ptr %5, i64 %6
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr align 1 %3, i64 %7, i1 false)
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1933787468, ptr noundef nonnull %5, i64 noundef %9)
  br label %18

18:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_pHYs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #11
  %6 = icmp sgt i32 %3, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  br label %8

8:                                                ; preds = %7, %4
  %9 = lshr i32 %1, 24
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr %5, align 1, !tbaa !34
  %11 = lshr i32 %1, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !34
  %14 = lshr i32 %1, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !34
  %17 = trunc i32 %1 to i8
  %18 = getelementptr inbounds i8, ptr %5, i64 3
  store i8 %17, ptr %18, align 1, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %5, i64 4
  %20 = lshr i32 %2, 24
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %19, align 1, !tbaa !34
  %22 = lshr i32 %2, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %5, i64 5
  store i8 %23, ptr %24, align 1, !tbaa !34
  %25 = lshr i32 %2, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %5, i64 6
  store i8 %26, ptr %27, align 1, !tbaa !34
  %28 = trunc i32 %2 to i8
  %29 = getelementptr inbounds i8, ptr %5, i64 7
  store i8 %28, ptr %29, align 1, !tbaa !34
  %30 = trunc i32 %3 to i8
  %31 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 8
  store i8 %30, ptr %31, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1883789683, ptr noundef nonnull %5, i64 noundef 9)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_tIME(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 2, !tbaa !140
  %6 = add i8 %5, -13
  %7 = icmp ult i8 %6, -12
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 1, !tbaa !142
  %11 = add i8 %10, -32
  %12 = icmp ult i8 %11, -31
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 3
  %15 = load i8, ptr %14, align 2, !tbaa !143
  %16 = icmp ugt i8 %15, 23
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !144
  %20 = icmp ugt i8 %19, 60
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %8, %2
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.39) #11
  br label %35

22:                                               ; preds = %17
  %23 = load i16, ptr %1, align 2, !tbaa !145
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  store i8 %25, ptr %3, align 1, !tbaa !34
  %26 = trunc i16 %23 to i8
  %27 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %26, ptr %27, align 1, !tbaa !34
  %28 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 2
  store i8 %5, ptr %28, align 1, !tbaa !34
  %29 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 3
  store i8 %10, ptr %29, align 1, !tbaa !34
  %30 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 4
  store i8 %15, ptr %30, align 1, !tbaa !34
  %31 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 4
  %32 = load i8, ptr %31, align 1, !tbaa !146
  %33 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 5
  store i8 %32, ptr %33, align 1, !tbaa !34
  %34 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 6
  store i8 %19, ptr %34, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1950960965, ptr noundef nonnull %3, i64 noundef 7)
  br label %35

35:                                               ; preds = %22, %21
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_start_row(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  %3 = load i8, ptr %2, align 4, !tbaa !64
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %6 = load i8, ptr %5, align 1, !tbaa !63
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, %4
  %9 = icmp ugt i32 %8, 7
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = zext i32 %11 to i64
  br i1 %9, label %13, label %17

13:                                               ; preds = %1
  %14 = lshr i32 %8, 3
  %15 = zext nneg i32 %14 to i64
  %16 = mul nuw nsw i64 %12, %15
  br label %22

17:                                               ; preds = %1
  %18 = zext nneg i32 %8 to i64
  %19 = mul nuw nsw i64 %12, %18
  %20 = add nuw nsw i64 %19, 7
  %21 = lshr i64 %20, 3
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i64 [ %16, %13 ], [ %21, %17 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %26 = load i8, ptr %25, align 2, !tbaa !60
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  store i8 %26, ptr %27, align 1, !tbaa !147
  %28 = trunc i32 %8 to i8
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  store i8 %28, ptr %29, align 2, !tbaa !148
  %30 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %24) #11
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  store ptr %30, ptr %31, align 8, !tbaa !149
  store i8 0, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %33 = load i8, ptr %32, align 2, !tbaa !68
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %38 = load i64, ptr %37, align 8, !tbaa !61
  %39 = add i64 %38, 1
  %40 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %39) #11
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  store ptr %40, ptr %41, align 8, !tbaa !150
  store i8 1, ptr %40, align 1, !tbaa !34
  br label %42

42:                                               ; preds = %36, %22
  %43 = load i8, ptr %32, align 2, !tbaa !68
  %44 = icmp ult i8 %43, 32
  br i1 %44, label %76, label %45

45:                                               ; preds = %42
  %46 = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %24) #11
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  store ptr %46, ptr %47, align 8, !tbaa !151
  %48 = load i8, ptr %32, align 2, !tbaa !68
  %49 = and i8 %48, 32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %53 = load i64, ptr %52, align 8, !tbaa !61
  %54 = add i64 %53, 1
  %55 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %54) #11
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  store ptr %55, ptr %56, align 8, !tbaa !152
  store i8 2, ptr %55, align 1, !tbaa !34
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i8, ptr %32, align 2, !tbaa !68
  %59 = and i8 %58, 64
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %63 = load i64, ptr %62, align 8, !tbaa !61
  %64 = add i64 %63, 1
  %65 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %64) #11
  %66 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  store ptr %65, ptr %66, align 8, !tbaa !153
  store i8 3, ptr %65, align 1, !tbaa !34
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i8, ptr %32, align 2, !tbaa !68
  %69 = icmp sgt i8 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %72 = load i64, ptr %71, align 8, !tbaa !61
  %73 = add i64 %72, 1
  %74 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %73) #11
  %75 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  store ptr %74, ptr %75, align 8, !tbaa !154
  store i8 4, ptr %74, align 1, !tbaa !34
  br label %76

76:                                               ; preds = %67, %70, %42
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %78 = load i8, ptr %77, align 4, !tbaa !55
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %82 = load i32, ptr %81, align 4, !tbaa !155
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %86 = load i32, ptr %85, align 4, !tbaa !59
  br i1 %84, label %87, label %95

87:                                               ; preds = %80
  %88 = add i32 %86, 7
  %89 = lshr i32 %88, 3
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %89, ptr %90, align 8, !tbaa !156
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %92 = load i32, ptr %91, align 8, !tbaa !58
  %93 = add i32 %92, 7
  %94 = lshr i32 %93, 3
  br label %105

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %86, ptr %96, align 8, !tbaa !156
  %97 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %98 = load i32, ptr %97, align 8, !tbaa !58
  br label %105

99:                                               ; preds = %76
  %100 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %101 = load i32, ptr %100, align 4, !tbaa !59
  %102 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %101, ptr %102, align 8, !tbaa !156
  %103 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %104 = load i32, ptr %103, align 8, !tbaa !58
  br label %105

105:                                              ; preds = %87, %95, %99
  %106 = phi i32 [ %94, %87 ], [ %98, %95 ], [ %104, %99 ]
  %107 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  store i32 %106, ptr %107, align 4, !tbaa !62
  tail call fastcc void @png_zlib_claim(ptr noundef %0, i32 noundef 1)
  %108 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %109 = load i32, ptr %108, align 8, !tbaa !92
  %110 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %109, ptr %110, align 8, !tbaa !93
  %111 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %112 = load ptr, ptr %111, align 8, !tbaa !90
  %113 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %112, ptr %113, align 8, !tbaa !91
  ret void
}

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @png_zlib_claim(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %2
  %9 = icmp eq i32 %5, %1
  br i1 %9, label %63, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %14 = tail call i32 @deflateEnd(ptr noundef nonnull %13) #11
  store i32 0, ptr %4, align 4, !tbaa !80
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %14, %12 ], [ 0, %10 ]
  %17 = phi ptr [ @.str.45, %12 ], [ @.str.44, %10 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = icmp eq i32 %1, 2
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  br i1 %20, label %22, label %34

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 25
  %24 = load i32, ptr %23, align 4, !tbaa !76
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 27
  %28 = load i32, ptr %27, align 4, !tbaa !78
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 28
  %30 = load i32, ptr %29, align 8, !tbaa !77
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 29
  %32 = load i32, ptr %31, align 4, !tbaa !75
  %33 = tail call i32 @deflateInit2_(ptr noundef nonnull %21, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, ptr noundef nonnull @.str.46, i32 noundef 112) #11
  br label %46

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  %36 = load i32, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  %38 = load i32, ptr %37, align 4, !tbaa !74
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  %40 = load i32, ptr %39, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  %42 = load i32, ptr %41, align 4, !tbaa !72
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 24
  %44 = load i32, ptr %43, align 8, !tbaa !70
  %45 = tail call i32 @deflateInit2_(ptr noundef nonnull %21, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, ptr noundef nonnull @.str.46, i32 noundef 112) #11
  br label %46

46:                                               ; preds = %22, %34, %15
  %47 = phi i32 [ %45, %34 ], [ %33, %22 ], [ %16, %15 ]
  %48 = phi ptr [ @.str.48, %34 ], [ @.str.47, %22 ], [ %17, %15 ]
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 %1, ptr %4, align 4, !tbaa !80
  br label %63

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %52 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 64, i64 noundef 0, ptr noundef nonnull @.str.50) #11
  %53 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 64, i64 noundef %52, ptr noundef nonnull %48) #11
  %54 = add i32 %47, 6
  %55 = icmp ult i32 %54, 5
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = zext nneg i32 %54 to i64
  %58 = shl i64 %57, 2
  %59 = call ptr @llvm.load.relative.i64(ptr @reltable.png_zlib_claim, i64 %58)
  br label %60

60:                                               ; preds = %51, %56
  %61 = phi ptr [ %59, %56 ], [ @.str.54, %51 ]
  %62 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 64, i64 noundef %53, ptr noundef nonnull %61) #11
  call void @png_error(ptr noundef %0, ptr noundef nonnull %3) #12
  unreachable

63:                                               ; preds = %50, %8
  %64 = load i32, ptr %4, align 4, !tbaa !80
  %65 = or i32 %64, 4
  store i32 %65, ptr %4, align 4, !tbaa !80
  ret void

66:                                               ; preds = %2
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_finish_row(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 4, !tbaa !157
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !157
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 8, !tbaa !156
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %126, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %10 = load i8, ptr %9, align 4, !tbaa !55
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !tbaa !157
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !155
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %18 = load i8, ptr %17, align 1, !tbaa !158
  br i1 %16, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %25

23:                                               ; preds = %12
  %24 = add i8 %18, 1
  br label %57

25:                                               ; preds = %19, %53
  %26 = phi i8 [ %18, %19 ], [ %27, %53 ]
  %27 = add i8 %26, 1
  %28 = icmp ugt i8 %27, 6
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %20, align 8, !tbaa !58
  %31 = zext nneg i8 %27 to i64
  %32 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = zext i8 %33 to i32
  %35 = add i32 %30, %34
  %36 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %31
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = add i32 %35, %39
  %41 = udiv i32 %40, %34
  store i32 %41, ptr %21, align 4, !tbaa !62
  %42 = load i32, ptr %22, align 4, !tbaa !59
  %43 = getelementptr inbounds [7 x i8], ptr @png_write_finish_row.png_pass_yinc, i64 0, i64 %31
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = zext i8 %44 to i32
  %46 = add i32 %42, %45
  %47 = getelementptr inbounds [7 x i8], ptr @png_write_finish_row.png_pass_ystart, i64 0, i64 %31
  %48 = load i8, ptr %47, align 1, !tbaa !34
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, -1
  %51 = add i32 %46, %50
  %52 = udiv i32 %51, %45
  store i32 %52, ptr %5, align 8, !tbaa !156
  br i1 %16, label %53, label %57

53:                                               ; preds = %29
  %54 = icmp ult i32 %40, %34
  %55 = icmp ult i32 %51, %45
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %25, label %57, !llvm.loop !159

57:                                               ; preds = %53, %25, %29, %23
  %58 = phi i8 [ %24, %23 ], [ %27, %29 ], [ %27, %25 ], [ %27, %53 ]
  store i8 %58, ptr %17, align 1, !tbaa !158
  %59 = icmp ult i8 %58, 7
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %62 = load ptr, ptr %61, align 8, !tbaa !151
  %63 = icmp eq ptr %62, null
  br i1 %63, label %126, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  %66 = load i8, ptr %65, align 4, !tbaa !64
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %69 = load i8, ptr %68, align 1, !tbaa !63
  %70 = zext i8 %69 to i32
  %71 = mul nuw nsw i32 %70, %67
  %72 = icmp ugt i32 %71, 7
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %74 = load i32, ptr %73, align 8, !tbaa !58
  %75 = zext i32 %74 to i64
  br i1 %72, label %76, label %80

76:                                               ; preds = %64
  %77 = lshr i32 %71, 3
  %78 = zext nneg i32 %77 to i64
  %79 = mul nuw nsw i64 %75, %78
  br label %85

80:                                               ; preds = %64
  %81 = zext nneg i32 %71 to i64
  %82 = mul nuw nsw i64 %75, %81
  %83 = add nuw nsw i64 %82, 7
  %84 = lshr i64 %83, 3
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i64 [ %79, %76 ], [ %84, %80 ]
  %87 = add nuw nsw i64 %86, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %62, i8 0, i64 %87, i1 false)
  br label %126

88:                                               ; preds = %57, %8
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %93 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  br label %94

94:                                               ; preds = %111, %88
  %95 = tail call i32 @deflate(ptr noundef nonnull %89, i32 noundef 4) #11
  switch i32 %95, label %105 [
    i32 0, label %96
    i32 1, label %113
  ]

96:                                               ; preds = %94
  %97 = load i32, ptr %90, align 8, !tbaa !93
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load ptr, ptr %91, align 8, !tbaa !90
  %101 = load i32, ptr %92, align 8, !tbaa !92
  %102 = zext i32 %101 to i64
  tail call void @png_write_IDAT(ptr noundef %0, ptr noundef %100, i64 noundef %102)
  %103 = load ptr, ptr %91, align 8, !tbaa !90
  store ptr %103, ptr %93, align 8, !tbaa !91
  %104 = load i32, ptr %92, align 8, !tbaa !92
  store i32 %104, ptr %90, align 8, !tbaa !93
  br label %111

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !105
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull %107) #12
  unreachable

110:                                              ; preds = %105
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  unreachable

111:                                              ; preds = %99, %96
  %112 = icmp eq i32 %95, 1
  br i1 %112, label %113, label %94, !llvm.loop !160

113:                                              ; preds = %94, %111
  %114 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %115 = load i32, ptr %114, align 8, !tbaa !93
  %116 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %117 = load i32, ptr %116, align 8, !tbaa !92
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %121 = load ptr, ptr %120, align 8, !tbaa !90
  %122 = sub i32 %117, %115
  %123 = zext i32 %122 to i64
  tail call void @png_write_IDAT(ptr noundef %0, ptr noundef %121, i64 noundef %123)
  br label %124

124:                                              ; preds = %119, %113
  tail call fastcc void @png_zlib_release(ptr noundef %0)
  %125 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 11
  store i32 0, ptr %125, align 8, !tbaa !161
  br label %126

126:                                              ; preds = %60, %85, %1, %124
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @png_zlib_release(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [8 x [32 x i8]], align 16
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %9 = tail call i32 @deflateReset(ptr noundef nonnull %8) #11
  %10 = load i32, ptr %3, align 4, !tbaa !80
  %11 = and i32 %10, -5
  store i32 %11, ptr %3, align 4, !tbaa !80
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #11
  %14 = add i32 %9, 6
  %15 = icmp ult i32 %14, 5
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = zext nneg i32 %14 to i64
  %18 = shl i64 %17, 2
  %19 = call ptr @llvm.load.relative.i64(ptr @reltable.png_zlib_release, i64 %18)
  br label %20

20:                                               ; preds = %13, %16
  %21 = phi ptr [ %19, %16 ], [ @.str.59, %13 ]
  call void @png_warning_parameter_signed(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef %9) #11
  call void @png_warning_parameter(ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull %21) #11
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @.str.60, ptr %23
  call void @png_warning_parameter(ptr noundef nonnull %2, i32 noundef 3, ptr noundef nonnull %25) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.61) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #11
  br label %27

26:                                               ; preds = %1
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.62) #11
  br label %27

27:                                               ; preds = %7, %20, %26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_interlace(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp slt i32 %2, 6
  br i1 %4, label %5, label %201

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !162
  %8 = load i32, ptr %0, align 8, !tbaa !164
  switch i8 %7, label %149 [
    i8 1, label %9
    i8 2, label %55
    i8 4, label %102
  ]

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = icmp ugt i32 %8, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  %16 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %10
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %41
  %20 = phi ptr [ %1, %15 ], [ %44, %41 ]
  %21 = phi i32 [ 7, %15 ], [ %43, %41 ]
  %22 = phi i32 [ 0, %15 ], [ %42, %41 ]
  %23 = phi i32 [ %13, %15 ], [ %45, %41 ]
  %24 = lshr i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = and i32 %23, 7
  %30 = xor i32 %29, 7
  %31 = lshr i32 %28, %30
  %32 = and i32 %31, 1
  %33 = shl nuw i32 %32, %21
  %34 = or i32 %33, %22
  %35 = icmp eq i32 %21, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = trunc i32 %34 to i8
  %38 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %37, ptr %20, align 1, !tbaa !34
  br label %41

39:                                               ; preds = %19
  %40 = add nsw i32 %21, -1
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi i32 [ 0, %36 ], [ %34, %39 ]
  %43 = phi i32 [ 7, %36 ], [ %40, %39 ]
  %44 = phi ptr [ %38, %36 ], [ %20, %39 ]
  %45 = add i32 %23, %18
  %46 = icmp ult i32 %45, %8
  br i1 %46, label %19, label %47, !llvm.loop !165

47:                                               ; preds = %41
  %48 = icmp eq i32 %43, 7
  %49 = trunc i32 %42 to i8
  br label %50

50:                                               ; preds = %47, %9
  %51 = phi i8 [ 0, %9 ], [ %49, %47 ]
  %52 = phi i1 [ true, %9 ], [ %48, %47 ]
  %53 = phi ptr [ %1, %9 ], [ %44, %47 ]
  br i1 %52, label %173, label %54

54:                                               ; preds = %50
  store i8 %51, ptr %53, align 1, !tbaa !34
  br label %173

55:                                               ; preds = %5
  %56 = sext i32 %2 to i64
  %57 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !34
  %59 = zext i8 %58 to i32
  %60 = icmp ugt i32 %8, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %56
  %63 = load i8, ptr %62, align 1, !tbaa !34
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %61, %88
  %66 = phi ptr [ %1, %61 ], [ %91, %88 ]
  %67 = phi i32 [ 6, %61 ], [ %90, %88 ]
  %68 = phi i32 [ 0, %61 ], [ %89, %88 ]
  %69 = phi i32 [ %59, %61 ], [ %92, %88 ]
  %70 = lshr i32 %69, 2
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !34
  %74 = zext i8 %73 to i32
  %75 = shl i32 %69, 1
  %76 = and i32 %75, 6
  %77 = xor i32 %76, 6
  %78 = lshr i32 %74, %77
  %79 = and i32 %78, 3
  %80 = shl i32 %79, %67
  %81 = or i32 %80, %68
  %82 = icmp eq i32 %67, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %65
  %84 = trunc i32 %81 to i8
  %85 = getelementptr inbounds i8, ptr %66, i64 1
  store i8 %84, ptr %66, align 1, !tbaa !34
  br label %88

86:                                               ; preds = %65
  %87 = add nsw i32 %67, -2
  br label %88

88:                                               ; preds = %83, %86
  %89 = phi i32 [ 0, %83 ], [ %81, %86 ]
  %90 = phi i32 [ 6, %83 ], [ %87, %86 ]
  %91 = phi ptr [ %85, %83 ], [ %66, %86 ]
  %92 = add i32 %69, %64
  %93 = icmp ult i32 %92, %8
  br i1 %93, label %65, label %94, !llvm.loop !166

94:                                               ; preds = %88
  %95 = icmp eq i32 %90, 6
  %96 = trunc i32 %89 to i8
  br label %97

97:                                               ; preds = %94, %55
  %98 = phi i8 [ 0, %55 ], [ %96, %94 ]
  %99 = phi i1 [ true, %55 ], [ %95, %94 ]
  %100 = phi ptr [ %1, %55 ], [ %91, %94 ]
  br i1 %99, label %173, label %101

101:                                              ; preds = %97
  store i8 %98, ptr %100, align 1, !tbaa !34
  br label %173

102:                                              ; preds = %5
  %103 = sext i32 %2 to i64
  %104 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !34
  %106 = zext i8 %105 to i32
  %107 = icmp ugt i32 %8, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %102
  %109 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %103
  %110 = load i8, ptr %109, align 1, !tbaa !34
  %111 = zext i8 %110 to i32
  br label %112

112:                                              ; preds = %108, %135
  %113 = phi i32 [ %106, %108 ], [ %139, %135 ]
  %114 = phi i32 [ 0, %108 ], [ %138, %135 ]
  %115 = phi i32 [ 4, %108 ], [ %137, %135 ]
  %116 = phi ptr [ %1, %108 ], [ %136, %135 ]
  %117 = lshr i32 %113, 1
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %1, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !34
  %121 = zext i8 %120 to i32
  %122 = shl i32 %113, 2
  %123 = and i32 %122, 4
  %124 = xor i32 %123, 4
  %125 = lshr i32 %121, %124
  %126 = and i32 %125, 15
  %127 = shl i32 %126, %115
  %128 = or i32 %127, %114
  %129 = icmp eq i32 %115, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = trunc i32 %128 to i8
  %132 = getelementptr inbounds i8, ptr %116, i64 1
  store i8 %131, ptr %116, align 1, !tbaa !34
  br label %135

133:                                              ; preds = %112
  %134 = add nsw i32 %115, -4
  br label %135

135:                                              ; preds = %130, %133
  %136 = phi ptr [ %132, %130 ], [ %116, %133 ]
  %137 = phi i32 [ 4, %130 ], [ %134, %133 ]
  %138 = phi i32 [ 0, %130 ], [ %128, %133 ]
  %139 = add i32 %113, %111
  %140 = icmp ult i32 %139, %8
  br i1 %140, label %112, label %141, !llvm.loop !167

141:                                              ; preds = %135
  %142 = icmp eq i32 %137, 4
  %143 = trunc i32 %138 to i8
  br label %144

144:                                              ; preds = %141, %102
  %145 = phi ptr [ %1, %102 ], [ %136, %141 ]
  %146 = phi i1 [ true, %102 ], [ %142, %141 ]
  %147 = phi i8 [ 0, %102 ], [ %143, %141 ]
  br i1 %146, label %173, label %148

148:                                              ; preds = %144
  store i8 %147, ptr %145, align 1, !tbaa !34
  br label %173

149:                                              ; preds = %5
  %150 = lshr i8 %7, 3
  %151 = zext nneg i8 %150 to i64
  %152 = sext i32 %2 to i64
  %153 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !34
  %155 = zext i8 %154 to i32
  %156 = icmp ugt i32 %8, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %149
  %158 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %152
  %159 = load i8, ptr %158, align 1, !tbaa !34
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %157, %169
  %162 = phi i32 [ %155, %157 ], [ %171, %169 ]
  %163 = phi ptr [ %1, %157 ], [ %170, %169 ]
  %164 = zext i32 %162 to i64
  %165 = mul nuw nsw i64 %164, %151
  %166 = getelementptr inbounds i8, ptr %1, i64 %165
  %167 = icmp eq ptr %163, %166
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %163, ptr align 1 %166, i64 %151, i1 false)
  br label %169

169:                                              ; preds = %168, %161
  %170 = getelementptr inbounds i8, ptr %163, i64 %151
  %171 = add i32 %162, %160
  %172 = icmp ult i32 %171, %8
  br i1 %172, label %161, label %173, !llvm.loop !168

173:                                              ; preds = %169, %149, %144, %148, %97, %101, %50, %54
  %174 = load i32, ptr %0, align 8, !tbaa !164
  %175 = sext i32 %2 to i64
  %176 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !34
  %178 = zext i8 %177 to i32
  %179 = add i32 %174, %178
  %180 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %175
  %181 = load i8, ptr %180, align 1, !tbaa !34
  %182 = zext i8 %181 to i32
  %183 = xor i32 %182, -1
  %184 = add i32 %179, %183
  %185 = udiv i32 %184, %178
  store i32 %185, ptr %0, align 8, !tbaa !164
  %186 = load i8, ptr %6, align 1, !tbaa !162
  %187 = icmp ugt i8 %186, 7
  %188 = zext i32 %185 to i64
  br i1 %187, label %189, label %193

189:                                              ; preds = %173
  %190 = lshr i8 %186, 3
  %191 = zext nneg i8 %190 to i64
  %192 = mul nuw nsw i64 %191, %188
  br label %198

193:                                              ; preds = %173
  %194 = zext nneg i8 %186 to i64
  %195 = mul nuw nsw i64 %194, %188
  %196 = add nuw nsw i64 %195, 7
  %197 = lshr i64 %196, 3
  br label %198

198:                                              ; preds = %193, %189
  %199 = phi i64 [ %192, %189 ], [ %197, %193 ]
  %200 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %199, ptr %200, align 8, !tbaa !169
  br label %201

201:                                              ; preds = %198, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_find_filter(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %4 = load i8, ptr %3, align 2, !tbaa !68
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 108
  %8 = load i8, ptr %7, align 1, !tbaa !170
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  %10 = load i8, ptr %9, align 1, !tbaa !162
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 7
  %13 = lshr i32 %12, 3
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !149
  %18 = zext i8 %4 to i32
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i8 %4, 8
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %89

23:                                               ; preds = %2
  %24 = icmp eq i64 %6, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %23, %25
  %26 = phi ptr [ %29, %25 ], [ %17, %23 ]
  %27 = phi i32 [ %35, %25 ], [ 0, %23 ]
  %28 = phi i64 [ %36, %25 ], [ 0, %23 ]
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = sub nuw nsw i32 256, %31
  %33 = icmp slt i8 %30, 0
  %34 = select i1 %33, i32 %32, i32 %31
  %35 = add i32 %34, %27
  %36 = add nuw i64 %28, 1
  %37 = icmp eq i64 %36, %6
  br i1 %37, label %38, label %25, !llvm.loop !171

38:                                               ; preds = %25, %23
  %39 = phi i32 [ 0, %23 ], [ %35, %25 ]
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %41 = load i8, ptr %40, align 8, !tbaa !172
  %42 = icmp eq i8 %41, 2
  br i1 %42, label %43, label %89

43:                                               ; preds = %38
  %44 = and i32 %39, 65535
  %45 = lshr i32 %39, 10
  %46 = and i32 %45, 4194240
  %47 = icmp eq i8 %8, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %50 = load ptr, ptr %49, align 8, !tbaa !173
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %52 = zext i8 %8 to i64
  br label %53

53:                                               ; preds = %48, %69
  %54 = phi i64 [ 0, %48 ], [ %72, %69 ]
  %55 = phi i32 [ %46, %48 ], [ %71, %69 ]
  %56 = phi i32 [ %44, %48 ], [ %70, %69 ]
  %57 = getelementptr inbounds i8, ptr %50, i64 %54
  %58 = load i8, ptr %57, align 1, !tbaa !34
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load ptr, ptr %51, align 8, !tbaa !174
  %62 = getelementptr inbounds i16, ptr %61, i64 %54
  %63 = load i16, ptr %62, align 2, !tbaa !135
  %64 = zext i16 %63 to i32
  %65 = mul i32 %56, %64
  %66 = lshr i32 %65, 8
  %67 = mul i32 %55, %64
  %68 = lshr i32 %67, 8
  br label %69

69:                                               ; preds = %53, %60
  %70 = phi i32 [ %66, %60 ], [ %56, %53 ]
  %71 = phi i32 [ %68, %60 ], [ %55, %53 ]
  %72 = add nuw nsw i64 %54, 1
  %73 = icmp eq i64 %72, %52
  br i1 %73, label %74, label %53, !llvm.loop !175

74:                                               ; preds = %69, %43
  %75 = phi i32 [ %44, %43 ], [ %70, %69 ]
  %76 = phi i32 [ %46, %43 ], [ %71, %69 ]
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %78 = load ptr, ptr %77, align 8, !tbaa !176
  %79 = load i16, ptr %78, align 2, !tbaa !135
  %80 = zext i16 %79 to i32
  %81 = mul i32 %76, %80
  %82 = icmp ugt i32 %81, 33553927
  br i1 %82, label %89, label %83

83:                                               ; preds = %74
  %84 = mul i32 %75, %80
  %85 = lshr i32 %84, 3
  %86 = shl nuw i32 %81, 7
  %87 = and i32 %86, -1024
  %88 = add i32 %87, %85
  br label %89

89:                                               ; preds = %38, %74, %83, %2
  %90 = phi i32 [ 2147483647, %2 ], [ %39, %38 ], [ %88, %83 ], [ 2147483647, %74 ]
  %91 = icmp eq i8 %4, 16
  br i1 %91, label %92, label %126

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %17, i64 1
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  %95 = load ptr, ptr %94, align 8, !tbaa !150
  %96 = zext nneg i32 %13 to i64
  %97 = getelementptr i8, ptr %95, i64 1
  %98 = icmp eq i8 %10, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %104, %92
  %100 = phi i64 [ 0, %92 ], [ %96, %104 ]
  %101 = phi ptr [ %93, %92 ], [ %110, %104 ]
  %102 = phi ptr [ %97, %92 ], [ %111, %104 ]
  %103 = icmp ult i64 %100, %6
  br i1 %103, label %113, label %284

104:                                              ; preds = %92, %104
  %105 = phi ptr [ %111, %104 ], [ %97, %92 ]
  %106 = phi ptr [ %110, %104 ], [ %93, %92 ]
  %107 = phi i64 [ %109, %104 ], [ 0, %92 ]
  %108 = load i8, ptr %106, align 1, !tbaa !34
  store i8 %108, ptr %105, align 1, !tbaa !34
  %109 = add nuw nsw i64 %107, 1
  %110 = getelementptr inbounds i8, ptr %106, i64 1
  %111 = getelementptr inbounds i8, ptr %105, i64 1
  %112 = icmp eq i64 %109, %96
  br i1 %112, label %99, label %104, !llvm.loop !177

113:                                              ; preds = %99, %113
  %114 = phi ptr [ %122, %113 ], [ %101, %99 ]
  %115 = phi ptr [ %123, %113 ], [ %93, %99 ]
  %116 = phi ptr [ %124, %113 ], [ %102, %99 ]
  %117 = phi i64 [ %121, %113 ], [ %100, %99 ]
  %118 = load i8, ptr %114, align 1, !tbaa !34
  %119 = load i8, ptr %115, align 1, !tbaa !34
  %120 = sub i8 %118, %119
  store i8 %120, ptr %116, align 1, !tbaa !34
  %121 = add nuw i64 %117, 1
  %122 = getelementptr inbounds i8, ptr %114, i64 1
  %123 = getelementptr inbounds i8, ptr %115, i64 1
  %124 = getelementptr inbounds i8, ptr %116, i64 1
  %125 = icmp eq i64 %121, %6
  br i1 %125, label %284, label %113, !llvm.loop !178

126:                                              ; preds = %89
  %127 = and i32 %18, 16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %288, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %131 = load i8, ptr %130, align 8, !tbaa !172
  %132 = icmp eq i8 %131, 2
  br i1 %132, label %133, label %180

133:                                              ; preds = %129
  %134 = and i32 %90, 65535
  %135 = lshr i32 %90, 10
  %136 = and i32 %135, 4194240
  %137 = icmp eq i8 %8, 0
  br i1 %137, label %164, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %140 = load ptr, ptr %139, align 8, !tbaa !173
  %141 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %142 = zext i8 %8 to i64
  br label %143

143:                                              ; preds = %138, %159
  %144 = phi i64 [ 0, %138 ], [ %162, %159 ]
  %145 = phi i32 [ %134, %138 ], [ %161, %159 ]
  %146 = phi i32 [ %136, %138 ], [ %160, %159 ]
  %147 = getelementptr inbounds i8, ptr %140, i64 %144
  %148 = load i8, ptr %147, align 1, !tbaa !34
  %149 = icmp eq i8 %148, 1
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load ptr, ptr %141, align 8, !tbaa !179
  %152 = getelementptr inbounds i16, ptr %151, i64 %144
  %153 = load i16, ptr %152, align 2, !tbaa !135
  %154 = zext i16 %153 to i32
  %155 = mul i32 %145, %154
  %156 = lshr i32 %155, 8
  %157 = mul i32 %146, %154
  %158 = lshr i32 %157, 8
  br label %159

159:                                              ; preds = %143, %150
  %160 = phi i32 [ %158, %150 ], [ %146, %143 ]
  %161 = phi i32 [ %156, %150 ], [ %145, %143 ]
  %162 = add nuw nsw i64 %144, 1
  %163 = icmp eq i64 %162, %142
  br i1 %163, label %164, label %143, !llvm.loop !180

164:                                              ; preds = %159, %133
  %165 = phi i32 [ %136, %133 ], [ %160, %159 ]
  %166 = phi i32 [ %134, %133 ], [ %161, %159 ]
  %167 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %168 = load ptr, ptr %167, align 8, !tbaa !181
  %169 = getelementptr inbounds i16, ptr %168, i64 1
  %170 = load i16, ptr %169, align 2, !tbaa !135
  %171 = zext i16 %170 to i32
  %172 = mul i32 %165, %171
  %173 = icmp ugt i32 %172, 33553927
  br i1 %173, label %180, label %174

174:                                              ; preds = %164
  %175 = mul i32 %166, %171
  %176 = lshr i32 %175, 3
  %177 = shl nuw i32 %172, 7
  %178 = and i32 %177, -1024
  %179 = add i32 %178, %176
  br label %180

180:                                              ; preds = %174, %164, %129
  %181 = phi i32 [ %90, %129 ], [ %179, %174 ], [ 2147483647, %164 ]
  %182 = getelementptr inbounds i8, ptr %17, i64 1
  %183 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  %184 = load ptr, ptr %183, align 8, !tbaa !150
  %185 = zext nneg i32 %13 to i64
  %186 = getelementptr i8, ptr %184, i64 1
  %187 = icmp eq i8 %10, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %194, %180
  %189 = phi ptr [ %182, %180 ], [ %206, %194 ]
  %190 = phi i32 [ 0, %180 ], [ %204, %194 ]
  %191 = phi i64 [ 0, %180 ], [ %185, %194 ]
  %192 = phi ptr [ %186, %180 ], [ %207, %194 ]
  %193 = icmp ult i64 %191, %6
  br i1 %193, label %209, label %230

194:                                              ; preds = %180, %194
  %195 = phi ptr [ %207, %194 ], [ %186, %180 ]
  %196 = phi i64 [ %205, %194 ], [ 0, %180 ]
  %197 = phi i32 [ %204, %194 ], [ 0, %180 ]
  %198 = phi ptr [ %206, %194 ], [ %182, %180 ]
  %199 = load i8, ptr %198, align 1, !tbaa !34
  store i8 %199, ptr %195, align 1, !tbaa !34
  %200 = zext i8 %199 to i32
  %201 = sub nuw nsw i32 256, %200
  %202 = icmp slt i8 %199, 0
  %203 = select i1 %202, i32 %201, i32 %200
  %204 = add i32 %203, %197
  %205 = add nuw nsw i64 %196, 1
  %206 = getelementptr inbounds i8, ptr %198, i64 1
  %207 = getelementptr inbounds i8, ptr %195, i64 1
  %208 = icmp eq i64 %205, %185
  br i1 %208, label %188, label %194, !llvm.loop !182

209:                                              ; preds = %188, %209
  %210 = phi i64 [ %224, %209 ], [ %191, %188 ]
  %211 = phi i32 [ %222, %209 ], [ %190, %188 ]
  %212 = phi ptr [ %226, %209 ], [ %182, %188 ]
  %213 = phi ptr [ %227, %209 ], [ %192, %188 ]
  %214 = phi ptr [ %225, %209 ], [ %189, %188 ]
  %215 = load i8, ptr %214, align 1, !tbaa !34
  %216 = load i8, ptr %212, align 1, !tbaa !34
  %217 = sub i8 %215, %216
  store i8 %217, ptr %213, align 1, !tbaa !34
  %218 = zext i8 %217 to i32
  %219 = sub nuw nsw i32 256, %218
  %220 = icmp slt i8 %217, 0
  %221 = select i1 %220, i32 %219, i32 %218
  %222 = add i32 %221, %211
  %223 = icmp ule i32 %222, %181
  %224 = add nuw i64 %210, 1
  %225 = getelementptr inbounds i8, ptr %214, i64 1
  %226 = getelementptr inbounds i8, ptr %212, i64 1
  %227 = getelementptr inbounds i8, ptr %213, i64 1
  %228 = icmp ult i64 %224, %6
  %229 = select i1 %223, i1 %228, i1 false
  br i1 %229, label %209, label %230, !llvm.loop !183

230:                                              ; preds = %209, %188
  %231 = phi i32 [ %190, %188 ], [ %222, %209 ]
  %232 = load i8, ptr %130, align 8, !tbaa !172
  %233 = icmp eq i8 %232, 2
  br i1 %233, label %234, label %281

234:                                              ; preds = %230
  %235 = and i32 %231, 65535
  %236 = lshr i32 %231, 10
  %237 = and i32 %236, 4194240
  %238 = icmp eq i8 %8, 0
  br i1 %238, label %265, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %241 = load ptr, ptr %240, align 8, !tbaa !173
  %242 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %243 = zext i8 %8 to i64
  br label %244

244:                                              ; preds = %239, %260
  %245 = phi i64 [ 0, %239 ], [ %263, %260 ]
  %246 = phi i32 [ %235, %239 ], [ %262, %260 ]
  %247 = phi i32 [ %237, %239 ], [ %261, %260 ]
  %248 = getelementptr inbounds i8, ptr %241, i64 %245
  %249 = load i8, ptr %248, align 1, !tbaa !34
  %250 = icmp eq i8 %249, 1
  br i1 %250, label %251, label %260

251:                                              ; preds = %244
  %252 = load ptr, ptr %242, align 8, !tbaa !179
  %253 = getelementptr inbounds i16, ptr %252, i64 %245
  %254 = load i16, ptr %253, align 2, !tbaa !135
  %255 = zext i16 %254 to i32
  %256 = mul i32 %246, %255
  %257 = lshr i32 %256, 8
  %258 = mul i32 %247, %255
  %259 = lshr i32 %258, 8
  br label %260

260:                                              ; preds = %244, %251
  %261 = phi i32 [ %259, %251 ], [ %247, %244 ]
  %262 = phi i32 [ %257, %251 ], [ %246, %244 ]
  %263 = add nuw nsw i64 %245, 1
  %264 = icmp eq i64 %263, %243
  br i1 %264, label %265, label %244, !llvm.loop !184

265:                                              ; preds = %260, %234
  %266 = phi i32 [ %237, %234 ], [ %261, %260 ]
  %267 = phi i32 [ %235, %234 ], [ %262, %260 ]
  %268 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %269 = load ptr, ptr %268, align 8, !tbaa !181
  %270 = getelementptr inbounds i16, ptr %269, i64 1
  %271 = load i16, ptr %270, align 2, !tbaa !135
  %272 = zext i16 %271 to i32
  %273 = mul i32 %266, %272
  %274 = icmp ugt i32 %273, 33553927
  br i1 %274, label %281, label %275

275:                                              ; preds = %265
  %276 = mul i32 %267, %272
  %277 = lshr i32 %276, 3
  %278 = shl nuw i32 %273, 7
  %279 = and i32 %278, -1024
  %280 = add i32 %279, %277
  br label %281

281:                                              ; preds = %275, %265, %230
  %282 = phi i32 [ %231, %230 ], [ %280, %275 ], [ 2147483647, %265 ]
  %283 = icmp ult i32 %282, %90
  br i1 %283, label %284, label %288

284:                                              ; preds = %113, %281, %99
  %285 = phi ptr [ %94, %99 ], [ %183, %281 ], [ %94, %113 ]
  %286 = phi i32 [ %90, %99 ], [ %282, %281 ], [ %90, %113 ]
  %287 = load ptr, ptr %285, align 8, !tbaa !150
  br label %288

288:                                              ; preds = %284, %281, %126
  %289 = phi i32 [ %90, %126 ], [ %90, %281 ], [ %286, %284 ]
  %290 = phi ptr [ %17, %126 ], [ %17, %281 ], [ %287, %284 ]
  %291 = icmp eq i8 %4, 32
  br i1 %291, label %292, label %310

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %294 = icmp eq i64 %6, 0
  br i1 %294, label %445, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %293, align 8, !tbaa !152
  br label %297

297:                                              ; preds = %295, %297
  %298 = phi i64 [ %308, %297 ], [ 0, %295 ]
  %299 = phi ptr [ %303, %297 ], [ %15, %295 ]
  %300 = phi ptr [ %302, %297 ], [ %296, %295 ]
  %301 = phi ptr [ %304, %297 ], [ %17, %295 ]
  %302 = getelementptr inbounds i8, ptr %300, i64 1
  %303 = getelementptr inbounds i8, ptr %299, i64 1
  %304 = getelementptr inbounds i8, ptr %301, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !34
  %306 = load i8, ptr %303, align 1, !tbaa !34
  %307 = sub i8 %305, %306
  store i8 %307, ptr %302, align 1, !tbaa !34
  %308 = add nuw i64 %298, 1
  %309 = icmp eq i64 %308, %6
  br i1 %309, label %445, label %297, !llvm.loop !185

310:                                              ; preds = %288
  %311 = and i32 %18, 32
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %449, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %315 = load i8, ptr %314, align 8, !tbaa !172
  %316 = icmp eq i8 %315, 2
  br i1 %316, label %317, label %364

317:                                              ; preds = %313
  %318 = and i32 %289, 65535
  %319 = lshr i32 %289, 10
  %320 = and i32 %319, 4194240
  %321 = icmp eq i8 %8, 0
  br i1 %321, label %348, label %322

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %324 = load ptr, ptr %323, align 8, !tbaa !173
  %325 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %326 = zext i8 %8 to i64
  br label %327

327:                                              ; preds = %322, %343
  %328 = phi i64 [ 0, %322 ], [ %346, %343 ]
  %329 = phi i32 [ %318, %322 ], [ %345, %343 ]
  %330 = phi i32 [ %320, %322 ], [ %344, %343 ]
  %331 = getelementptr inbounds i8, ptr %324, i64 %328
  %332 = load i8, ptr %331, align 1, !tbaa !34
  %333 = icmp eq i8 %332, 2
  br i1 %333, label %334, label %343

334:                                              ; preds = %327
  %335 = load ptr, ptr %325, align 8, !tbaa !179
  %336 = getelementptr inbounds i16, ptr %335, i64 %328
  %337 = load i16, ptr %336, align 2, !tbaa !135
  %338 = zext i16 %337 to i32
  %339 = mul i32 %329, %338
  %340 = lshr i32 %339, 8
  %341 = mul i32 %330, %338
  %342 = lshr i32 %341, 8
  br label %343

343:                                              ; preds = %327, %334
  %344 = phi i32 [ %342, %334 ], [ %330, %327 ]
  %345 = phi i32 [ %340, %334 ], [ %329, %327 ]
  %346 = add nuw nsw i64 %328, 1
  %347 = icmp eq i64 %346, %326
  br i1 %347, label %348, label %327, !llvm.loop !186

348:                                              ; preds = %343, %317
  %349 = phi i32 [ %320, %317 ], [ %344, %343 ]
  %350 = phi i32 [ %318, %317 ], [ %345, %343 ]
  %351 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %352 = load ptr, ptr %351, align 8, !tbaa !181
  %353 = getelementptr inbounds i16, ptr %352, i64 2
  %354 = load i16, ptr %353, align 2, !tbaa !135
  %355 = zext i16 %354 to i32
  %356 = mul i32 %349, %355
  %357 = icmp ugt i32 %356, 33553927
  br i1 %357, label %364, label %358

358:                                              ; preds = %348
  %359 = mul i32 %350, %355
  %360 = lshr i32 %359, 3
  %361 = shl nuw i32 %356, 7
  %362 = and i32 %361, -1024
  %363 = add i32 %362, %360
  br label %364

364:                                              ; preds = %358, %348, %313
  %365 = phi i32 [ %289, %313 ], [ %363, %358 ], [ 2147483647, %348 ]
  %366 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %367 = icmp eq i64 %6, 0
  br i1 %367, label %391, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr %366, align 8, !tbaa !152
  br label %370

370:                                              ; preds = %370, %368
  %371 = phi ptr [ %17, %368 ], [ %378, %370 ]
  %372 = phi ptr [ %15, %368 ], [ %377, %370 ]
  %373 = phi ptr [ %369, %368 ], [ %376, %370 ]
  %374 = phi i64 [ 0, %368 ], [ %388, %370 ]
  %375 = phi i32 [ 0, %368 ], [ %386, %370 ]
  %376 = getelementptr inbounds i8, ptr %373, i64 1
  %377 = getelementptr inbounds i8, ptr %372, i64 1
  %378 = getelementptr inbounds i8, ptr %371, i64 1
  %379 = load i8, ptr %378, align 1, !tbaa !34
  %380 = load i8, ptr %377, align 1, !tbaa !34
  %381 = sub i8 %379, %380
  store i8 %381, ptr %376, align 1, !tbaa !34
  %382 = zext i8 %381 to i32
  %383 = sub nuw nsw i32 256, %382
  %384 = icmp slt i8 %381, 0
  %385 = select i1 %384, i32 %383, i32 %382
  %386 = add i32 %385, %375
  %387 = icmp ugt i32 %386, %365
  %388 = add nuw i64 %374, 1
  %389 = icmp eq i64 %388, %6
  %390 = select i1 %387, i1 true, i1 %389
  br i1 %390, label %391, label %370, !llvm.loop !187

391:                                              ; preds = %370, %364
  %392 = phi i32 [ 0, %364 ], [ %386, %370 ]
  %393 = load i8, ptr %314, align 8, !tbaa !172
  %394 = icmp eq i8 %393, 2
  br i1 %394, label %395, label %442

395:                                              ; preds = %391
  %396 = and i32 %392, 65535
  %397 = lshr i32 %392, 10
  %398 = and i32 %397, 4194240
  %399 = icmp eq i8 %8, 0
  br i1 %399, label %426, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %402 = load ptr, ptr %401, align 8, !tbaa !173
  %403 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %404 = zext i8 %8 to i64
  br label %405

405:                                              ; preds = %400, %421
  %406 = phi i64 [ 0, %400 ], [ %424, %421 ]
  %407 = phi i32 [ %396, %400 ], [ %423, %421 ]
  %408 = phi i32 [ %398, %400 ], [ %422, %421 ]
  %409 = getelementptr inbounds i8, ptr %402, i64 %406
  %410 = load i8, ptr %409, align 1, !tbaa !34
  %411 = icmp eq i8 %410, 2
  br i1 %411, label %412, label %421

412:                                              ; preds = %405
  %413 = load ptr, ptr %403, align 8, !tbaa !174
  %414 = getelementptr inbounds i16, ptr %413, i64 %406
  %415 = load i16, ptr %414, align 2, !tbaa !135
  %416 = zext i16 %415 to i32
  %417 = mul i32 %407, %416
  %418 = lshr i32 %417, 8
  %419 = mul i32 %408, %416
  %420 = lshr i32 %419, 8
  br label %421

421:                                              ; preds = %405, %412
  %422 = phi i32 [ %420, %412 ], [ %408, %405 ]
  %423 = phi i32 [ %418, %412 ], [ %407, %405 ]
  %424 = add nuw nsw i64 %406, 1
  %425 = icmp eq i64 %424, %404
  br i1 %425, label %426, label %405, !llvm.loop !188

426:                                              ; preds = %421, %395
  %427 = phi i32 [ %398, %395 ], [ %422, %421 ]
  %428 = phi i32 [ %396, %395 ], [ %423, %421 ]
  %429 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %430 = load ptr, ptr %429, align 8, !tbaa !176
  %431 = getelementptr inbounds i16, ptr %430, i64 2
  %432 = load i16, ptr %431, align 2, !tbaa !135
  %433 = zext i16 %432 to i32
  %434 = mul i32 %427, %433
  %435 = icmp ugt i32 %434, 33553927
  br i1 %435, label %442, label %436

436:                                              ; preds = %426
  %437 = mul i32 %428, %433
  %438 = lshr i32 %437, 3
  %439 = shl nuw i32 %434, 7
  %440 = and i32 %439, -1024
  %441 = add i32 %440, %438
  br label %442

442:                                              ; preds = %436, %426, %391
  %443 = phi i32 [ %392, %391 ], [ %441, %436 ], [ 2147483647, %426 ]
  %444 = icmp ult i32 %443, %289
  br i1 %444, label %445, label %449

445:                                              ; preds = %297, %442, %292
  %446 = phi ptr [ %293, %292 ], [ %366, %442 ], [ %293, %297 ]
  %447 = phi i32 [ %289, %292 ], [ %443, %442 ], [ %289, %297 ]
  %448 = load ptr, ptr %446, align 8, !tbaa !152
  br label %449

449:                                              ; preds = %445, %442, %310
  %450 = phi i32 [ %289, %310 ], [ %289, %442 ], [ %447, %445 ]
  %451 = phi ptr [ %290, %310 ], [ %290, %442 ], [ %448, %445 ]
  %452 = icmp eq i8 %4, 64
  br i1 %452, label %453, label %503

453:                                              ; preds = %449
  %454 = getelementptr inbounds i8, ptr %17, i64 1
  %455 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %456 = load ptr, ptr %455, align 8, !tbaa !153
  %457 = getelementptr inbounds i8, ptr %456, i64 1
  %458 = getelementptr inbounds i8, ptr %15, i64 1
  %459 = icmp eq i8 %10, 0
  br i1 %459, label %460, label %467

460:                                              ; preds = %467, %453
  %461 = phi ptr [ %454, %453 ], [ %472, %467 ]
  %462 = phi i32 [ 0, %453 ], [ %13, %467 ]
  %463 = phi ptr [ %457, %453 ], [ %478, %467 ]
  %464 = phi ptr [ %458, %453 ], [ %479, %467 ]
  %465 = zext nneg i32 %462 to i64
  %466 = icmp ugt i64 %6, %465
  br i1 %466, label %481, label %676

467:                                              ; preds = %453, %467
  %468 = phi ptr [ %479, %467 ], [ %458, %453 ]
  %469 = phi ptr [ %478, %467 ], [ %457, %453 ]
  %470 = phi i32 [ %477, %467 ], [ 0, %453 ]
  %471 = phi ptr [ %472, %467 ], [ %454, %453 ]
  %472 = getelementptr inbounds i8, ptr %471, i64 1
  %473 = load i8, ptr %471, align 1, !tbaa !34
  %474 = load i8, ptr %468, align 1, !tbaa !34
  %475 = lshr i8 %474, 1
  %476 = sub i8 %473, %475
  store i8 %476, ptr %469, align 1, !tbaa !34
  %477 = add nuw nsw i32 %470, 1
  %478 = getelementptr inbounds i8, ptr %469, i64 1
  %479 = getelementptr inbounds i8, ptr %468, i64 1
  %480 = icmp eq i32 %477, %13
  br i1 %480, label %460, label %467, !llvm.loop !189

481:                                              ; preds = %460, %481
  %482 = phi i32 [ %500, %481 ], [ %462, %460 ]
  %483 = phi ptr [ %492, %481 ], [ %454, %460 ]
  %484 = phi ptr [ %489, %481 ], [ %464, %460 ]
  %485 = phi ptr [ %499, %481 ], [ %463, %460 ]
  %486 = phi ptr [ %487, %481 ], [ %461, %460 ]
  %487 = getelementptr inbounds i8, ptr %486, i64 1
  %488 = load i8, ptr %486, align 1, !tbaa !34
  %489 = getelementptr inbounds i8, ptr %484, i64 1
  %490 = load i8, ptr %484, align 1, !tbaa !34
  %491 = zext i8 %490 to i16
  %492 = getelementptr inbounds i8, ptr %483, i64 1
  %493 = load i8, ptr %483, align 1, !tbaa !34
  %494 = zext i8 %493 to i16
  %495 = add nuw nsw i16 %494, %491
  %496 = lshr i16 %495, 1
  %497 = trunc i16 %496 to i8
  %498 = sub i8 %488, %497
  %499 = getelementptr inbounds i8, ptr %485, i64 1
  store i8 %498, ptr %485, align 1, !tbaa !34
  %500 = add i32 %482, 1
  %501 = zext i32 %500 to i64
  %502 = icmp ugt i64 %6, %501
  br i1 %502, label %481, label %676, !llvm.loop !190

503:                                              ; preds = %449
  %504 = and i32 %18, 64
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %680, label %506

506:                                              ; preds = %503
  %507 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %508 = load i8, ptr %507, align 8, !tbaa !172
  %509 = icmp eq i8 %508, 2
  br i1 %509, label %510, label %557

510:                                              ; preds = %506
  %511 = and i32 %450, 65535
  %512 = lshr i32 %450, 10
  %513 = and i32 %512, 4194240
  %514 = icmp eq i8 %8, 0
  br i1 %514, label %541, label %515

515:                                              ; preds = %510
  %516 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %517 = load ptr, ptr %516, align 8, !tbaa !173
  %518 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %519 = zext i8 %8 to i64
  br label %520

520:                                              ; preds = %515, %536
  %521 = phi i64 [ 0, %515 ], [ %539, %536 ]
  %522 = phi i32 [ %511, %515 ], [ %538, %536 ]
  %523 = phi i32 [ %513, %515 ], [ %537, %536 ]
  %524 = getelementptr inbounds i8, ptr %517, i64 %521
  %525 = load i8, ptr %524, align 1, !tbaa !34
  %526 = icmp eq i8 %525, 3
  br i1 %526, label %527, label %536

527:                                              ; preds = %520
  %528 = load ptr, ptr %518, align 8, !tbaa !179
  %529 = getelementptr inbounds i16, ptr %528, i64 %521
  %530 = load i16, ptr %529, align 2, !tbaa !135
  %531 = zext i16 %530 to i32
  %532 = mul i32 %522, %531
  %533 = lshr i32 %532, 8
  %534 = mul i32 %523, %531
  %535 = lshr i32 %534, 8
  br label %536

536:                                              ; preds = %520, %527
  %537 = phi i32 [ %535, %527 ], [ %523, %520 ]
  %538 = phi i32 [ %533, %527 ], [ %522, %520 ]
  %539 = add nuw nsw i64 %521, 1
  %540 = icmp eq i64 %539, %519
  br i1 %540, label %541, label %520, !llvm.loop !191

541:                                              ; preds = %536, %510
  %542 = phi i32 [ %513, %510 ], [ %537, %536 ]
  %543 = phi i32 [ %511, %510 ], [ %538, %536 ]
  %544 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %545 = load ptr, ptr %544, align 8, !tbaa !181
  %546 = getelementptr inbounds i16, ptr %545, i64 3
  %547 = load i16, ptr %546, align 2, !tbaa !135
  %548 = zext i16 %547 to i32
  %549 = mul i32 %542, %548
  %550 = icmp ugt i32 %549, 33553927
  br i1 %550, label %557, label %551

551:                                              ; preds = %541
  %552 = mul i32 %543, %548
  %553 = lshr i32 %552, 3
  %554 = shl nuw i32 %549, 7
  %555 = and i32 %554, -1024
  %556 = add i32 %555, %553
  br label %557

557:                                              ; preds = %551, %541, %506
  %558 = phi i32 [ %450, %506 ], [ %556, %551 ], [ 2147483647, %541 ]
  %559 = getelementptr inbounds i8, ptr %17, i64 1
  %560 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %561 = load ptr, ptr %560, align 8, !tbaa !153
  %562 = zext nneg i32 %13 to i64
  %563 = getelementptr inbounds i8, ptr %561, i64 1
  %564 = getelementptr inbounds i8, ptr %15, i64 1
  %565 = icmp eq i8 %10, 0
  br i1 %565, label %566, label %573

566:                                              ; preds = %573, %557
  %567 = phi ptr [ %559, %557 ], [ %579, %573 ]
  %568 = phi i32 [ 0, %557 ], [ %588, %573 ]
  %569 = phi i64 [ 0, %557 ], [ %562, %573 ]
  %570 = phi ptr [ %563, %557 ], [ %590, %573 ]
  %571 = phi ptr [ %564, %557 ], [ %591, %573 ]
  %572 = icmp ult i64 %569, %6
  br i1 %572, label %593, label %622

573:                                              ; preds = %557, %573
  %574 = phi ptr [ %591, %573 ], [ %564, %557 ]
  %575 = phi ptr [ %590, %573 ], [ %563, %557 ]
  %576 = phi i64 [ %589, %573 ], [ 0, %557 ]
  %577 = phi i32 [ %588, %573 ], [ 0, %557 ]
  %578 = phi ptr [ %579, %573 ], [ %559, %557 ]
  %579 = getelementptr inbounds i8, ptr %578, i64 1
  %580 = load i8, ptr %578, align 1, !tbaa !34
  %581 = load i8, ptr %574, align 1, !tbaa !34
  %582 = lshr i8 %581, 1
  %583 = sub i8 %580, %582
  store i8 %583, ptr %575, align 1, !tbaa !34
  %584 = zext i8 %583 to i32
  %585 = sub nuw nsw i32 256, %584
  %586 = icmp slt i8 %583, 0
  %587 = select i1 %586, i32 %585, i32 %584
  %588 = add i32 %587, %577
  %589 = add nuw nsw i64 %576, 1
  %590 = getelementptr inbounds i8, ptr %575, i64 1
  %591 = getelementptr inbounds i8, ptr %574, i64 1
  %592 = icmp eq i64 %589, %562
  br i1 %592, label %566, label %573, !llvm.loop !192

593:                                              ; preds = %566, %593
  %594 = phi i64 [ %619, %593 ], [ %569, %566 ]
  %595 = phi i32 [ %613, %593 ], [ %568, %566 ]
  %596 = phi ptr [ %616, %593 ], [ %559, %566 ]
  %597 = phi ptr [ %617, %593 ], [ %571, %566 ]
  %598 = phi ptr [ %615, %593 ], [ %570, %566 ]
  %599 = phi ptr [ %618, %593 ], [ %567, %566 ]
  %600 = load i8, ptr %599, align 1, !tbaa !34
  %601 = load i8, ptr %597, align 1, !tbaa !34
  %602 = zext i8 %601 to i16
  %603 = load i8, ptr %596, align 1, !tbaa !34
  %604 = zext i8 %603 to i16
  %605 = add nuw nsw i16 %604, %602
  %606 = lshr i16 %605, 1
  %607 = trunc i16 %606 to i8
  %608 = sub i8 %600, %607
  store i8 %608, ptr %598, align 1, !tbaa !34
  %609 = zext i8 %608 to i32
  %610 = sub nuw nsw i32 256, %609
  %611 = icmp slt i8 %608, 0
  %612 = select i1 %611, i32 %610, i32 %609
  %613 = add i32 %612, %595
  %614 = icmp ule i32 %613, %558
  %615 = getelementptr inbounds i8, ptr %598, i64 1
  %616 = getelementptr inbounds i8, ptr %596, i64 1
  %617 = getelementptr inbounds i8, ptr %597, i64 1
  %618 = getelementptr inbounds i8, ptr %599, i64 1
  %619 = add nuw i64 %594, 1
  %620 = icmp ult i64 %619, %6
  %621 = select i1 %614, i1 %620, i1 false
  br i1 %621, label %593, label %622, !llvm.loop !193

622:                                              ; preds = %593, %566
  %623 = phi i32 [ %568, %566 ], [ %613, %593 ]
  %624 = load i8, ptr %507, align 8, !tbaa !172
  %625 = icmp eq i8 %624, 2
  br i1 %625, label %626, label %673

626:                                              ; preds = %622
  %627 = and i32 %623, 65535
  %628 = lshr i32 %623, 10
  %629 = and i32 %628, 4194240
  %630 = icmp eq i8 %8, 0
  br i1 %630, label %657, label %631

631:                                              ; preds = %626
  %632 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %633 = load ptr, ptr %632, align 8, !tbaa !173
  %634 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %635 = zext i8 %8 to i64
  br label %636

636:                                              ; preds = %631, %652
  %637 = phi i64 [ 0, %631 ], [ %655, %652 ]
  %638 = phi i32 [ %627, %631 ], [ %654, %652 ]
  %639 = phi i32 [ %629, %631 ], [ %653, %652 ]
  %640 = getelementptr inbounds i8, ptr %633, i64 %637
  %641 = load i8, ptr %640, align 1, !tbaa !34
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %643, label %652

643:                                              ; preds = %636
  %644 = load ptr, ptr %634, align 8, !tbaa !174
  %645 = getelementptr inbounds i16, ptr %644, i64 %637
  %646 = load i16, ptr %645, align 2, !tbaa !135
  %647 = zext i16 %646 to i32
  %648 = mul i32 %638, %647
  %649 = lshr i32 %648, 8
  %650 = mul i32 %639, %647
  %651 = lshr i32 %650, 8
  br label %652

652:                                              ; preds = %636, %643
  %653 = phi i32 [ %651, %643 ], [ %639, %636 ]
  %654 = phi i32 [ %649, %643 ], [ %638, %636 ]
  %655 = add nuw nsw i64 %637, 1
  %656 = icmp eq i64 %655, %635
  br i1 %656, label %657, label %636, !llvm.loop !194

657:                                              ; preds = %652, %626
  %658 = phi i32 [ %629, %626 ], [ %653, %652 ]
  %659 = phi i32 [ %627, %626 ], [ %654, %652 ]
  %660 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %661 = load ptr, ptr %660, align 8, !tbaa !176
  %662 = getelementptr inbounds i16, ptr %661, i64 3
  %663 = load i16, ptr %662, align 2, !tbaa !135
  %664 = zext i16 %663 to i32
  %665 = mul i32 %658, %664
  %666 = icmp ugt i32 %665, 33553927
  br i1 %666, label %673, label %667

667:                                              ; preds = %657
  %668 = mul i32 %659, %664
  %669 = lshr i32 %668, 3
  %670 = shl nuw i32 %665, 7
  %671 = and i32 %670, -1024
  %672 = add i32 %671, %669
  br label %673

673:                                              ; preds = %667, %657, %622
  %674 = phi i32 [ %623, %622 ], [ %672, %667 ], [ 2147483647, %657 ]
  %675 = icmp ult i32 %674, %450
  br i1 %675, label %676, label %680

676:                                              ; preds = %481, %673, %460
  %677 = phi ptr [ %455, %460 ], [ %560, %673 ], [ %455, %481 ]
  %678 = phi i32 [ %450, %460 ], [ %674, %673 ], [ %450, %481 ]
  %679 = load ptr, ptr %677, align 8, !tbaa !153
  br label %680

680:                                              ; preds = %676, %673, %503
  %681 = phi i32 [ %450, %503 ], [ %450, %673 ], [ %678, %676 ]
  %682 = phi ptr [ %451, %503 ], [ %451, %673 ], [ %679, %676 ]
  %683 = icmp eq i8 %4, -128
  br i1 %683, label %684, label %745

684:                                              ; preds = %680
  %685 = getelementptr inbounds i8, ptr %17, i64 1
  %686 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %687 = load ptr, ptr %686, align 8, !tbaa !154
  %688 = getelementptr inbounds i8, ptr %15, i64 1
  %689 = zext nneg i32 %13 to i64
  %690 = getelementptr inbounds i8, ptr %687, i64 1
  %691 = icmp eq i8 %10, 0
  br i1 %691, label %692, label %698

692:                                              ; preds = %698, %684
  %693 = phi ptr [ %685, %684 ], [ %703, %698 ]
  %694 = phi ptr [ %688, %684 ], [ %705, %698 ]
  %695 = phi i64 [ 0, %684 ], [ %689, %698 ]
  %696 = phi ptr [ %690, %684 ], [ %709, %698 ]
  %697 = icmp ult i64 %695, %6
  br i1 %697, label %711, label %929

698:                                              ; preds = %684, %698
  %699 = phi ptr [ %709, %698 ], [ %690, %684 ]
  %700 = phi i64 [ %708, %698 ], [ 0, %684 ]
  %701 = phi ptr [ %705, %698 ], [ %688, %684 ]
  %702 = phi ptr [ %703, %698 ], [ %685, %684 ]
  %703 = getelementptr inbounds i8, ptr %702, i64 1
  %704 = load i8, ptr %702, align 1, !tbaa !34
  %705 = getelementptr inbounds i8, ptr %701, i64 1
  %706 = load i8, ptr %701, align 1, !tbaa !34
  %707 = sub i8 %704, %706
  store i8 %707, ptr %699, align 1, !tbaa !34
  %708 = add nuw nsw i64 %700, 1
  %709 = getelementptr inbounds i8, ptr %699, i64 1
  %710 = icmp eq i64 %708, %689
  br i1 %710, label %692, label %698, !llvm.loop !195

711:                                              ; preds = %692, %711
  %712 = phi i64 [ %743, %711 ], [ %695, %692 ]
  %713 = phi ptr [ %724, %711 ], [ %685, %692 ]
  %714 = phi ptr [ %721, %711 ], [ %688, %692 ]
  %715 = phi ptr [ %718, %711 ], [ %694, %692 ]
  %716 = phi ptr [ %742, %711 ], [ %696, %692 ]
  %717 = phi ptr [ %739, %711 ], [ %693, %692 ]
  %718 = getelementptr inbounds i8, ptr %715, i64 1
  %719 = load i8, ptr %715, align 1, !tbaa !34
  %720 = zext i8 %719 to i32
  %721 = getelementptr inbounds i8, ptr %714, i64 1
  %722 = load i8, ptr %714, align 1, !tbaa !34
  %723 = zext i8 %722 to i32
  %724 = getelementptr inbounds i8, ptr %713, i64 1
  %725 = load i8, ptr %713, align 1, !tbaa !34
  %726 = zext i8 %725 to i32
  %727 = sub nsw i32 %720, %723
  %728 = sub nsw i32 %726, %723
  %729 = tail call i32 @llvm.abs.i32(i32 %727, i1 true)
  %730 = tail call i32 @llvm.abs.i32(i32 %728, i1 true)
  %731 = add nsw i32 %728, %727
  %732 = tail call i32 @llvm.abs.i32(i32 %731, i1 true)
  %733 = icmp ugt i32 %729, %730
  %734 = icmp ugt i32 %729, %732
  %735 = select i1 %733, i1 true, i1 %734
  %736 = icmp ugt i32 %730, %732
  %737 = select i1 %736, i8 %722, i8 %719
  %738 = select i1 %735, i8 %737, i8 %725
  %739 = getelementptr inbounds i8, ptr %717, i64 1
  %740 = load i8, ptr %717, align 1, !tbaa !34
  %741 = sub i8 %740, %738
  %742 = getelementptr inbounds i8, ptr %716, i64 1
  store i8 %741, ptr %716, align 1, !tbaa !34
  %743 = add nuw i64 %712, 1
  %744 = icmp eq i64 %743, %6
  br i1 %744, label %929, label %711, !llvm.loop !196

745:                                              ; preds = %680
  %746 = icmp sgt i8 %4, -1
  br i1 %746, label %932, label %747

747:                                              ; preds = %745
  %748 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %749 = load i8, ptr %748, align 8, !tbaa !172
  %750 = icmp eq i8 %749, 2
  br i1 %750, label %751, label %798

751:                                              ; preds = %747
  %752 = and i32 %681, 65535
  %753 = lshr i32 %681, 10
  %754 = and i32 %753, 4194240
  %755 = icmp eq i8 %8, 0
  br i1 %755, label %782, label %756

756:                                              ; preds = %751
  %757 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %758 = load ptr, ptr %757, align 8, !tbaa !173
  %759 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %760 = zext i8 %8 to i64
  br label %761

761:                                              ; preds = %756, %777
  %762 = phi i64 [ 0, %756 ], [ %780, %777 ]
  %763 = phi i32 [ %752, %756 ], [ %779, %777 ]
  %764 = phi i32 [ %754, %756 ], [ %778, %777 ]
  %765 = getelementptr inbounds i8, ptr %758, i64 %762
  %766 = load i8, ptr %765, align 1, !tbaa !34
  %767 = icmp eq i8 %766, 4
  br i1 %767, label %768, label %777

768:                                              ; preds = %761
  %769 = load ptr, ptr %759, align 8, !tbaa !179
  %770 = getelementptr inbounds i16, ptr %769, i64 %762
  %771 = load i16, ptr %770, align 2, !tbaa !135
  %772 = zext i16 %771 to i32
  %773 = mul i32 %763, %772
  %774 = lshr i32 %773, 8
  %775 = mul i32 %764, %772
  %776 = lshr i32 %775, 8
  br label %777

777:                                              ; preds = %761, %768
  %778 = phi i32 [ %776, %768 ], [ %764, %761 ]
  %779 = phi i32 [ %774, %768 ], [ %763, %761 ]
  %780 = add nuw nsw i64 %762, 1
  %781 = icmp eq i64 %780, %760
  br i1 %781, label %782, label %761, !llvm.loop !197

782:                                              ; preds = %777, %751
  %783 = phi i32 [ %754, %751 ], [ %778, %777 ]
  %784 = phi i32 [ %752, %751 ], [ %779, %777 ]
  %785 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %786 = load ptr, ptr %785, align 8, !tbaa !181
  %787 = getelementptr inbounds i16, ptr %786, i64 4
  %788 = load i16, ptr %787, align 2, !tbaa !135
  %789 = zext i16 %788 to i32
  %790 = mul i32 %783, %789
  %791 = icmp ugt i32 %790, 33553927
  br i1 %791, label %798, label %792

792:                                              ; preds = %782
  %793 = mul i32 %784, %789
  %794 = lshr i32 %793, 3
  %795 = shl nuw i32 %790, 7
  %796 = and i32 %795, -1024
  %797 = add i32 %796, %794
  br label %798

798:                                              ; preds = %792, %782, %747
  %799 = phi i32 [ %681, %747 ], [ %797, %792 ], [ 2147483647, %782 ]
  %800 = getelementptr inbounds i8, ptr %17, i64 1
  %801 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %802 = load ptr, ptr %801, align 8, !tbaa !154
  %803 = getelementptr inbounds i8, ptr %15, i64 1
  %804 = zext nneg i32 %13 to i64
  %805 = getelementptr inbounds i8, ptr %802, i64 1
  %806 = icmp eq i8 %10, 0
  br i1 %806, label %807, label %814

807:                                              ; preds = %814, %798
  %808 = phi ptr [ %800, %798 ], [ %820, %814 ]
  %809 = phi ptr [ %803, %798 ], [ %822, %814 ]
  %810 = phi i32 [ 0, %798 ], [ %829, %814 ]
  %811 = phi i64 [ 0, %798 ], [ %804, %814 ]
  %812 = phi ptr [ %805, %798 ], [ %831, %814 ]
  %813 = icmp ult i64 %811, %6
  br i1 %813, label %833, label %875

814:                                              ; preds = %798, %814
  %815 = phi ptr [ %831, %814 ], [ %805, %798 ]
  %816 = phi i64 [ %830, %814 ], [ 0, %798 ]
  %817 = phi i32 [ %829, %814 ], [ 0, %798 ]
  %818 = phi ptr [ %822, %814 ], [ %803, %798 ]
  %819 = phi ptr [ %820, %814 ], [ %800, %798 ]
  %820 = getelementptr inbounds i8, ptr %819, i64 1
  %821 = load i8, ptr %819, align 1, !tbaa !34
  %822 = getelementptr inbounds i8, ptr %818, i64 1
  %823 = load i8, ptr %818, align 1, !tbaa !34
  %824 = sub i8 %821, %823
  store i8 %824, ptr %815, align 1, !tbaa !34
  %825 = zext i8 %824 to i32
  %826 = sub nuw nsw i32 256, %825
  %827 = icmp slt i8 %824, 0
  %828 = select i1 %827, i32 %826, i32 %825
  %829 = add i32 %828, %817
  %830 = add nuw nsw i64 %816, 1
  %831 = getelementptr inbounds i8, ptr %815, i64 1
  %832 = icmp eq i64 %830, %804
  br i1 %832, label %807, label %814, !llvm.loop !198

833:                                              ; preds = %807, %833
  %834 = phi i64 [ %872, %833 ], [ %811, %807 ]
  %835 = phi i32 [ %865, %833 ], [ %810, %807 ]
  %836 = phi ptr [ %869, %833 ], [ %800, %807 ]
  %837 = phi ptr [ %870, %833 ], [ %803, %807 ]
  %838 = phi ptr [ %871, %833 ], [ %809, %807 ]
  %839 = phi ptr [ %867, %833 ], [ %812, %807 ]
  %840 = phi ptr [ %868, %833 ], [ %808, %807 ]
  %841 = load i8, ptr %838, align 1, !tbaa !34
  %842 = zext i8 %841 to i32
  %843 = load i8, ptr %837, align 1, !tbaa !34
  %844 = zext i8 %843 to i32
  %845 = load i8, ptr %836, align 1, !tbaa !34
  %846 = zext i8 %845 to i32
  %847 = sub nsw i32 %842, %844
  %848 = sub nsw i32 %846, %844
  %849 = tail call i32 @llvm.abs.i32(i32 %847, i1 true)
  %850 = tail call i32 @llvm.abs.i32(i32 %848, i1 true)
  %851 = add nsw i32 %848, %847
  %852 = tail call i32 @llvm.abs.i32(i32 %851, i1 true)
  %853 = icmp ugt i32 %849, %850
  %854 = icmp ugt i32 %849, %852
  %855 = select i1 %853, i1 true, i1 %854
  %856 = icmp ugt i32 %850, %852
  %857 = select i1 %856, i8 %843, i8 %841
  %858 = select i1 %855, i8 %857, i8 %845
  %859 = load i8, ptr %840, align 1, !tbaa !34
  %860 = sub i8 %859, %858
  store i8 %860, ptr %839, align 1, !tbaa !34
  %861 = zext i8 %860 to i32
  %862 = sub nuw nsw i32 256, %861
  %863 = icmp slt i8 %860, 0
  %864 = select i1 %863, i32 %862, i32 %861
  %865 = add i32 %864, %835
  %866 = icmp ule i32 %865, %799
  %867 = getelementptr inbounds i8, ptr %839, i64 1
  %868 = getelementptr inbounds i8, ptr %840, i64 1
  %869 = getelementptr inbounds i8, ptr %836, i64 1
  %870 = getelementptr inbounds i8, ptr %837, i64 1
  %871 = getelementptr inbounds i8, ptr %838, i64 1
  %872 = add nuw i64 %834, 1
  %873 = icmp ult i64 %872, %6
  %874 = select i1 %866, i1 %873, i1 false
  br i1 %874, label %833, label %875, !llvm.loop !199

875:                                              ; preds = %833, %807
  %876 = phi i32 [ %810, %807 ], [ %865, %833 ]
  %877 = load i8, ptr %748, align 8, !tbaa !172
  %878 = icmp eq i8 %877, 2
  br i1 %878, label %879, label %926

879:                                              ; preds = %875
  %880 = and i32 %876, 65535
  %881 = lshr i32 %876, 10
  %882 = and i32 %881, 4194240
  %883 = icmp eq i8 %8, 0
  br i1 %883, label %910, label %884

884:                                              ; preds = %879
  %885 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %886 = load ptr, ptr %885, align 8, !tbaa !173
  %887 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %888 = zext i8 %8 to i64
  br label %889

889:                                              ; preds = %884, %905
  %890 = phi i64 [ 0, %884 ], [ %908, %905 ]
  %891 = phi i32 [ %880, %884 ], [ %907, %905 ]
  %892 = phi i32 [ %882, %884 ], [ %906, %905 ]
  %893 = getelementptr inbounds i8, ptr %886, i64 %890
  %894 = load i8, ptr %893, align 1, !tbaa !34
  %895 = icmp eq i8 %894, 4
  br i1 %895, label %896, label %905

896:                                              ; preds = %889
  %897 = load ptr, ptr %887, align 8, !tbaa !174
  %898 = getelementptr inbounds i16, ptr %897, i64 %890
  %899 = load i16, ptr %898, align 2, !tbaa !135
  %900 = zext i16 %899 to i32
  %901 = mul i32 %891, %900
  %902 = lshr i32 %901, 8
  %903 = mul i32 %892, %900
  %904 = lshr i32 %903, 8
  br label %905

905:                                              ; preds = %889, %896
  %906 = phi i32 [ %904, %896 ], [ %892, %889 ]
  %907 = phi i32 [ %902, %896 ], [ %891, %889 ]
  %908 = add nuw nsw i64 %890, 1
  %909 = icmp eq i64 %908, %888
  br i1 %909, label %910, label %889, !llvm.loop !200

910:                                              ; preds = %905, %879
  %911 = phi i32 [ %882, %879 ], [ %906, %905 ]
  %912 = phi i32 [ %880, %879 ], [ %907, %905 ]
  %913 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %914 = load ptr, ptr %913, align 8, !tbaa !176
  %915 = getelementptr inbounds i16, ptr %914, i64 4
  %916 = load i16, ptr %915, align 2, !tbaa !135
  %917 = zext i16 %916 to i32
  %918 = mul i32 %911, %917
  %919 = icmp ugt i32 %918, 33553927
  br i1 %919, label %926, label %920

920:                                              ; preds = %910
  %921 = mul i32 %912, %917
  %922 = lshr i32 %921, 3
  %923 = shl nuw i32 %918, 7
  %924 = and i32 %923, -1024
  %925 = add i32 %924, %922
  br label %926

926:                                              ; preds = %920, %910, %875
  %927 = phi i32 [ %876, %875 ], [ %925, %920 ], [ 2147483647, %910 ]
  %928 = icmp ult i32 %927, %681
  br i1 %928, label %929, label %932

929:                                              ; preds = %711, %926, %692
  %930 = phi ptr [ %686, %692 ], [ %801, %926 ], [ %686, %711 ]
  %931 = load ptr, ptr %930, align 8, !tbaa !154
  br label %932

932:                                              ; preds = %929, %926, %745
  %933 = phi ptr [ %682, %745 ], [ %682, %926 ], [ %931, %929 ]
  %934 = load i64, ptr %5, align 8, !tbaa !169
  %935 = add i64 %934, 1
  %936 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  store ptr %933, ptr %936, align 8, !tbaa !104
  %937 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %937, align 8, !tbaa !103
  %938 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %939 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %940 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  br label %941

941:                                              ; preds = %970, %932
  %942 = phi i64 [ %935, %932 ], [ %971, %970 ]
  %943 = load i32, ptr %937, align 8, !tbaa !103
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %945, label %951

945:                                              ; preds = %941
  %946 = icmp ugt i64 %942, 4294967295
  br i1 %946, label %947, label %949

947:                                              ; preds = %945
  store i32 -1, ptr %937, align 8, !tbaa !103
  %948 = add i64 %942, -4294967295
  br label %951

949:                                              ; preds = %945
  %950 = trunc i64 %942 to i32
  store i32 %950, ptr %937, align 8, !tbaa !103
  br label %951

951:                                              ; preds = %949, %947, %941
  %952 = phi i64 [ %948, %947 ], [ 0, %949 ], [ %942, %941 ]
  %953 = tail call i32 @deflate(ptr noundef nonnull %936, i32 noundef 0) #11
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %961, label %955

955:                                              ; preds = %951
  %956 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %957 = load ptr, ptr %956, align 8, !tbaa !105
  %958 = icmp eq ptr %957, null
  br i1 %958, label %960, label %959

959:                                              ; preds = %955
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull %957) #12
  unreachable

960:                                              ; preds = %955
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  unreachable

961:                                              ; preds = %951
  %962 = load i32, ptr %938, align 8, !tbaa !93
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %968

964:                                              ; preds = %961
  %965 = load ptr, ptr %939, align 8, !tbaa !90
  %966 = load i32, ptr %940, align 8, !tbaa !92
  %967 = zext i32 %966 to i64
  tail call void @png_write_IDAT(ptr noundef %0, ptr noundef %965, i64 noundef %967)
  br label %968

968:                                              ; preds = %964, %961
  %969 = icmp eq i64 %952, 0
  br i1 %969, label %972, label %970

970:                                              ; preds = %968, %972
  %971 = phi i64 [ %952, %968 ], [ 0, %972 ]
  br label %941, !llvm.loop !201

972:                                              ; preds = %968
  %973 = load i32, ptr %937, align 8, !tbaa !103
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %975, label %970

975:                                              ; preds = %972
  %976 = load ptr, ptr %14, align 8, !tbaa !151
  %977 = icmp eq ptr %976, null
  br i1 %977, label %980, label %978

978:                                              ; preds = %975
  %979 = load ptr, ptr %16, align 8, !tbaa !149
  store ptr %979, ptr %14, align 8, !tbaa !151
  store ptr %976, ptr %16, align 8, !tbaa !149
  br label %980

980:                                              ; preds = %978, %975
  tail call void @png_write_finish_row(ptr noundef %0)
  %981 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 73
  %982 = load i32, ptr %981, align 4, !tbaa !202
  %983 = freeze i32 %982
  %984 = add i32 %983, 1
  store i32 %984, ptr %981, align 4, !tbaa !202
  %985 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 72
  %986 = load i32, ptr %985, align 8, !tbaa !203
  %987 = add i32 %986, -1
  %988 = icmp ult i32 %987, %984
  br i1 %988, label %989, label %990

989:                                              ; preds = %980
  tail call void @png_write_flush(ptr noundef %0) #11
  br label %990

990:                                              ; preds = %980, %989
  %991 = load i8, ptr %7, align 1, !tbaa !170
  %992 = icmp eq i8 %991, 0
  br i1 %992, label %1014, label %993

993:                                              ; preds = %990
  %994 = icmp ugt i8 %8, 1
  br i1 %994, label %995, label %1008

995:                                              ; preds = %993
  %996 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %997 = zext i8 %8 to i64
  br label %998

998:                                              ; preds = %995, %998
  %999 = phi i64 [ 1, %995 ], [ %1004, %998 ]
  %1000 = load ptr, ptr %996, align 8, !tbaa !173
  %1001 = getelementptr i8, ptr %1000, i64 %999
  %1002 = getelementptr i8, ptr %1001, i64 -1
  %1003 = load i8, ptr %1002, align 1, !tbaa !34
  store i8 %1003, ptr %1001, align 1, !tbaa !34
  %1004 = add nuw nsw i64 %999, 1
  %1005 = icmp eq i64 %1004, %997
  br i1 %1005, label %1006, label %998, !llvm.loop !204

1006:                                             ; preds = %998
  %1007 = and i64 %1004, 4294967295
  br label %1008

1008:                                             ; preds = %1006, %993
  %1009 = phi i64 [ 1, %993 ], [ %1007, %1006 ]
  %1010 = load i8, ptr %933, align 1, !tbaa !34
  %1011 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %1012 = load ptr, ptr %1011, align 8, !tbaa !173
  %1013 = getelementptr inbounds i8, ptr %1012, i64 %1009
  store i8 %1010, ptr %1013, align 1, !tbaa !34
  br label %1014

1014:                                             ; preds = %1008, %990
  ret void
}

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #4

declare void @png_warning_parameter_signed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #4

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #4

declare void @png_warning_parameter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @png_write_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!37 = !{!38, !40, i64 1168}
!38 = !{!"png_struct_def", !35, i64 0, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !35, i64 280, !35, i64 281, !40, i64 284, !40, i64 288, !40, i64 292, !41, i64 296, !39, i64 408, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !42, i64 480, !40, i64 488, !40, i64 492, !40, i64 496, !39, i64 504, !39, i64 512, !39, i64 520, !39, i64 528, !39, i64 536, !39, i64 544, !42, i64 552, !40, i64 560, !40, i64 564, !39, i64 568, !43, i64 576, !40, i64 580, !43, i64 584, !35, i64 586, !35, i64 587, !35, i64 588, !35, i64 589, !35, i64 590, !35, i64 591, !35, i64 592, !35, i64 593, !35, i64 594, !35, i64 595, !35, i64 596, !35, i64 597, !35, i64 598, !35, i64 599, !35, i64 600, !43, i64 606, !35, i64 608, !40, i64 612, !44, i64 616, !44, i64 626, !39, i64 640, !40, i64 648, !40, i64 652, !40, i64 656, !40, i64 660, !40, i64 664, !39, i64 672, !39, i64 680, !39, i64 688, !39, i64 696, !39, i64 704, !39, i64 712, !45, i64 720, !45, i64 725, !39, i64 736, !44, i64 744, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !39, i64 816, !39, i64 824, !40, i64 832, !40, i64 836, !42, i64 840, !42, i64 848, !42, i64 856, !42, i64 864, !40, i64 872, !40, i64 876, !39, i64 880, !39, i64 888, !39, i64 896, !35, i64 904, !35, i64 905, !39, i64 912, !39, i64 920, !39, i64 928, !39, i64 936, !39, i64 944, !35, i64 952, !40, i64 984, !39, i64 992, !39, i64 1000, !40, i64 1008, !39, i64 1016, !35, i64 1024, !35, i64 1025, !35, i64 1026, !43, i64 1028, !43, i64 1030, !40, i64 1032, !35, i64 1036, !39, i64 1040, !39, i64 1048, !39, i64 1056, !39, i64 1064, !39, i64 1072, !39, i64 1080, !39, i64 1088, !35, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !42, i64 1112, !46, i64 1120, !42, i64 1152, !39, i64 1160, !40, i64 1168, !39, i64 1176, !35, i64 1184}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!"z_stream_s", !39, i64 0, !40, i64 8, !42, i64 16, !39, i64 24, !40, i64 32, !42, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !40, i64 88, !42, i64 96, !42, i64 104}
!42 = !{!"long", !35, i64 0}
!43 = !{!"short", !35, i64 0}
!44 = !{!"png_color_16_struct", !35, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8}
!45 = !{!"png_color_8_struct", !35, i64 0, !35, i64 1, !35, i64 2, !35, i64 3, !35, i64 4}
!46 = !{!"png_unknown_chunk_t", !35, i64 0, !39, i64 8, !42, i64 16, !35, i64 24}
!47 = !{!38, !35, i64 597}
!48 = !{!38, !40, i64 284}
!49 = !{!38, !40, i64 496}
!50 = !{!38, !40, i64 564}
!51 = !{!38, !35, i64 595}
!52 = !{!38, !40, i64 1032}
!53 = !{!38, !35, i64 592}
!54 = !{!38, !35, i64 591}
!55 = !{!38, !35, i64 588}
!56 = !{!38, !35, i64 1036}
!57 = !{!38, !35, i64 1096}
!58 = !{!38, !40, i64 464}
!59 = !{!38, !40, i64 468}
!60 = !{!38, !35, i64 594}
!61 = !{!38, !42, i64 480}
!62 = !{!38, !40, i64 476}
!63 = !{!38, !35, i64 593}
!64 = !{!38, !35, i64 596}
!65 = !{!38, !39, i64 360}
!66 = !{!38, !39, i64 368}
!67 = !{!38, !39, i64 376}
!68 = !{!38, !35, i64 590}
!69 = !{!38, !40, i64 288}
!70 = !{!38, !40, i64 440}
!71 = !{!38, !40, i64 424}
!72 = !{!38, !40, i64 436}
!73 = !{!38, !40, i64 432}
!74 = !{!38, !40, i64 428}
!75 = !{!38, !40, i64 460}
!76 = !{!38, !40, i64 444}
!77 = !{!38, !40, i64 456}
!78 = !{!38, !40, i64 452}
!79 = !{!38, !40, i64 448}
!80 = !{!38, !40, i64 420}
!81 = !{!38, !43, i64 576}
!82 = !{!83, !35, i64 0}
!83 = !{!"png_color_struct", !35, i64 0, !35, i64 1, !35, i64 2}
!84 = !{!83, !35, i64 1}
!85 = !{!83, !35, i64 2}
!86 = distinct !{!86, !87, !88}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !87, !88}
!90 = !{!38, !39, i64 408}
!91 = !{!38, !39, i64 320}
!92 = !{!38, !40, i64 416}
!93 = !{!38, !40, i64 328}
!94 = !{i64 0, i64 80}
!95 = !{!39, !39, i64 0}
!96 = distinct !{!96, !87, !88}
!97 = distinct !{!97, !87, !88}
!98 = distinct !{!98, !87, !88}
!99 = distinct !{!99, !87, !88}
!100 = !{!101, !39, i64 0}
!101 = !{!"", !39, i64 0, !42, i64 8, !40, i64 16, !40, i64 20, !39, i64 24}
!102 = !{!101, !42, i64 8}
!103 = !{!38, !40, i64 304}
!104 = !{!38, !39, i64 296}
!105 = !{!38, !39, i64 344}
!106 = !{!101, !40, i64 16}
!107 = !{!101, !40, i64 20}
!108 = !{!101, !39, i64 24}
!109 = distinct !{!109, !87, !88}
!110 = distinct !{!110, !87, !88}
!111 = distinct !{!111, !87, !88}
!112 = distinct !{!112, !87, !88}
!113 = !{!114, !35, i64 8}
!114 = !{!"png_sPLT_struct", !39, i64 0, !35, i64 8, !39, i64 16, !40, i64 24}
!115 = !{!114, !40, i64 24}
!116 = !{!114, !39, i64 0}
!117 = !{!114, !39, i64 16}
!118 = !{!119, !43, i64 0}
!119 = !{!"png_sPLT_entry_struct", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8}
!120 = !{!119, !43, i64 2}
!121 = !{!119, !43, i64 4}
!122 = !{!119, !43, i64 6}
!123 = !{!119, !43, i64 8}
!124 = distinct !{!124, !87, !88}
!125 = !{!45, !35, i64 0}
!126 = !{!45, !35, i64 1}
!127 = !{!45, !35, i64 2}
!128 = !{!45, !35, i64 3}
!129 = !{!45, !35, i64 4}
!130 = !{!44, !43, i64 8}
!131 = !{!44, !43, i64 2}
!132 = !{!44, !43, i64 4}
!133 = !{!44, !43, i64 6}
!134 = !{!44, !35, i64 0}
!135 = !{!43, !43, i64 0}
!136 = distinct !{!136, !87, !88}
!137 = !{!42, !42, i64 0}
!138 = distinct !{!138, !87, !88}
!139 = distinct !{!139, !87, !88}
!140 = !{!141, !35, i64 2}
!141 = !{!"png_time_struct", !43, i64 0, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6}
!142 = !{!141, !35, i64 3}
!143 = !{!141, !35, i64 4}
!144 = !{!141, !35, i64 6}
!145 = !{!141, !43, i64 0}
!146 = !{!141, !35, i64 5}
!147 = !{!38, !35, i64 599}
!148 = !{!38, !35, i64 598}
!149 = !{!38, !39, i64 512}
!150 = !{!38, !39, i64 520}
!151 = !{!38, !39, i64 504}
!152 = !{!38, !39, i64 528}
!153 = !{!38, !39, i64 536}
!154 = !{!38, !39, i64 544}
!155 = !{!38, !40, i64 292}
!156 = !{!38, !40, i64 472}
!157 = !{!38, !40, i64 492}
!158 = !{!38, !35, i64 589}
!159 = distinct !{!159, !87, !88}
!160 = distinct !{!160, !87, !88}
!161 = !{!38, !40, i64 384}
!162 = !{!163, !35, i64 19}
!163 = !{!"png_row_info_struct", !40, i64 0, !42, i64 8, !35, i64 16, !35, i64 17, !35, i64 18, !35, i64 19}
!164 = !{!163, !40, i64 0}
!165 = distinct !{!165, !87, !88}
!166 = distinct !{!166, !87, !88}
!167 = distinct !{!167, !87, !88}
!168 = distinct !{!168, !87, !88}
!169 = !{!163, !42, i64 8}
!170 = !{!38, !35, i64 905}
!171 = distinct !{!171, !87, !88}
!172 = !{!38, !35, i64 904}
!173 = !{!38, !39, i64 912}
!174 = !{!38, !39, i64 920}
!175 = distinct !{!175, !87, !88}
!176 = !{!38, !39, i64 936}
!177 = distinct !{!177, !87, !88}
!178 = distinct !{!178, !87, !88}
!179 = !{!38, !39, i64 928}
!180 = distinct !{!180, !87, !88}
!181 = !{!38, !39, i64 944}
!182 = distinct !{!182, !87, !88}
!183 = distinct !{!183, !87, !88}
!184 = distinct !{!184, !87, !88}
!185 = distinct !{!185, !87, !88}
!186 = distinct !{!186, !87, !88}
!187 = distinct !{!187, !87, !88}
!188 = distinct !{!188, !87, !88}
!189 = distinct !{!189, !87, !88}
!190 = distinct !{!190, !87, !88}
!191 = distinct !{!191, !87, !88}
!192 = distinct !{!192, !87, !88}
!193 = distinct !{!193, !87, !88}
!194 = distinct !{!194, !87, !88}
!195 = distinct !{!195, !87, !88}
!196 = distinct !{!196, !87, !88}
!197 = distinct !{!197, !87, !88}
!198 = distinct !{!198, !87, !88}
!199 = distinct !{!199, !87, !88}
!200 = distinct !{!200, !87, !88}
!201 = distinct !{!201, !87, !88}
!202 = !{!38, !40, i64 652}
!203 = !{!38, !40, i64 648}
!204 = distinct !{!204, !87, !88}
