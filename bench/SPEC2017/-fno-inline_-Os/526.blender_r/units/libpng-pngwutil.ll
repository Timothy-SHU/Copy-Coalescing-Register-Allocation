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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_save_uint_16(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @png_write_data(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %8) #12
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

; Function Attrs: optsize
declare void @png_write_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_chunk_start(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load i8, ptr %1, align 1, !tbaa !34
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %1, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr inbounds i8, ptr %1, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef %20, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !49 {
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 34, ptr %7, align 8, !tbaa !37
  call void @png_save_uint_32(ptr noundef nonnull %4, i32 noundef %2) #13
  %8 = getelementptr inbounds i8, ptr %4, i64 4
  call void @png_save_uint_32(ptr noundef nonnull %8, i32 noundef %1) #13
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 8) #12
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 37
  store i32 %1, ptr %9, align 8, !tbaa !50
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef 4) #12
  store i32 66, ptr %7, align 8, !tbaa !37
  br label %10

10:                                               ; preds = %3, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_chunk_data(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne i64 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #12
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %10

10:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: optsize
declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_chunk_end(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 142
  store i32 130, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 46
  %7 = load i32, ptr %6, align 4, !tbaa !51
  call void @png_save_uint_32(ptr noundef nonnull %2, i32 noundef %7) #13
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 4) #12
  br label %8

8:                                                ; preds = %1, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef %21, ptr noundef %2, i64 noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 !PGOFuncName !52 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i64 %3, 4294967295
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #14
  unreachable

9:                                                ; preds = %6
  %10 = trunc i64 %3 to i32
  tail call fastcc void @png_write_chunk_header(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %10) #13
  tail call void @png_write_chunk_data(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3) #13
  tail call void @png_write_chunk_end(ptr noundef nonnull %0) #13
  br label %11

11:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str) #14
  unreachable

12:                                               ; preds = %8
  switch i32 %3, label %13 [
    i32 16, label %28
    i32 8, label %28
  ]

13:                                               ; preds = %12
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.1) #14
  unreachable

14:                                               ; preds = %8
  %15 = add i32 %3, -1
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %23, label %17

17:                                               ; preds = %23, %14
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  unreachable

18:                                               ; preds = %8
  switch i32 %3, label %19 [
    i32 16, label %28
    i32 8, label %28
  ]

19:                                               ; preds = %18
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.3) #14
  unreachable

20:                                               ; preds = %8
  switch i32 %3, label %21 [
    i32 16, label %28
    i32 8, label %28
  ]

21:                                               ; preds = %20
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.4) #14
  unreachable

22:                                               ; preds = %8
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #14
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
  store i8 %29, ptr %30, align 1, !tbaa !53
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %35 = load i32, ptr %34, align 8, !tbaa !54
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
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #12
  br label %53

53:                                               ; preds = %43, %52, %50
  %54 = phi i32 [ 0, %52 ], [ %6, %43 ], [ 0, %50 ]
  %55 = icmp ugt i32 %7, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #12
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ 1, %56 ], [ %7, %53 ]
  %59 = trunc i32 %3 to i8
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  store i8 %59, ptr %60, align 8, !tbaa !55
  %61 = trunc i32 %4 to i8
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  store i8 %61, ptr %62, align 1, !tbaa !56
  %63 = trunc i32 %58 to i8
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  store i8 %63, ptr %64, align 4, !tbaa !57
  %65 = trunc i32 %54 to i8
  %66 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  store i8 %65, ptr %66, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 134
  store i8 0, ptr %67, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  store i32 %1, ptr %68, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  store i32 %2, ptr %69, align 4, !tbaa !61
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %71 = load i8, ptr %70, align 1, !tbaa !53
  %72 = mul i8 %71, %59
  %73 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  store i8 %72, ptr %73, align 2, !tbaa !62
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
  store i64 %86, ptr %87, align 8, !tbaa !63
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  store i32 %1, ptr %88, align 4, !tbaa !64
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  store i8 %59, ptr %89, align 1, !tbaa !65
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  store i8 %71, ptr %90, align 4, !tbaa !66
  call void @png_save_uint_32(ptr noundef nonnull %9, i32 noundef %1) #13
  %91 = getelementptr inbounds i8, ptr %9, i64 4
  call void @png_save_uint_32(ptr noundef nonnull %91, i32 noundef %2) #13
  %92 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 8
  store i8 %59, ptr %92, align 1, !tbaa !34
  %93 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 9
  store i8 %61, ptr %93, align 1, !tbaa !34
  %94 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 10
  store i8 0, ptr %94, align 1, !tbaa !34
  %95 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 11
  store i8 %65, ptr %95, align 1, !tbaa !34
  %96 = getelementptr inbounds [13 x i8], ptr %9, i64 0, i64 12
  store i8 %63, ptr %96, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229472850, ptr noundef nonnull %9, i64 noundef 13) #13
  %97 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 8
  store ptr @png_zalloc, ptr %97, align 8, !tbaa !67
  %98 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 9
  store ptr @png_zfree, ptr %98, align 8, !tbaa !68
  %99 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 10
  store ptr %0, ptr %99, align 8, !tbaa !69
  %100 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %101 = load i8, ptr %100, align 2, !tbaa !70
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %85
  %104 = load i8, ptr %62, align 1, !tbaa !56
  %105 = icmp eq i8 %104, 3
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i8, ptr %60, align 8, !tbaa !55
  %108 = icmp ult i8 %107, 8
  br i1 %108, label %109, label %116

109:                                              ; preds = %106, %103
  store i8 8, ptr %100, align 2, !tbaa !70
  br label %110

110:                                              ; preds = %109, %85
  %111 = phi i8 [ 8, %109 ], [ %101, %85 ]
  %112 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %113 = load i32, ptr %112, align 8, !tbaa !71
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %128

116:                                              ; preds = %106
  store i8 -8, ptr %100, align 2, !tbaa !70
  %117 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %118 = load i32, ptr %117, align 8, !tbaa !71
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %128

121:                                              ; preds = %110
  %122 = icmp ne i8 %111, 8
  %123 = zext i1 %122 to i32
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ 1, %116 ], [ %123, %121 ]
  %126 = phi i32 [ %118, %116 ], [ %113, %121 ]
  %127 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 24
  store i32 %125, ptr %127, align 8, !tbaa !72
  br label %128

128:                                              ; preds = %124, %116, %110
  %129 = phi i32 [ %118, %116 ], [ %113, %110 ], [ %126, %124 ]
  %130 = and i32 %129, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  store i32 -1, ptr %133, align 8, !tbaa !73
  br label %134

134:                                              ; preds = %132, %128
  %135 = and i32 %129, 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  store i32 8, ptr %138, align 4, !tbaa !74
  br label %139

139:                                              ; preds = %137, %134
  %140 = and i32 %129, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  store i32 15, ptr %143, align 8, !tbaa !75
  br label %144

144:                                              ; preds = %142, %139
  %145 = and i32 %129, 16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  store i32 8, ptr %148, align 4, !tbaa !76
  br label %149

149:                                              ; preds = %147, %144
  %150 = and i32 %129, 16777216
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 29
  store i32 0, ptr %153, align 4, !tbaa !77
  br label %154

154:                                              ; preds = %152, %149
  %155 = and i32 %129, 33554432
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  %159 = load i32, ptr %158, align 8, !tbaa !73
  %160 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 25
  store i32 %159, ptr %160, align 4, !tbaa !78
  br label %161

161:                                              ; preds = %157, %154
  %162 = and i32 %129, 67108864
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  %166 = load i32, ptr %165, align 4, !tbaa !74
  %167 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 28
  store i32 %166, ptr %167, align 8, !tbaa !79
  br label %168

168:                                              ; preds = %164, %161
  %169 = and i32 %129, 134217728
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  %173 = load i32, ptr %172, align 8, !tbaa !75
  %174 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 27
  store i32 %173, ptr %174, align 4, !tbaa !80
  br label %175

175:                                              ; preds = %171, %168
  %176 = and i32 %129, 268435456
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  %180 = load i32, ptr %179, align 4, !tbaa !76
  %181 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 26
  store i32 %180, ptr %181, align 8, !tbaa !81
  br label %182

182:                                              ; preds = %178, %175
  %183 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  store i32 0, ptr %183, align 4, !tbaa !82
  %184 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  store i32 1, ptr %184, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %9) #11
  ret void
}

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noalias ptr @png_zalloc(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: optsize
declare void @png_zfree(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_PLTE(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = and i32 %6, 1
  %8 = or i32 %7, %2
  %9 = icmp eq i32 %8, 0
  %10 = icmp ugt i32 %2, 256
  %11 = or i1 %10, %9
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %13 = load i8, ptr %12, align 1, !tbaa !56
  br i1 %11, label %14, label %18

14:                                               ; preds = %3
  %15 = icmp eq i8 %13, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #14
  unreachable

17:                                               ; preds = %14
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #12
  br label %45

18:                                               ; preds = %3
  %19 = and i8 %13, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #12
  br label %45

22:                                               ; preds = %18
  %23 = trunc i32 %2 to i16
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  store i16 %23, ptr %24, align 8, !tbaa !83
  %25 = mul nuw nsw i32 %2, 3
  tail call fastcc void @png_write_chunk_header(ptr noundef nonnull %0, i32 noundef 1347179589, i32 noundef %25) #13
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %29 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  br label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %1, %27 ], [ %39, %30 ]
  %32 = phi i32 [ 0, %27 ], [ %38, %30 ]
  %33 = load i8, ptr %31, align 1, !tbaa !84
  store i8 %33, ptr %4, align 1, !tbaa !34
  %34 = getelementptr inbounds %struct.png_color_struct, ptr %31, i64 0, i32 1
  %35 = load i8, ptr %34, align 1, !tbaa !86
  store i8 %35, ptr %28, align 1, !tbaa !34
  %36 = getelementptr inbounds %struct.png_color_struct, ptr %31, i64 0, i32 2
  %37 = load i8, ptr %36, align 1, !tbaa !87
  store i8 %37, ptr %29, align 1, !tbaa !34
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 3) #13
  %38 = add nuw i32 %32, 1
  %39 = getelementptr inbounds %struct.png_color_struct, ptr %31, i64 1
  %40 = icmp eq i32 %38, %2
  br i1 %40, label %41, label %30, !llvm.loop !88

41:                                               ; preds = %30, %22
  call void @png_write_chunk_end(ptr noundef %0) #13
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %43 = load i32, ptr %42, align 4, !tbaa !48
  %44 = or i32 %43, 2
  store i32 %44, ptr %42, align 4, !tbaa !48
  br label %45

45:                                               ; preds = %41, %21, %17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_IDAT(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %85

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 134
  %10 = load i8, ptr %9, align 8, !tbaa !59
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
  %24 = load i32, ptr %23, align 4, !tbaa !61
  %25 = icmp ult i32 %24, 16384
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = icmp ult i32 %28, 16384
  br i1 %29, label %30, label %85

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 60
  %32 = load i8, ptr %31, align 1, !tbaa !53
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %28, %33
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %36 = load i8, ptr %35, align 8, !tbaa !55
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %34, %37
  %39 = add nuw nsw i32 %38, 15
  %40 = lshr i32 %39, 3
  %41 = mul i32 %40, %24
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %43 = load i8, ptr %42, align 4, !tbaa !57
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
  br i1 %66, label %59, label %67, !llvm.loop !90

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
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #14
  unreachable

85:                                               ; preds = %26, %22, %20, %72, %67, %8, %3
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1229209940, ptr noundef %1, i64 noundef %2) #13
  %86 = load i32, ptr %4, align 4, !tbaa !48
  %87 = or i32 %86, 4
  store i32 %87, ptr %4, align 4, !tbaa !48
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !91
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %89, ptr %90, align 8, !tbaa !92
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %92 = load i32, ptr %91, align 8, !tbaa !93
  %93 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %92, ptr %93, align 8, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_IEND(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1229278788, ptr noundef null, i64 noundef 0) #13
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !48
  %4 = or i32 %3, 16
  store i32 %4, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_gAMA_fixed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @png_save_uint_32(ptr noundef nonnull %3, i32 noundef %1) #13
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1732332865, ptr noundef nonnull %3, i64 noundef 4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_sRGB(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  %4 = icmp sgt i32 %1, 3
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %6

6:                                                ; preds = %5, %2
  %7 = trunc i32 %1 to i8
  store i8 %7, ptr %3, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1934772034, ptr noundef nonnull %3, i64 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_iCCP(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.compression_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %8 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #13, !range !95
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %5
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.13) #12
  br label %13

13:                                               ; preds = %12, %10
  %14 = icmp eq ptr %3, null
  %15 = select i1 %14, i32 0, i32 %4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i8, ptr %3, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = getelementptr inbounds i8, ptr %3, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = or disjoint i32 %24, %20
  %26 = getelementptr inbounds i8, ptr %3, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %25, %29
  %31 = getelementptr inbounds i8, ptr %3, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %30, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.14) #12
  %37 = load ptr, ptr %6, align 8, !tbaa !96
  tail call void @png_free(ptr noundef %0, ptr noundef %37) #12
  br label %65

38:                                               ; preds = %13, %17
  %39 = phi i32 [ %34, %17 ], [ 0, %13 ]
  %40 = icmp slt i32 %15, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  %42 = load ptr, ptr %6, align 8, !tbaa !96
  tail call void @png_free(ptr noundef %0, ptr noundef %42) #12
  br label %65

43:                                               ; preds = %38
  %44 = icmp ugt i32 %15, %39
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #12
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %39, %45 ], [ %15, %43 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = zext nneg i32 %47 to i64
  %51 = call fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef %3, i64 noundef %50, i32 noundef 0, ptr noundef nonnull %7) #13
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %51, %49 ], [ 0, %46 ]
  %54 = trunc i64 %8 to i32
  %55 = add nuw nsw i32 %54, 2
  %56 = add i32 %55, %53
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef 1766015824, i32 noundef %56) #13
  %57 = load ptr, ptr %6, align 8, !tbaa !96
  %58 = getelementptr i8, ptr %57, i64 %8
  %59 = getelementptr i8, ptr %58, i64 1
  store i8 0, ptr %59, align 1, !tbaa !34
  %60 = add nuw nsw i64 %8, 2
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %57, i64 noundef %60) #13
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = sext i32 %53 to i64
  call fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %63) #13
  br label %64

64:                                               ; preds = %62, %52
  tail call void @png_write_chunk_end(ptr noundef %0) #13
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %57) #12
  br label %65

65:                                               ; preds = %5, %64, %41, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @png_check_keyword(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = alloca [8 x [32 x i8]], align 16
  store ptr null, ptr %2, align 8, !tbaa !96
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.26) #12
  br label %119

10:                                               ; preds = %6
  %11 = add i64 %7, 2
  %12 = and i64 %11, 4294967295
  %13 = tail call noalias ptr @png_malloc_warn(ptr noundef %0, i64 noundef %12) #12
  store ptr %13, ptr %2, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i8, ptr %1, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %37, label %19

18:                                               ; preds = %10
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.27) #12
  br label %119

19:                                               ; preds = %15, %29
  %20 = phi i8 [ %33, %29 ], [ %16, %15 ]
  %21 = phi ptr [ %32, %29 ], [ %13, %15 ]
  %22 = phi ptr [ %31, %29 ], [ %1, %15 ]
  %23 = icmp ult i8 %20, 32
  %24 = add i8 %20, -127
  %25 = icmp ult i8 %24, 34
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #11
  %28 = zext i8 %20 to i64
  call void @png_warning_parameter_unsigned(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 4, i64 noundef %28) #12
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.28) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #11
  br label %29

29:                                               ; preds = %19, %27
  %30 = phi i8 [ 32, %27 ], [ %20, %19 ]
  store i8 %30, ptr %21, align 1
  %31 = getelementptr inbounds i8, ptr %22, i64 1
  %32 = getelementptr inbounds i8, ptr %21, i64 1
  %33 = load i8, ptr %31, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %19, !llvm.loop !97

35:                                               ; preds = %29
  %36 = load ptr, ptr %2, align 8, !tbaa !96
  br label %37

37:                                               ; preds = %35, %15
  %38 = phi ptr [ %13, %15 ], [ %36, %35 ]
  %39 = phi ptr [ %13, %15 ], [ %32, %35 ]
  store i8 0, ptr %39, align 1, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %38, i64 %7
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = icmp eq i8 %42, 32
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.29) #12
  %45 = load i8, ptr %41, align 1, !tbaa !34
  %46 = icmp eq i8 %45, 32
  br i1 %46, label %47, label %54

47:                                               ; preds = %44, %47
  %48 = phi ptr [ %50, %47 ], [ %41, %44 ]
  %49 = phi i64 [ %51, %47 ], [ %7, %44 ]
  %50 = getelementptr inbounds i8, ptr %48, i64 -1
  store i8 0, ptr %48, align 1, !tbaa !34
  %51 = add i64 %49, -1
  %52 = load i8, ptr %50, align 1, !tbaa !34
  %53 = icmp eq i8 %52, 32
  br i1 %53, label %47, label %54, !llvm.loop !98

54:                                               ; preds = %47, %44, %37
  %55 = phi i64 [ %7, %37 ], [ %7, %44 ], [ %51, %47 ]
  %56 = load ptr, ptr %2, align 8, !tbaa !96
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = icmp eq i8 %57, 32
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.30) #12
  %60 = load i8, ptr %56, align 1, !tbaa !34
  %61 = icmp eq i8 %60, 32
  br i1 %61, label %62, label %69

62:                                               ; preds = %59, %62
  %63 = phi ptr [ %65, %62 ], [ %56, %59 ]
  %64 = phi i64 [ %66, %62 ], [ %55, %59 ]
  %65 = getelementptr inbounds i8, ptr %63, i64 1
  %66 = add i64 %64, -1
  %67 = load i8, ptr %65, align 1, !tbaa !34
  %68 = icmp eq i8 %67, 32
  br i1 %68, label %62, label %69, !llvm.loop !99

69:                                               ; preds = %62, %59, %54
  %70 = phi i8 [ %57, %54 ], [ %60, %59 ], [ %67, %62 ]
  %71 = phi i64 [ %55, %54 ], [ %55, %59 ], [ %66, %62 ]
  %72 = phi ptr [ %56, %54 ], [ %56, %59 ], [ %65, %62 ]
  %73 = load ptr, ptr %2, align 8, !tbaa !96
  %74 = icmp eq i8 %70, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i8 0, ptr %73, align 1, !tbaa !34
  br label %109

76:                                               ; preds = %69, %100
  %77 = phi i8 [ %103, %100 ], [ %70, %69 ]
  %78 = phi i1 [ false, %100 ], [ true, %69 ]
  %79 = phi i32 [ %85, %100 ], [ 0, %69 ]
  %80 = phi ptr [ %86, %100 ], [ %73, %69 ]
  %81 = phi ptr [ %102, %100 ], [ %72, %69 ]
  %82 = phi i64 [ %101, %100 ], [ %71, %69 ]
  br label %83

83:                                               ; preds = %76, %93
  %84 = phi i8 [ %98, %93 ], [ %77, %76 ]
  %85 = phi i32 [ %94, %93 ], [ %79, %76 ]
  %86 = phi ptr [ %96, %93 ], [ %80, %76 ]
  %87 = phi ptr [ %97, %93 ], [ %81, %76 ]
  %88 = icmp eq i8 %84, 32
  %89 = icmp eq i32 %85, 0
  %90 = select i1 %88, i1 %89, i1 false
  %91 = xor i1 %88, true
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = zext i1 %90 to i32
  %95 = select i1 %90, i8 32, i8 %84
  %96 = getelementptr inbounds i8, ptr %86, i64 1
  store i8 %95, ptr %86, align 1, !tbaa !34
  %97 = getelementptr inbounds i8, ptr %87, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !34
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %106, label %83, !llvm.loop !100

100:                                              ; preds = %83
  %101 = add i64 %82, -1
  %102 = getelementptr inbounds i8, ptr %87, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !34
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %76, !llvm.loop !100

105:                                              ; preds = %100
  store i8 0, ptr %86, align 1, !tbaa !34
  br label %107

106:                                              ; preds = %93
  store i8 0, ptr %96, align 1, !tbaa !34
  br i1 %78, label %109, label %107

107:                                              ; preds = %105, %106
  %108 = phi i64 [ %101, %105 ], [ %82, %106 ]
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.31) #12
  br label %109

109:                                              ; preds = %75, %107, %106
  %110 = phi i64 [ %71, %75 ], [ %108, %107 ], [ %82, %106 ]
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load ptr, ptr %2, align 8, !tbaa !96
  call void @png_free(ptr noundef %0, ptr noundef %113) #12
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.32) #12
  br label %119

114:                                              ; preds = %109
  %115 = icmp ugt i64 %110, 79
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.33) #12
  %117 = load ptr, ptr %2, align 8, !tbaa !96
  %118 = getelementptr inbounds i8, ptr %117, i64 79
  store i8 0, ptr %118, align 1, !tbaa !34
  br label %119

119:                                              ; preds = %112, %114, %116, %18, %9
  %120 = phi i64 [ 0, %9 ], [ 0, %18 ], [ 79, %116 ], [ %110, %114 ], [ 0, %112 ]
  ret i64 %120
}

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #1 !PGOFuncName !101 {
  %6 = alloca [8 x [32 x i8]], align 16
  %7 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.compression_state, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 %2, ptr %10, align 8, !tbaa !104
  %11 = icmp eq i32 %3, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  store ptr %1, ptr %4, align 8, !tbaa !102
  %13 = trunc i64 %2 to i32
  br label %125

14:                                               ; preds = %5
  %15 = icmp sgt i32 %3, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, i32 noundef %3) #12
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.42) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #11
  br label %17

17:                                               ; preds = %16, %14
  call fastcc void @png_zlib_claim(ptr noundef %0, i32 noundef 2) #13
  %18 = trunc i64 %2 to i32
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 %18, ptr %20, align 8, !tbaa !105
  store ptr %1, ptr %19, align 8, !tbaa !106
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %22, ptr %23, align 8, !tbaa !94
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !92
  br label %27

27:                                               ; preds = %71, %17
  %28 = call i32 @deflate(ptr noundef nonnull %19, i32 noundef 0) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %32) #14
  unreachable

35:                                               ; preds = %30
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #14
  unreachable

36:                                               ; preds = %27
  %37 = load i32, ptr %23, align 8, !tbaa !94
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load i32, ptr %7, align 8, !tbaa !108
  %41 = load i32, ptr %8, align 4, !tbaa !109
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = add nsw i32 %40, 4
  store i32 %44, ptr %8, align 4, !tbaa !109
  %45 = load ptr, ptr %9, align 8, !tbaa !110
  %46 = icmp eq ptr %45, null
  %47 = sext i32 %44 to i64
  %48 = shl nsw i64 %47, 3
  %49 = call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %48) #12
  store ptr %49, ptr %9, align 8, !tbaa !110
  br i1 %46, label %53, label %50

50:                                               ; preds = %43
  %51 = sext i32 %41 to i64
  %52 = shl nsw i64 %51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr nonnull align 8 %45, i64 %52, i1 false)
  call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %45) #12
  br label %53

53:                                               ; preds = %43, %50, %39
  %54 = load i32, ptr %21, align 8, !tbaa !93
  %55 = zext i32 %54 to i64
  %56 = call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %55) #12
  %57 = load ptr, ptr %9, align 8, !tbaa !110
  %58 = load i32, ptr %7, align 8, !tbaa !108
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59
  store ptr %56, ptr %60, align 8, !tbaa !96
  %61 = load ptr, ptr %9, align 8, !tbaa !110
  %62 = getelementptr inbounds ptr, ptr %61, i64 %59
  %63 = load ptr, ptr %62, align 8, !tbaa !96
  %64 = load ptr, ptr %24, align 8, !tbaa !91
  %65 = load i32, ptr %21, align 8, !tbaa !93
  %66 = zext i32 %65 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %64, i64 %66, i1 false)
  %67 = load i32, ptr %7, align 8, !tbaa !108
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %7, align 8, !tbaa !108
  %69 = load i32, ptr %21, align 8, !tbaa !93
  store i32 %69, ptr %23, align 8, !tbaa !94
  %70 = load ptr, ptr %24, align 8, !tbaa !91
  store ptr %70, ptr %26, align 8, !tbaa !92
  br label %71

71:                                               ; preds = %36, %53
  %72 = load i32, ptr %20, align 8, !tbaa !105
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %27, !llvm.loop !111

74:                                               ; preds = %71, %111
  %75 = call i32 @deflate(ptr noundef nonnull %19, i32 noundef 4) #12
  switch i32 %75, label %112 [
    i32 0, label %76
    i32 1, label %118
  ]

76:                                               ; preds = %74
  %77 = load i32, ptr %23, align 8, !tbaa !94
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load i32, ptr %7, align 8, !tbaa !108
  %81 = load i32, ptr %8, align 4, !tbaa !109
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = add nsw i32 %80, 4
  store i32 %84, ptr %8, align 4, !tbaa !109
  %85 = load ptr, ptr %9, align 8, !tbaa !110
  %86 = icmp eq ptr %85, null
  %87 = sext i32 %84 to i64
  %88 = shl nsw i64 %87, 3
  %89 = call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %88) #12
  store ptr %89, ptr %9, align 8, !tbaa !110
  br i1 %86, label %93, label %90

90:                                               ; preds = %83
  %91 = sext i32 %81 to i64
  %92 = shl nsw i64 %91, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %89, ptr nonnull align 8 %85, i64 %92, i1 false)
  call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %85) #12
  br label %93

93:                                               ; preds = %83, %90, %79
  %94 = load i32, ptr %21, align 8, !tbaa !93
  %95 = zext i32 %94 to i64
  %96 = call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %95) #12
  %97 = load ptr, ptr %9, align 8, !tbaa !110
  %98 = load i32, ptr %7, align 8, !tbaa !108
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  store ptr %96, ptr %100, align 8, !tbaa !96
  %101 = load ptr, ptr %9, align 8, !tbaa !110
  %102 = getelementptr inbounds ptr, ptr %101, i64 %99
  %103 = load ptr, ptr %102, align 8, !tbaa !96
  %104 = load ptr, ptr %24, align 8, !tbaa !91
  %105 = load i32, ptr %21, align 8, !tbaa !93
  %106 = zext i32 %105 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %103, ptr align 1 %104, i64 %106, i1 false)
  %107 = load i32, ptr %7, align 8, !tbaa !108
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %7, align 8, !tbaa !108
  %109 = load i32, ptr %21, align 8, !tbaa !93
  store i32 %109, ptr %23, align 8, !tbaa !94
  %110 = load ptr, ptr %24, align 8, !tbaa !91
  store ptr %110, ptr %26, align 8, !tbaa !92
  br label %111

111:                                              ; preds = %93, %76
  br label %74, !llvm.loop !112

112:                                              ; preds = %74
  %113 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !107
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %114) #14
  unreachable

117:                                              ; preds = %112
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #14
  unreachable

118:                                              ; preds = %74
  %119 = load i32, ptr %21, align 8, !tbaa !93
  %120 = load i32, ptr %7, align 8, !tbaa !108
  %121 = mul i32 %120, %119
  %122 = load i32, ptr %23, align 8, !tbaa !94
  %123 = call i32 @llvm.usub.sat.i32(i32 %119, i32 %122)
  %124 = add i32 %123, %121
  br label %125

125:                                              ; preds = %118, %12
  %126 = phi i32 [ %13, %12 ], [ %124, %118 ]
  ret i32 %126
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #1 !PGOFuncName !113 {
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %2) #13
  br label %124

7:                                                ; preds = %3
  %8 = icmp ugt i64 %2, 1
  br i1 %8, label %9, label %84

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !104
  %12 = icmp ult i64 %11, 16384
  br i1 %12, label %13, label %84

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %15 = load i32, ptr %14, align 8, !tbaa !93
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %84

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !108
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  br label %26

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %23, %21 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 15
  %32 = icmp eq i32 %31, 8
  %33 = and i32 %30, 240
  %34 = icmp ult i32 %33, 113
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %26
  %37 = lshr i32 %30, 4
  %38 = shl nuw nsw i32 128, %37
  %39 = zext nneg i32 %38 to i64
  %40 = icmp ule i64 %11, %39
  %41 = icmp ugt i32 %38, 255
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %52

43:                                               ; preds = %36, %43
  %44 = phi i32 [ %47, %43 ], [ %38, %36 ]
  %45 = phi i32 [ %46, %43 ], [ %37, %36 ]
  %46 = add nsw i32 %45, -1
  %47 = lshr i32 %44, 1
  %48 = zext nneg i32 %47 to i64
  %49 = icmp ule i64 %11, %48
  %50 = icmp ugt i32 %44, 511
  %51 = and i1 %50, %49
  br i1 %51, label %43, label %52, !llvm.loop !114

52:                                               ; preds = %43, %36
  %53 = phi i32 [ %37, %36 ], [ %46, %43 ]
  %54 = shl i32 %53, 4
  %55 = or disjoint i32 %54, 8
  br i1 %20, label %66, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !110
  %59 = load ptr, ptr %58, align 8, !tbaa !96
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %55, %61
  br i1 %62, label %84, label %63

63:                                               ; preds = %56
  %64 = trunc i32 %55 to i8
  store i8 %64, ptr %59, align 1, !tbaa !34
  %65 = load ptr, ptr %57, align 8, !tbaa !110
  br label %71

66:                                               ; preds = %52
  %67 = trunc i32 %55 to i8
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !91
  store i8 %67, ptr %69, align 1, !tbaa !34
  br label %71

70:                                               ; preds = %26
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #14
  unreachable

71:                                               ; preds = %63, %66
  %72 = phi ptr [ %65, %63 ], [ %68, %66 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  %74 = getelementptr inbounds i8, ptr %73, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = and i8 %75, -32
  %77 = zext i8 %76 to i32
  %78 = shl i32 %55, 8
  %79 = or disjoint i32 %78, %77
  %80 = urem i32 %79, 31
  %81 = trunc i32 %80 to i8
  %82 = or disjoint i8 %76, %81
  %83 = xor i8 %82, 31
  store i8 %83, ptr %74, align 1, !tbaa !34
  br label %84

84:                                               ; preds = %71, %56, %13, %9, %7
  %85 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !108
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ 0, %88 ], [ %101, %91 ]
  %93 = load ptr, ptr %89, align 8, !tbaa !110
  %94 = getelementptr inbounds ptr, ptr %93, i64 %92
  %95 = load ptr, ptr %94, align 8, !tbaa !96
  %96 = load i32, ptr %90, align 8, !tbaa !93
  %97 = zext i32 %96 to i64
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %95, i64 noundef %97) #13
  %98 = load ptr, ptr %89, align 8, !tbaa !110
  %99 = getelementptr inbounds ptr, ptr %98, i64 %92
  %100 = load ptr, ptr %99, align 8, !tbaa !96
  tail call void @png_free(ptr noundef %0, ptr noundef %100) #12
  %101 = add nuw nsw i64 %92, 1
  %102 = load i32, ptr %85, align 8, !tbaa !108
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %91, label %105, !llvm.loop !115

105:                                              ; preds = %91, %84
  %106 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !109
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.compression_state, ptr %1, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !110
  tail call void @png_free(ptr noundef %0, ptr noundef %111) #12
  br label %112

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !94
  %115 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %116 = load i32, ptr %115, align 8, !tbaa !93
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %120 = load ptr, ptr %119, align 8, !tbaa !91
  %121 = sub i32 %116, %114
  %122 = zext i32 %121 to i64
  tail call void @png_write_chunk_data(ptr noundef nonnull %0, ptr noundef %120, i64 noundef %122) #13
  br label %123

123:                                              ; preds = %118, %112
  tail call fastcc void @png_zlib_release(ptr noundef nonnull %0) #13
  br label %124

124:                                              ; preds = %123, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_sPLT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_sPLT_struct, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !116
  %7 = icmp eq i8 %6, 8
  %8 = select i1 %7, i64 6, i64 10
  %9 = getelementptr inbounds %struct.png_sPLT_struct, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !118
  %11 = load ptr, ptr %1, align 8, !tbaa !119
  %12 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %3) #13, !range !95
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %2
  %15 = zext i32 %10 to i64
  %16 = mul nuw nsw i64 %8, %15
  %17 = add nuw nsw i64 %12, 2
  %18 = add nuw nsw i64 %17, %16
  %19 = trunc i64 %18 to i32
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef 1934642260, i32 noundef %19) #13
  %20 = load ptr, ptr %3, align 8, !tbaa !96
  %21 = add nuw nsw i64 %12, 1
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %20, i64 noundef %21) #13
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 1) #13
  %22 = getelementptr inbounds %struct.png_sPLT_struct, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %9, align 8, !tbaa !118
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %14
  %26 = load ptr, ptr %22, align 8, !tbaa !120
  %27 = getelementptr inbounds i8, ptr %4, i64 2
  %28 = getelementptr inbounds i8, ptr %4, i64 4
  %29 = getelementptr inbounds i8, ptr %4, i64 6
  %30 = getelementptr inbounds i8, ptr %4, i64 8
  %31 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 1
  %32 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 3
  br label %33

33:                                               ; preds = %25, %58
  %34 = phi ptr [ %26, %25 ], [ %62, %58 ]
  %35 = load i8, ptr %5, align 8, !tbaa !116
  %36 = icmp eq i8 %35, 8
  %37 = load i16, ptr %34, align 2, !tbaa !121
  %38 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %34, i64 0, i32 1
  %39 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %34, i64 0, i32 2
  %40 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %34, i64 0, i32 3
  %41 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %34, i64 0, i32 4
  br i1 %36, label %42, label %50

42:                                               ; preds = %33
  %43 = trunc i16 %37 to i8
  store i8 %43, ptr %4, align 1, !tbaa !34
  %44 = load i16, ptr %38, align 2, !tbaa !123
  %45 = trunc i16 %44 to i8
  store i8 %45, ptr %31, align 1, !tbaa !34
  %46 = load i16, ptr %39, align 2, !tbaa !124
  %47 = trunc i16 %46 to i8
  store i8 %47, ptr %27, align 1, !tbaa !34
  %48 = load i16, ptr %40, align 2, !tbaa !125
  %49 = trunc i16 %48 to i8
  store i8 %49, ptr %32, align 1, !tbaa !34
  br label %58

50:                                               ; preds = %33
  %51 = zext i16 %37 to i32
  call void @png_save_uint_16(ptr noundef nonnull %4, i32 noundef %51) #13
  %52 = load i16, ptr %38, align 2, !tbaa !123
  %53 = zext i16 %52 to i32
  call void @png_save_uint_16(ptr noundef nonnull %27, i32 noundef %53) #13
  %54 = load i16, ptr %39, align 2, !tbaa !124
  %55 = zext i16 %54 to i32
  call void @png_save_uint_16(ptr noundef nonnull %28, i32 noundef %55) #13
  %56 = load i16, ptr %40, align 2, !tbaa !125
  %57 = zext i16 %56 to i32
  call void @png_save_uint_16(ptr noundef nonnull %29, i32 noundef %57) #13
  br label %58

58:                                               ; preds = %50, %42
  %59 = phi ptr [ %30, %50 ], [ %28, %42 ]
  %60 = load i16, ptr %41, align 2, !tbaa !126
  %61 = zext i16 %60 to i32
  call void @png_save_uint_16(ptr noundef nonnull %59, i32 noundef %61) #13
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %4, i64 noundef %8) #13
  %62 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %34, i64 1
  %63 = load ptr, ptr %22, align 8, !tbaa !120
  %64 = load i32, ptr %9, align 8, !tbaa !118
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.png_sPLT_entry_struct, ptr %63, i64 %65
  %67 = icmp ult ptr %62, %66
  br i1 %67, label %33, label %68, !llvm.loop !127

68:                                               ; preds = %58, %14
  call void @png_write_chunk_end(ptr noundef %0) #13
  call void @png_free(ptr noundef %0, ptr noundef %20) #12
  br label %69

69:                                               ; preds = %2, %68
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load i8, ptr %10, align 1, !tbaa !65
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ 8, %7 ]
  %15 = load i8, ptr %1, align 1, !tbaa !128
  %16 = icmp eq i8 %15, 0
  %17 = zext i8 %15 to i32
  %18 = icmp ult i32 %14, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.png_color_8_struct, ptr %1, i64 0, i32 1
  %22 = load i8, ptr %21, align 1, !tbaa !129
  %23 = icmp eq i8 %22, 0
  %24 = zext i8 %22 to i32
  %25 = icmp ult i32 %14, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.png_color_8_struct, ptr %1, i64 0, i32 2
  %29 = load i8, ptr %28, align 1, !tbaa !130
  %30 = icmp eq i8 %29, 0
  %31 = zext i8 %29 to i32
  %32 = icmp ult i32 %14, %31
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20, %13
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #12
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
  %40 = load i8, ptr %39, align 1, !tbaa !131
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %44 = load i8, ptr %43, align 1, !tbaa !65
  %45 = icmp ugt i8 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #12
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
  %54 = load i8, ptr %53, align 1, !tbaa !132
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %58 = load i8, ptr %57, align 1, !tbaa !65
  %59 = icmp ugt i8 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  br label %66

61:                                               ; preds = %56
  %62 = add nuw nsw i64 %49, 1
  %63 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 %49
  store i8 %54, ptr %63, align 1, !tbaa !34
  br label %64

64:                                               ; preds = %61, %48
  %65 = phi i64 [ %62, %61 ], [ %49, %48 ]
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1933723988, ptr noundef nonnull %4, i64 noundef %65) #13
  br label %66

66:                                               ; preds = %34, %64, %60, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_cHRM_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %11 = tail call i32 @png_check_cHRM_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  call void @png_save_uint_32(ptr noundef nonnull %10, i32 noundef %1) #13
  %14 = getelementptr inbounds i8, ptr %10, i64 4
  call void @png_save_uint_32(ptr noundef nonnull %14, i32 noundef %2) #13
  %15 = getelementptr inbounds i8, ptr %10, i64 8
  call void @png_save_uint_32(ptr noundef nonnull %15, i32 noundef %3) #13
  %16 = getelementptr inbounds i8, ptr %10, i64 12
  call void @png_save_uint_32(ptr noundef nonnull %16, i32 noundef %4) #13
  %17 = getelementptr inbounds i8, ptr %10, i64 16
  call void @png_save_uint_32(ptr noundef nonnull %17, i32 noundef %5) #13
  %18 = getelementptr inbounds i8, ptr %10, i64 20
  call void @png_save_uint_32(ptr noundef nonnull %18, i32 noundef %6) #13
  %19 = getelementptr inbounds i8, ptr %10, i64 24
  call void @png_save_uint_32(ptr noundef nonnull %19, i32 noundef %7) #13
  %20 = getelementptr inbounds i8, ptr %10, i64 28
  call void @png_save_uint_32(ptr noundef nonnull %20, i32 noundef %8) #13
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1665684045, ptr noundef nonnull %10, i64 noundef 32) #13
  br label %21

21:                                               ; preds = %13, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  ret void
}

; Function Attrs: optsize
declare i32 @png_check_cHRM_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_tRNS(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  switch i32 %4, label %52 [
    i32 3, label %7
    i32 0, label %17
    i32 2, label %28
  ]

7:                                                ; preds = %5
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %11 = load i16, ptr %10, align 8, !tbaa !83
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %7
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.18) #12
  br label %53

15:                                               ; preds = %9
  %16 = zext nneg i32 %3 to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef %1, i64 noundef %16) #13
  br label %53

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !133
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %22 = load i8, ptr %21, align 8, !tbaa !55
  %23 = zext nneg i8 %22 to i32
  %24 = shl nuw i32 1, %23
  %25 = icmp sgt i32 %24, %20
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #12
  br label %53

27:                                               ; preds = %17
  call void @png_save_uint_16(ptr noundef nonnull %6, i32 noundef %20) #13
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef nonnull %6, i64 noundef 2) #13
  br label %53

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !134
  %31 = zext i16 %30 to i32
  call void @png_save_uint_16(ptr noundef nonnull %6, i32 noundef %31) #13
  %32 = getelementptr inbounds i8, ptr %6, i64 2
  %33 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !135
  %35 = zext i16 %34 to i32
  call void @png_save_uint_16(ptr noundef nonnull %32, i32 noundef %35) #13
  %36 = getelementptr inbounds i8, ptr %6, i64 4
  %37 = getelementptr inbounds %struct.png_color_16_struct, ptr %2, i64 0, i32 3
  %38 = load i16, ptr %37, align 2, !tbaa !136
  %39 = zext i16 %38 to i32
  call void @png_save_uint_16(ptr noundef nonnull %36, i32 noundef %39) #13
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %41 = load i8, ptr %40, align 8, !tbaa !55
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %43, label %51

43:                                               ; preds = %28
  %44 = load i8, ptr %6, align 1, !tbaa !34
  %45 = load i8, ptr %32, align 1, !tbaa !34
  %46 = or i8 %45, %44
  %47 = load i8, ptr %36, align 1, !tbaa !34
  %48 = or i8 %46, %47
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #12
  br label %53

51:                                               ; preds = %43, %28
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef nonnull %6, i64 noundef 6) #13
  br label %53

52:                                               ; preds = %5
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  br label %53

53:                                               ; preds = %15, %51, %52, %27, %50, %26, %14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_bKGD(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %5 = icmp eq i32 %2, 3
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %8 = load i16, ptr %7, align 8, !tbaa !83
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i8, ptr %1, align 2, !tbaa !137
  br label %22

17:                                               ; preds = %10, %6
  %18 = load i8, ptr %1, align 2, !tbaa !137
  %19 = zext i8 %18 to i16
  %20 = icmp ugt i16 %8, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #12
  br label %62

22:                                               ; preds = %15, %17
  %23 = phi i8 [ %16, %15 ], [ %18, %17 ]
  store i8 %23, ptr %4, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %4, i64 noundef 1) #13
  br label %62

24:                                               ; preds = %3
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !134
  %30 = zext i16 %29 to i32
  call void @png_save_uint_16(ptr noundef nonnull %4, i32 noundef %30) #13
  %31 = getelementptr inbounds i8, ptr %4, i64 2
  %32 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !135
  %34 = zext i16 %33 to i32
  call void @png_save_uint_16(ptr noundef nonnull %31, i32 noundef %34) #13
  %35 = getelementptr inbounds i8, ptr %4, i64 4
  %36 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !136
  %38 = zext i16 %37 to i32
  call void @png_save_uint_16(ptr noundef nonnull %35, i32 noundef %38) #13
  %39 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %40 = load i8, ptr %39, align 8, !tbaa !55
  %41 = icmp eq i8 %40, 8
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load i8, ptr %4, align 1, !tbaa !34
  %44 = load i8, ptr %31, align 1, !tbaa !34
  %45 = or i8 %44, %43
  %46 = load i8, ptr %35, align 1, !tbaa !34
  %47 = or i8 %45, %46
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #12
  br label %62

50:                                               ; preds = %42, %27
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %4, i64 noundef 6) #13
  br label %62

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.png_color_16_struct, ptr %1, i64 0, i32 4
  %53 = load i16, ptr %52, align 2, !tbaa !133
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %56 = load i8, ptr %55, align 8, !tbaa !55
  %57 = zext nneg i8 %56 to i32
  %58 = shl nuw i32 1, %57
  %59 = icmp sgt i32 %58, %54
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #12
  br label %62

61:                                               ; preds = %51
  call void @png_save_uint_16(ptr noundef nonnull %4, i32 noundef %54) #13
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %4, i64 noundef 2) #13
  br label %62

62:                                               ; preds = %22, %61, %50, %60, %49, %21
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_hIST(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %6 = load i16, ptr %5, align 8, !tbaa !83
  %7 = zext i16 %6 to i32
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #12
  br label %23

10:                                               ; preds = %3
  %11 = shl nsw i32 %2, 1
  tail call fastcc void @png_write_chunk_header(ptr noundef nonnull %0, i32 noundef 1749635924, i32 noundef %11) #13
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = zext nneg i32 %2 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %17 = getelementptr inbounds i16, ptr %1, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !138
  %19 = zext i16 %18 to i32
  call void @png_save_uint_16(ptr noundef nonnull %4, i32 noundef %19) #13
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 2) #13
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %22, label %15, !llvm.loop !139

22:                                               ; preds = %15, %10
  call void @png_write_chunk_end(ptr noundef %0) #13
  br label %23

23:                                               ; preds = %22, %9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_warning_parameter_unsigned(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_formatted_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_tEXt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #13, !range !95
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %2, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  br label %15

15:                                               ; preds = %8, %10, %13
  %16 = phi i64 [ %14, %13 ], [ 0, %10 ], [ 0, %8 ]
  %17 = add i64 %16, %6
  %18 = trunc i64 %17 to i32
  %19 = add i32 %18, 1
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef 1950701684, i32 noundef %19) #13
  %20 = load ptr, ptr %5, align 8, !tbaa !96
  %21 = add nuw nsw i64 %6, 1
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %20, i64 noundef %21) #13
  %22 = icmp eq i64 %16, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %2, i64 noundef %16) #13
  br label %24

24:                                               ; preds = %23, %15
  tail call void @png_write_chunk_end(ptr noundef %0) #13
  tail call void @png_free(ptr noundef %0, ptr noundef %20) #12
  br label %25

25:                                               ; preds = %4, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_zTXt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca %struct.compression_state, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %9 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #13, !range !95
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 8, !tbaa !96
  tail call void @png_free(ptr noundef %0, ptr noundef %12) #12
  br label %32

13:                                               ; preds = %5
  %14 = icmp eq ptr %2, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = load i8, ptr %2, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 0
  %18 = icmp eq i32 %4, -1
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr %7, align 8, !tbaa !96
  tail call void @png_write_tEXt(ptr noundef %0, ptr noundef %21, ptr noundef %2, i64 poison) #13
  tail call void @png_free(ptr noundef %0, ptr noundef %21) #12
  br label %32

22:                                               ; preds = %15
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %24 = call fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %23, i32 noundef %4, ptr noundef nonnull %8) #13
  %25 = sext i32 %24 to i64
  %26 = trunc i64 %9 to i32
  %27 = add nuw nsw i32 %26, 2
  %28 = add i32 %27, %24
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef 2052348020, i32 noundef %28) #13
  %29 = load ptr, ptr %7, align 8, !tbaa !96
  %30 = add nuw nsw i64 %9, 1
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %29, i64 noundef %30) #13
  tail call void @png_free(ptr noundef %0, ptr noundef %29) #12
  %31 = trunc i32 %4 to i8
  store i8 %31, ptr %6, align 1, !tbaa !34
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 1) #13
  call fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr noundef nonnull %8, i64 noundef %25) #13
  call void @png_write_chunk_end(ptr noundef %0) #13
  br label %32

32:                                               ; preds = %22, %20, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_iTXt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca %struct.compression_state, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %11 = getelementptr inbounds %struct.compression_state, ptr %10, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %12 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8) #13, !range !95
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %6
  %15 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7) #13, !range !95
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.34) #12
  store ptr null, ptr %7, align 8, !tbaa !96
  br label %18

18:                                               ; preds = %17, %14
  %19 = icmp eq ptr %4, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i64 [ %21, %20 ], [ 0, %18 ]
  %24 = icmp eq ptr %5, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #15
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i64 [ %26, %25 ], [ 0, %22 ]
  %29 = add nsw i32 %1, -2
  %30 = call fastcc i32 @png_text_compress(ptr noundef %0, ptr noundef %5, i64 noundef %28, i32 noundef %29, ptr noundef nonnull %10) #13
  %31 = sext i32 %30 to i64
  %32 = add nuw nsw i64 %12, 5
  %33 = add nuw nsw i64 %32, %15
  %34 = add i64 %33, %23
  %35 = trunc i64 %34 to i32
  %36 = add i32 %30, %35
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef 1767135348, i32 noundef %36) #13
  %37 = load ptr, ptr %8, align 8, !tbaa !96
  %38 = add nuw nsw i64 %12, 1
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %37, i64 noundef %38) #13
  %39 = add i32 %1, 1
  %40 = and i32 %39, -3
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i8
  store i8 %42, ptr %9, align 1, !tbaa !34
  %43 = getelementptr inbounds [2 x i8], ptr %9, i64 0, i64 1
  store i8 0, ptr %43, align 1, !tbaa !34
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 2) #13
  store i8 0, ptr %9, align 1, !tbaa !34
  %44 = load ptr, ptr %7, align 8
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %9, ptr %44
  %47 = add nuw nsw i64 %15, 1
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %46, i64 noundef %47) #13
  %48 = select i1 %19, ptr %9, ptr %4
  %49 = add i64 %23, 1
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %48, i64 noundef %49) #13
  call fastcc void @png_write_compressed_data_out(ptr noundef %0, ptr noundef nonnull %10, i64 noundef %31) #13
  call void @png_write_chunk_end(ptr noundef %0) #13
  call void @png_free(ptr noundef %0, ptr noundef %37) #12
  call void @png_free(ptr noundef %0, ptr noundef %44) #12
  br label %50

50:                                               ; preds = %6, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_oFFs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #11
  %6 = icmp sgt i32 %3, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.35) #12
  br label %8

8:                                                ; preds = %7, %4
  call void @png_save_int_32(ptr noundef nonnull %5, i32 noundef %1) #13
  %9 = getelementptr inbounds i8, ptr %5, i64 4
  call void @png_save_int_32(ptr noundef nonnull %9, i32 noundef %2) #13
  %10 = trunc i32 %3 to i8
  %11 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 8
  store i8 %10, ptr %11, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1866876531, ptr noundef nonnull %5, i64 noundef 9) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_pCAL(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7) local_unnamed_addr #1 {
  %9 = alloca [10 x i8], align 1
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %11 = icmp sgt i32 %4, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.36) #12
  br label %13

13:                                               ; preds = %12, %8
  %14 = call i64 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #13, !range !95
  %15 = add nuw nsw i64 %14, 1
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #15
  %17 = icmp ne i32 %5, 0
  %18 = zext i1 %17 to i64
  %19 = add i64 %16, %18
  %20 = add nuw nsw i64 %14, 11
  %21 = add i64 %20, %19
  %22 = sext i32 %5 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %23) #12
  %25 = icmp sgt i32 %5, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %13
  %27 = add nsw i32 %5, -1
  %28 = zext nneg i32 %27 to i64
  %29 = zext nneg i32 %5 to i64
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ 0, %26 ], [ %41, %30 ]
  %32 = phi i64 [ %21, %26 ], [ %40, %30 ]
  %33 = getelementptr inbounds ptr, ptr %7, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #15
  %36 = icmp ne i64 %31, %28
  %37 = zext i1 %36 to i64
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds i64, ptr %24, i64 %31
  store i64 %38, ptr %39, align 8, !tbaa !140
  %40 = add i64 %38, %32
  %41 = add nuw nsw i64 %31, 1
  %42 = icmp eq i64 %41, %29
  br i1 %42, label %43, label %30, !llvm.loop !141

43:                                               ; preds = %30, %13
  %44 = phi i64 [ %21, %13 ], [ %40, %30 ]
  %45 = trunc i64 %44 to i32
  tail call fastcc void @png_write_chunk_header(ptr noundef %0, i32 noundef 1883455820, i32 noundef %45) #13
  %46 = load ptr, ptr %10, align 8, !tbaa !96
  tail call void @png_write_chunk_data(ptr noundef %0, ptr noundef %46, i64 noundef %15) #13
  call void @png_save_int_32(ptr noundef nonnull %9, i32 noundef %2) #13
  %47 = getelementptr inbounds i8, ptr %9, i64 4
  call void @png_save_int_32(ptr noundef nonnull %47, i32 noundef %3) #13
  %48 = trunc i32 %4 to i8
  %49 = getelementptr inbounds [10 x i8], ptr %9, i64 0, i64 8
  store i8 %48, ptr %49, align 1, !tbaa !34
  %50 = trunc i32 %5 to i8
  %51 = getelementptr inbounds [10 x i8], ptr %9, i64 0, i64 9
  store i8 %50, ptr %51, align 1, !tbaa !34
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 10) #13
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef %6, i64 noundef %19) #13
  call void @png_free(ptr noundef %0, ptr noundef %46) #12
  br i1 %25, label %52, label %62

52:                                               ; preds = %43
  %53 = zext nneg i32 %5 to i64
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ 0, %52 ], [ %60, %54 ]
  %56 = getelementptr inbounds ptr, ptr %7, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = getelementptr inbounds i64, ptr %24, i64 %55
  %59 = load i64, ptr %58, align 8, !tbaa !140
  call void @png_write_chunk_data(ptr noundef %0, ptr noundef %57, i64 noundef %59) #13
  %60 = add nuw nsw i64 %55, 1
  %61 = icmp eq i64 %60, %53
  br i1 %61, label %62, label %54, !llvm.loop !142

62:                                               ; preds = %54, %43
  call void @png_free(ptr noundef %0, ptr noundef %24) #12
  call void @png_write_chunk_end(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #11
  ret void
}

; Function Attrs: optsize
declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_sCAL_s(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %8 = add i64 %6, 2
  %9 = add i64 %8, %7
  %10 = icmp ugt i64 %9, 64
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.37) #12
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
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1933787468, ptr noundef nonnull %5, i64 noundef %9) #13
  br label %18

18:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_pHYs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #11
  %6 = icmp sgt i32 %3, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  br label %8

8:                                                ; preds = %7, %4
  call void @png_save_uint_32(ptr noundef nonnull %5, i32 noundef %1) #13
  %9 = getelementptr inbounds i8, ptr %5, i64 4
  call void @png_save_uint_32(ptr noundef nonnull %9, i32 noundef %2) #13
  %10 = trunc i32 %3 to i8
  %11 = getelementptr inbounds [9 x i8], ptr %5, i64 0, i64 8
  store i8 %10, ptr %11, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1883789683, ptr noundef nonnull %5, i64 noundef 9) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_tIME(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 2, !tbaa !143
  %6 = add i8 %5, -13
  %7 = icmp ult i8 %6, -12
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 1, !tbaa !145
  %11 = add i8 %10, -32
  %12 = icmp ult i8 %11, -31
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 3
  %15 = load i8, ptr %14, align 2, !tbaa !146
  %16 = icmp ugt i8 %15, 23
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 5
  %19 = load i8, ptr %18, align 2, !tbaa !147
  %20 = icmp ugt i8 %19, 60
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %8, %2
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.39) #12
  br label %32

22:                                               ; preds = %17
  %23 = load i16, ptr %1, align 2, !tbaa !148
  %24 = zext i16 %23 to i32
  call void @png_save_uint_16(ptr noundef nonnull %3, i32 noundef %24) #13
  %25 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 2
  store i8 %5, ptr %25, align 1, !tbaa !34
  %26 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 3
  store i8 %10, ptr %26, align 1, !tbaa !34
  %27 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 4
  store i8 %15, ptr %27, align 1, !tbaa !34
  %28 = getelementptr inbounds %struct.png_time_struct, ptr %1, i64 0, i32 4
  %29 = load i8, ptr %28, align 1, !tbaa !149
  %30 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 5
  store i8 %29, ptr %30, align 1, !tbaa !34
  %31 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 6
  store i8 %19, ptr %31, align 1, !tbaa !34
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1950960965, ptr noundef nonnull %3, i64 noundef 7) #13
  br label %32

32:                                               ; preds = %22, %21
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_start_row(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  %3 = load i8, ptr %2, align 4, !tbaa !66
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %6 = load i8, ptr %5, align 1, !tbaa !65
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, %4
  %9 = icmp ugt i32 %8, 7
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 8, !tbaa !60
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
  %26 = load i8, ptr %25, align 2, !tbaa !62
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  store i8 %26, ptr %27, align 1, !tbaa !150
  %28 = trunc i32 %8 to i8
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 63
  store i8 %28, ptr %29, align 2, !tbaa !151
  %30 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %24) #12
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  store ptr %30, ptr %31, align 8, !tbaa !152
  store i8 0, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %33 = load i8, ptr %32, align 2, !tbaa !70
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %38 = load i64, ptr %37, align 8, !tbaa !63
  %39 = add i64 %38, 1
  %40 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %39) #12
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  store ptr %40, ptr %41, align 8, !tbaa !153
  store i8 1, ptr %40, align 1, !tbaa !34
  %42 = load i8, ptr %32, align 2, !tbaa !70
  br label %43

43:                                               ; preds = %36, %22
  %44 = phi i8 [ %42, %36 ], [ %33, %22 ]
  %45 = icmp ult i8 %44, 32
  br i1 %45, label %79, label %46

46:                                               ; preds = %43
  %47 = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef %24) #12
  %48 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  store ptr %47, ptr %48, align 8, !tbaa !154
  %49 = load i8, ptr %32, align 2, !tbaa !70
  %50 = and i8 %49, 32
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %54 = load i64, ptr %53, align 8, !tbaa !63
  %55 = add i64 %54, 1
  %56 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %55) #12
  %57 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  store ptr %56, ptr %57, align 8, !tbaa !155
  store i8 2, ptr %56, align 1, !tbaa !34
  %58 = load i8, ptr %32, align 2, !tbaa !70
  br label %59

59:                                               ; preds = %52, %46
  %60 = phi i8 [ %58, %52 ], [ %49, %46 ]
  %61 = and i8 %60, 64
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %65 = load i64, ptr %64, align 8, !tbaa !63
  %66 = add i64 %65, 1
  %67 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %66) #12
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  store ptr %67, ptr %68, align 8, !tbaa !156
  store i8 3, ptr %67, align 1, !tbaa !34
  %69 = load i8, ptr %32, align 2, !tbaa !70
  br label %70

70:                                               ; preds = %63, %59
  %71 = phi i8 [ %69, %63 ], [ %60, %59 ]
  %72 = icmp sgt i8 %71, -1
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %75 = load i64, ptr %74, align 8, !tbaa !63
  %76 = add i64 %75, 1
  %77 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %76) #12
  %78 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  store ptr %77, ptr %78, align 8, !tbaa !157
  store i8 4, ptr %77, align 1, !tbaa !34
  br label %79

79:                                               ; preds = %70, %73, %43
  %80 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %81 = load i8, ptr %80, align 4, !tbaa !57
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %85 = load i32, ptr %84, align 4, !tbaa !158
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %89 = load i32, ptr %88, align 4, !tbaa !61
  br i1 %87, label %90, label %98

90:                                               ; preds = %83
  %91 = add i32 %89, 7
  %92 = lshr i32 %91, 3
  %93 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %92, ptr %93, align 8, !tbaa !159
  %94 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %95 = load i32, ptr %94, align 8, !tbaa !60
  %96 = add i32 %95, 7
  %97 = lshr i32 %96, 3
  br label %108

98:                                               ; preds = %83
  %99 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %89, ptr %99, align 8, !tbaa !159
  %100 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %101 = load i32, ptr %100, align 8, !tbaa !60
  br label %108

102:                                              ; preds = %79
  %103 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %104 = load i32, ptr %103, align 4, !tbaa !61
  %105 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  store i32 %104, ptr %105, align 8, !tbaa !159
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %107 = load i32, ptr %106, align 8, !tbaa !60
  br label %108

108:                                              ; preds = %90, %98, %102
  %109 = phi i32 [ %97, %90 ], [ %101, %98 ], [ %107, %102 ]
  %110 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  store i32 %109, ptr %110, align 4, !tbaa !64
  tail call fastcc void @png_zlib_claim(ptr noundef nonnull %0, i32 noundef 1) #13
  %111 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %112 = load i32, ptr %111, align 8, !tbaa !93
  %113 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  store i32 %112, ptr %113, align 8, !tbaa !94
  %114 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %115 = load ptr, ptr %114, align 8, !tbaa !91
  %116 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  store ptr %115, ptr %116, align 8, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_zlib_claim(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !160 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %2
  %9 = icmp eq i32 %5, %1
  br i1 %9, label %61, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %14 = tail call i32 @deflateEnd(ptr noundef nonnull %13) #12
  store i32 0, ptr %4, align 4, !tbaa !82
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %10, %12
  %17 = icmp eq i32 %1, 2
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  br i1 %17, label %19, label %31

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 4, !tbaa !78
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 26
  %23 = load i32, ptr %22, align 8, !tbaa !81
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !80
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 28
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 29
  %29 = load i32, ptr %28, align 4, !tbaa !77
  %30 = tail call i32 @deflateInit2_(ptr noundef nonnull %18, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, ptr noundef nonnull @.str.46, i32 noundef 112) #12
  br label %43

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  %33 = load i32, ptr %32, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  %35 = load i32, ptr %34, align 4, !tbaa !76
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  %37 = load i32, ptr %36, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  %39 = load i32, ptr %38, align 4, !tbaa !74
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 24
  %41 = load i32, ptr %40, align 8, !tbaa !72
  %42 = tail call i32 @deflateInit2_(ptr noundef nonnull %18, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, ptr noundef nonnull @.str.46, i32 noundef 112) #12
  br label %43

43:                                               ; preds = %19, %31
  %44 = phi i32 [ %42, %31 ], [ %30, %19 ]
  %45 = phi ptr [ @.str.48, %31 ], [ @.str.47, %19 ]
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %12, %43
  %48 = phi ptr [ %45, %43 ], [ @.str.45, %12 ]
  %49 = phi i32 [ %44, %43 ], [ %14, %12 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %50 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 64, i64 noundef 0, ptr noundef nonnull @.str.50) #12
  %51 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 64, i64 noundef %50, ptr noundef nonnull %48) #12
  %52 = add i32 %49, 6
  %53 = icmp ult i32 %52, 5
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = zext nneg i32 %52 to i64
  %56 = shl i64 %55, 2
  %57 = call ptr @llvm.load.relative.i64(ptr @reltable.png_zlib_claim, i64 %56)
  br label %58

58:                                               ; preds = %47, %54
  %59 = phi ptr [ %57, %54 ], [ @.str.54, %47 ]
  %60 = call i64 @png_safecat(ptr noundef nonnull %3, i64 noundef 64, i64 noundef %51, ptr noundef nonnull %59) #12
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  unreachable

61:                                               ; preds = %43, %8
  %62 = or i32 %1, 4
  store i32 %62, ptr %4, align 4, !tbaa !82
  ret void

63:                                               ; preds = %2
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #14
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_finish_row(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 4, !tbaa !161
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !161
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %121, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %10 = load i8, ptr %9, align 4, !tbaa !57
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %87, label %12

12:                                               ; preds = %8
  store i32 0, ptr %2, align 4, !tbaa !161
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !158
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %18 = load i8, ptr %17, align 1, !tbaa !162
  br i1 %16, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %25

23:                                               ; preds = %12
  %24 = add i8 %18, 1
  br label %56

25:                                               ; preds = %19, %29
  %26 = phi i8 [ %18, %19 ], [ %27, %29 ]
  %27 = add i8 %26, 1
  %28 = icmp ugt i8 %27, 6
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %20, align 8, !tbaa !60
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
  store i32 %41, ptr %21, align 4, !tbaa !64
  %42 = load i32, ptr %22, align 4, !tbaa !61
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
  store i32 %52, ptr %5, align 8, !tbaa !159
  %53 = icmp ult i32 %40, %34
  %54 = icmp ult i32 %51, %45
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %25, label %56, !llvm.loop !163

56:                                               ; preds = %29, %25, %23
  %57 = phi i8 [ %24, %23 ], [ %27, %25 ], [ %27, %29 ]
  store i8 %57, ptr %17, align 1, !tbaa !162
  %58 = icmp ult i8 %57, 7
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %61 = load ptr, ptr %60, align 8, !tbaa !154
  %62 = icmp eq ptr %61, null
  br i1 %62, label %121, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  %65 = load i8, ptr %64, align 4, !tbaa !66
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %68 = load i8, ptr %67, align 1, !tbaa !65
  %69 = zext i8 %68 to i32
  %70 = mul nuw nsw i32 %69, %66
  %71 = icmp ugt i32 %70, 7
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %73 = load i32, ptr %72, align 8, !tbaa !60
  %74 = zext i32 %73 to i64
  br i1 %71, label %75, label %79

75:                                               ; preds = %63
  %76 = lshr i32 %70, 3
  %77 = zext nneg i32 %76 to i64
  %78 = mul nuw nsw i64 %74, %77
  br label %84

79:                                               ; preds = %63
  %80 = zext nneg i32 %70 to i64
  %81 = mul nuw nsw i64 %74, %80
  %82 = add nuw nsw i64 %81, 7
  %83 = lshr i64 %82, 3
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i64 [ %78, %75 ], [ %83, %79 ]
  %86 = add nuw nsw i64 %85, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %61, i8 0, i64 %86, i1 false)
  br label %121

87:                                               ; preds = %56, %8
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %89 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %91 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 3
  br label %93

93:                                               ; preds = %104, %87
  %94 = tail call i32 @deflate(ptr noundef nonnull %88, i32 noundef 4) #12
  switch i32 %94, label %105 [
    i32 0, label %95
    i32 1, label %111
  ]

95:                                               ; preds = %93
  %96 = load i32, ptr %89, align 8, !tbaa !94
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load ptr, ptr %90, align 8, !tbaa !91
  %100 = load i32, ptr %91, align 8, !tbaa !93
  %101 = zext i32 %100 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %99, i64 noundef %101) #13
  %102 = load ptr, ptr %90, align 8, !tbaa !91
  store ptr %102, ptr %92, align 8, !tbaa !92
  %103 = load i32, ptr %91, align 8, !tbaa !93
  store i32 %103, ptr %89, align 8, !tbaa !94
  br label %104

104:                                              ; preds = %98, %95
  br label %93, !llvm.loop !164

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !107
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %107) #14
  unreachable

110:                                              ; preds = %105
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #14
  unreachable

111:                                              ; preds = %93
  %112 = load i32, ptr %89, align 8, !tbaa !94
  %113 = load i32, ptr %91, align 8, !tbaa !93
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load ptr, ptr %90, align 8, !tbaa !91
  %117 = sub i32 %113, %112
  %118 = zext i32 %117 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %116, i64 noundef %118) #13
  br label %119

119:                                              ; preds = %115, %111
  tail call fastcc void @png_zlib_release(ptr noundef nonnull %0) #13
  %120 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 11
  store i32 0, ptr %120, align 8, !tbaa !165
  br label %121

121:                                              ; preds = %59, %84, %1, %119
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_zlib_release(ptr noundef %0) unnamed_addr #1 !PGOFuncName !166 {
  %2 = alloca [8 x [32 x i8]], align 16
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 4, !tbaa !82
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %9 = tail call i32 @deflateReset(ptr noundef nonnull %8) #12
  %10 = load i32, ptr %3, align 4, !tbaa !82
  %11 = and i32 %10, -5
  store i32 %11, ptr %3, align 4, !tbaa !82
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
  call void @png_warning_parameter_signed(ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1, i32 noundef %9) #12
  call void @png_warning_parameter(ptr noundef nonnull %2, i32 noundef 2, ptr noundef nonnull %21) #12
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @.str.60, ptr %23
  call void @png_warning_parameter(ptr noundef nonnull %2, i32 noundef 3, ptr noundef nonnull %25) #12
  call void @png_formatted_warning(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.61) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #11
  br label %27

26:                                               ; preds = %1
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.62) #12
  br label %27

27:                                               ; preds = %7, %20, %26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_write_interlace(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp slt i32 %2, 6
  br i1 %4, label %5, label %187

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !167
  %8 = load i32, ptr %0, align 8, !tbaa !169
  switch i8 %7, label %131 [
    i8 1, label %9
    i8 2, label %49
    i8 4, label %90
  ]

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = icmp ugt i32 %8, %13
  br i1 %14, label %15, label %161

15:                                               ; preds = %9
  %16 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %10
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %42, %15
  %20 = phi ptr [ %44, %42 ], [ %1, %15 ]
  %21 = phi i32 [ %45, %42 ], [ %13, %15 ]
  br label %22

22:                                               ; preds = %19, %38
  %23 = phi i32 [ %39, %38 ], [ 7, %19 ]
  %24 = phi i32 [ %36, %38 ], [ 0, %19 ]
  %25 = phi i32 [ %40, %38 ], [ %21, %19 ]
  %26 = lshr i32 %25, 3
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = zext i8 %29 to i32
  %31 = and i32 %25, 7
  %32 = xor i32 %31, 7
  %33 = lshr i32 %30, %32
  %34 = and i32 %33, 1
  %35 = shl nuw i32 %34, %23
  %36 = or i32 %35, %24
  %37 = icmp eq i32 %23, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %22
  %39 = add nsw i32 %23, -1
  %40 = add i32 %25, %18
  %41 = icmp ult i32 %40, %8
  br i1 %41, label %22, label %47, !llvm.loop !170

42:                                               ; preds = %22
  %43 = trunc i32 %36 to i8
  %44 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %43, ptr %20, align 1, !tbaa !34
  %45 = add i32 %25, %18
  %46 = icmp ult i32 %45, %8
  br i1 %46, label %19, label %161, !llvm.loop !170

47:                                               ; preds = %38
  %48 = icmp eq i32 %39, 7
  br i1 %48, label %161, label %155

49:                                               ; preds = %5
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = icmp ugt i32 %8, %53
  br i1 %54, label %55, label %161

55:                                               ; preds = %49
  %56 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %50
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %83, %55
  %60 = phi ptr [ %85, %83 ], [ %1, %55 ]
  %61 = phi i32 [ %86, %83 ], [ %53, %55 ]
  br label %62

62:                                               ; preds = %59, %79
  %63 = phi i32 [ %80, %79 ], [ 6, %59 ]
  %64 = phi i32 [ %77, %79 ], [ 0, %59 ]
  %65 = phi i32 [ %81, %79 ], [ %61, %59 ]
  %66 = lshr i32 %65, 2
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !34
  %70 = zext i8 %69 to i32
  %71 = shl i32 %65, 1
  %72 = and i32 %71, 6
  %73 = xor i32 %72, 6
  %74 = lshr i32 %70, %73
  %75 = and i32 %74, 3
  %76 = shl i32 %75, %63
  %77 = or i32 %76, %64
  %78 = icmp eq i32 %63, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %62
  %80 = add nsw i32 %63, -2
  %81 = add i32 %65, %58
  %82 = icmp ult i32 %81, %8
  br i1 %82, label %62, label %88, !llvm.loop !171

83:                                               ; preds = %62
  %84 = trunc i32 %77 to i8
  %85 = getelementptr inbounds i8, ptr %60, i64 1
  store i8 %84, ptr %60, align 1, !tbaa !34
  %86 = add i32 %65, %58
  %87 = icmp ult i32 %86, %8
  br i1 %87, label %59, label %161, !llvm.loop !171

88:                                               ; preds = %79
  %89 = icmp eq i32 %80, 6
  br i1 %89, label %161, label %155

90:                                               ; preds = %5
  %91 = sext i32 %2 to i64
  %92 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !34
  %94 = zext i8 %93 to i32
  %95 = icmp ugt i32 %8, %94
  br i1 %95, label %96, label %161

96:                                               ; preds = %90
  %97 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %91
  %98 = load i8, ptr %97, align 1, !tbaa !34
  %99 = zext i8 %98 to i32
  br label %100

100:                                              ; preds = %124, %96
  %101 = phi i32 [ %127, %124 ], [ %94, %96 ]
  %102 = phi ptr [ %126, %124 ], [ %1, %96 ]
  br label %103

103:                                              ; preds = %100, %120
  %104 = phi i32 [ %122, %120 ], [ %101, %100 ]
  %105 = phi i32 [ %118, %120 ], [ 0, %100 ]
  %106 = phi i32 [ %121, %120 ], [ 4, %100 ]
  %107 = lshr i32 %104, 1
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %1, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !34
  %111 = zext i8 %110 to i32
  %112 = shl i32 %104, 2
  %113 = and i32 %112, 4
  %114 = xor i32 %113, 4
  %115 = lshr i32 %111, %114
  %116 = and i32 %115, 15
  %117 = shl i32 %116, %106
  %118 = or i32 %117, %105
  %119 = icmp eq i32 %106, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %103
  %121 = add nsw i32 %106, -4
  %122 = add i32 %104, %99
  %123 = icmp ult i32 %122, %8
  br i1 %123, label %103, label %129, !llvm.loop !172

124:                                              ; preds = %103
  %125 = trunc i32 %118 to i8
  %126 = getelementptr inbounds i8, ptr %102, i64 1
  store i8 %125, ptr %102, align 1, !tbaa !34
  %127 = add i32 %104, %99
  %128 = icmp ult i32 %127, %8
  br i1 %128, label %100, label %161, !llvm.loop !172

129:                                              ; preds = %120
  %130 = icmp eq i32 %121, 4
  br i1 %130, label %161, label %155

131:                                              ; preds = %5
  %132 = lshr i8 %7, 3
  %133 = zext nneg i8 %132 to i64
  %134 = sext i32 %2 to i64
  %135 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_start, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = zext i8 %136 to i32
  %138 = icmp ugt i32 %8, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %131
  %140 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %134
  %141 = load i8, ptr %140, align 1, !tbaa !34
  %142 = zext i8 %141 to i32
  br label %143

143:                                              ; preds = %139, %151
  %144 = phi i32 [ %137, %139 ], [ %153, %151 ]
  %145 = phi ptr [ %1, %139 ], [ %152, %151 ]
  %146 = zext i32 %144 to i64
  %147 = mul nuw nsw i64 %146, %133
  %148 = getelementptr inbounds i8, ptr %1, i64 %147
  %149 = icmp eq ptr %145, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %145, ptr align 1 %148, i64 %133, i1 false)
  br label %151

151:                                              ; preds = %150, %143
  %152 = getelementptr inbounds i8, ptr %145, i64 %133
  %153 = add i32 %144, %142
  %154 = icmp ult i32 %153, %8
  br i1 %154, label %143, label %161, !llvm.loop !173

155:                                              ; preds = %129, %88, %47
  %156 = phi i32 [ %36, %47 ], [ %77, %88 ], [ %118, %129 ]
  %157 = phi ptr [ %20, %47 ], [ %60, %88 ], [ %102, %129 ]
  %158 = phi i32 [ %13, %47 ], [ %53, %88 ], [ %94, %129 ]
  %159 = phi i64 [ %10, %47 ], [ %50, %88 ], [ %91, %129 ]
  %160 = trunc i32 %156 to i8
  store i8 %160, ptr %157, align 1, !tbaa !34
  br label %161

161:                                              ; preds = %124, %83, %42, %151, %155, %90, %49, %9, %131, %129, %88, %47
  %162 = phi i32 [ %137, %131 ], [ %94, %129 ], [ %53, %88 ], [ %13, %47 ], [ %13, %9 ], [ %53, %49 ], [ %94, %90 ], [ %158, %155 ], [ %137, %151 ], [ %13, %42 ], [ %53, %83 ], [ %94, %124 ]
  %163 = phi i64 [ %134, %131 ], [ %91, %129 ], [ %50, %88 ], [ %10, %47 ], [ %10, %9 ], [ %50, %49 ], [ %91, %90 ], [ %159, %155 ], [ %134, %151 ], [ %10, %42 ], [ %50, %83 ], [ %91, %124 ]
  %164 = load i32, ptr %0, align 8, !tbaa !169
  %165 = getelementptr inbounds [7 x i8], ptr @png_do_write_interlace.png_pass_inc, i64 0, i64 %163
  %166 = load i8, ptr %165, align 1, !tbaa !34
  %167 = zext i8 %166 to i32
  %168 = add i32 %164, %167
  %169 = xor i32 %162, -1
  %170 = add i32 %168, %169
  %171 = udiv i32 %170, %167
  store i32 %171, ptr %0, align 8, !tbaa !169
  %172 = load i8, ptr %6, align 1, !tbaa !167
  %173 = icmp ugt i8 %172, 7
  %174 = zext i32 %171 to i64
  br i1 %173, label %175, label %179

175:                                              ; preds = %161
  %176 = lshr i8 %172, 3
  %177 = zext nneg i8 %176 to i64
  %178 = mul nuw nsw i64 %177, %174
  br label %184

179:                                              ; preds = %161
  %180 = zext nneg i8 %172 to i64
  %181 = mul nuw nsw i64 %180, %174
  %182 = add nuw nsw i64 %181, 7
  %183 = lshr i64 %182, 3
  br label %184

184:                                              ; preds = %179, %175
  %185 = phi i64 [ %178, %175 ], [ %183, %179 ]
  %186 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  store i64 %185, ptr %186, align 8, !tbaa !174
  br label %187

187:                                              ; preds = %184, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_find_filter(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %4 = load i8, ptr %3, align 2, !tbaa !70
  %5 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !174
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 108
  %8 = load i8, ptr %7, align 1, !tbaa !175
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  %10 = load i8, ptr %9, align 1, !tbaa !167
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 7
  %13 = lshr i32 %12, 3
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !152
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
  br i1 %37, label %38, label %25, !llvm.loop !176

38:                                               ; preds = %25, %23
  %39 = phi i32 [ 0, %23 ], [ %35, %25 ]
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %41 = load i8, ptr %40, align 8, !tbaa !177
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
  %50 = load ptr, ptr %49, align 8, !tbaa !178
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
  %61 = load ptr, ptr %51, align 8, !tbaa !179
  %62 = getelementptr inbounds i16, ptr %61, i64 %54
  %63 = load i16, ptr %62, align 2, !tbaa !138
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
  br i1 %73, label %74, label %53, !llvm.loop !180

74:                                               ; preds = %69, %43
  %75 = phi i32 [ %44, %43 ], [ %70, %69 ]
  %76 = phi i32 [ %46, %43 ], [ %71, %69 ]
  %77 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %78 = load ptr, ptr %77, align 8, !tbaa !181
  %79 = load i16, ptr %78, align 2, !tbaa !138
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
  %95 = load ptr, ptr %94, align 8, !tbaa !153
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
  br i1 %112, label %99, label %104, !llvm.loop !182

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
  br i1 %125, label %284, label %113, !llvm.loop !183

126:                                              ; preds = %89
  %127 = and i32 %18, 16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %288, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %131 = load i8, ptr %130, align 8, !tbaa !177
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
  %140 = load ptr, ptr %139, align 8, !tbaa !178
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
  %151 = load ptr, ptr %141, align 8, !tbaa !184
  %152 = getelementptr inbounds i16, ptr %151, i64 %144
  %153 = load i16, ptr %152, align 2, !tbaa !138
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
  br i1 %163, label %164, label %143, !llvm.loop !185

164:                                              ; preds = %159, %133
  %165 = phi i32 [ %136, %133 ], [ %160, %159 ]
  %166 = phi i32 [ %134, %133 ], [ %161, %159 ]
  %167 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %168 = load ptr, ptr %167, align 8, !tbaa !186
  %169 = getelementptr inbounds i16, ptr %168, i64 1
  %170 = load i16, ptr %169, align 2, !tbaa !138
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
  %184 = load ptr, ptr %183, align 8, !tbaa !153
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
  br i1 %208, label %188, label %194, !llvm.loop !187

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
  br i1 %229, label %209, label %230, !llvm.loop !188

230:                                              ; preds = %209, %188
  %231 = phi i32 [ %190, %188 ], [ %222, %209 ]
  %232 = load i8, ptr %130, align 8, !tbaa !177
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
  %241 = load ptr, ptr %240, align 8, !tbaa !178
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
  %252 = load ptr, ptr %242, align 8, !tbaa !184
  %253 = getelementptr inbounds i16, ptr %252, i64 %245
  %254 = load i16, ptr %253, align 2, !tbaa !138
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
  br i1 %264, label %265, label %244, !llvm.loop !189

265:                                              ; preds = %260, %234
  %266 = phi i32 [ %237, %234 ], [ %261, %260 ]
  %267 = phi i32 [ %235, %234 ], [ %262, %260 ]
  %268 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %269 = load ptr, ptr %268, align 8, !tbaa !186
  %270 = getelementptr inbounds i16, ptr %269, i64 1
  %271 = load i16, ptr %270, align 2, !tbaa !138
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
  %287 = load ptr, ptr %285, align 8, !tbaa !153
  br label %288

288:                                              ; preds = %284, %281, %126
  %289 = phi i32 [ %90, %126 ], [ %90, %281 ], [ %286, %284 ]
  %290 = phi ptr [ %17, %126 ], [ %17, %281 ], [ %287, %284 ]
  %291 = icmp eq i8 %4, 32
  br i1 %291, label %292, label %309

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %294 = load ptr, ptr %293, align 8, !tbaa !155
  %295 = icmp eq i64 %6, 0
  br i1 %295, label %933, label %296

296:                                              ; preds = %292, %296
  %297 = phi i64 [ %307, %296 ], [ 0, %292 ]
  %298 = phi ptr [ %302, %296 ], [ %15, %292 ]
  %299 = phi ptr [ %301, %296 ], [ %294, %292 ]
  %300 = phi ptr [ %303, %296 ], [ %17, %292 ]
  %301 = getelementptr inbounds i8, ptr %299, i64 1
  %302 = getelementptr inbounds i8, ptr %298, i64 1
  %303 = getelementptr inbounds i8, ptr %300, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !34
  %305 = load i8, ptr %302, align 1, !tbaa !34
  %306 = sub i8 %304, %305
  store i8 %306, ptr %301, align 1, !tbaa !34
  %307 = add nuw i64 %297, 1
  %308 = icmp eq i64 %307, %6
  br i1 %308, label %446, label %296, !llvm.loop !190

309:                                              ; preds = %288
  %310 = and i32 %18, 32
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %450, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %314 = load i8, ptr %313, align 8, !tbaa !177
  %315 = icmp eq i8 %314, 2
  br i1 %315, label %316, label %363

316:                                              ; preds = %312
  %317 = and i32 %289, 65535
  %318 = lshr i32 %289, 10
  %319 = and i32 %318, 4194240
  %320 = icmp eq i8 %8, 0
  br i1 %320, label %347, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %323 = load ptr, ptr %322, align 8, !tbaa !178
  %324 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %325 = zext i8 %8 to i64
  br label %326

326:                                              ; preds = %321, %342
  %327 = phi i64 [ 0, %321 ], [ %345, %342 ]
  %328 = phi i32 [ %317, %321 ], [ %344, %342 ]
  %329 = phi i32 [ %319, %321 ], [ %343, %342 ]
  %330 = getelementptr inbounds i8, ptr %323, i64 %327
  %331 = load i8, ptr %330, align 1, !tbaa !34
  %332 = icmp eq i8 %331, 2
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = load ptr, ptr %324, align 8, !tbaa !184
  %335 = getelementptr inbounds i16, ptr %334, i64 %327
  %336 = load i16, ptr %335, align 2, !tbaa !138
  %337 = zext i16 %336 to i32
  %338 = mul i32 %328, %337
  %339 = lshr i32 %338, 8
  %340 = mul i32 %329, %337
  %341 = lshr i32 %340, 8
  br label %342

342:                                              ; preds = %326, %333
  %343 = phi i32 [ %341, %333 ], [ %329, %326 ]
  %344 = phi i32 [ %339, %333 ], [ %328, %326 ]
  %345 = add nuw nsw i64 %327, 1
  %346 = icmp eq i64 %345, %325
  br i1 %346, label %347, label %326, !llvm.loop !191

347:                                              ; preds = %342, %316
  %348 = phi i32 [ %319, %316 ], [ %343, %342 ]
  %349 = phi i32 [ %317, %316 ], [ %344, %342 ]
  %350 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %351 = load ptr, ptr %350, align 8, !tbaa !186
  %352 = getelementptr inbounds i16, ptr %351, i64 2
  %353 = load i16, ptr %352, align 2, !tbaa !138
  %354 = zext i16 %353 to i32
  %355 = mul i32 %348, %354
  %356 = icmp ugt i32 %355, 33553927
  br i1 %356, label %363, label %357

357:                                              ; preds = %347
  %358 = mul i32 %349, %354
  %359 = lshr i32 %358, 3
  %360 = shl nuw i32 %355, 7
  %361 = and i32 %360, -1024
  %362 = add i32 %361, %359
  br label %363

363:                                              ; preds = %357, %347, %312
  %364 = phi i32 [ %289, %312 ], [ %362, %357 ], [ 2147483647, %347 ]
  %365 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %366 = icmp eq i64 %6, 0
  br i1 %366, label %392, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %365, align 8, !tbaa !155
  br label %369

369:                                              ; preds = %369, %367
  %370 = phi ptr [ %17, %367 ], [ %377, %369 ]
  %371 = phi ptr [ %15, %367 ], [ %376, %369 ]
  %372 = phi ptr [ %368, %367 ], [ %375, %369 ]
  %373 = phi i64 [ 0, %367 ], [ %387, %369 ]
  %374 = phi i32 [ 0, %367 ], [ %385, %369 ]
  %375 = getelementptr inbounds i8, ptr %372, i64 1
  %376 = getelementptr inbounds i8, ptr %371, i64 1
  %377 = getelementptr inbounds i8, ptr %370, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !34
  %379 = load i8, ptr %376, align 1, !tbaa !34
  %380 = sub i8 %378, %379
  store i8 %380, ptr %375, align 1, !tbaa !34
  %381 = zext i8 %380 to i32
  %382 = sub nuw nsw i32 256, %381
  %383 = icmp slt i8 %380, 0
  %384 = select i1 %383, i32 %382, i32 %381
  %385 = add i32 %384, %374
  %386 = icmp ugt i32 %385, %364
  %387 = add nuw i64 %373, 1
  %388 = icmp eq i64 %387, %6
  %389 = select i1 %386, i1 true, i1 %388
  br i1 %389, label %390, label %369, !llvm.loop !192

390:                                              ; preds = %369
  %391 = load i8, ptr %313, align 8, !tbaa !177
  br label %392

392:                                              ; preds = %390, %363
  %393 = phi i8 [ %314, %363 ], [ %391, %390 ]
  %394 = phi i32 [ 0, %363 ], [ %385, %390 ]
  %395 = icmp eq i8 %393, 2
  br i1 %395, label %396, label %443

396:                                              ; preds = %392
  %397 = and i32 %394, 65535
  %398 = lshr i32 %394, 10
  %399 = and i32 %398, 4194240
  %400 = icmp eq i8 %8, 0
  br i1 %400, label %427, label %401

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %403 = load ptr, ptr %402, align 8, !tbaa !178
  %404 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %405 = zext i8 %8 to i64
  br label %406

406:                                              ; preds = %401, %422
  %407 = phi i64 [ 0, %401 ], [ %425, %422 ]
  %408 = phi i32 [ %397, %401 ], [ %424, %422 ]
  %409 = phi i32 [ %399, %401 ], [ %423, %422 ]
  %410 = getelementptr inbounds i8, ptr %403, i64 %407
  %411 = load i8, ptr %410, align 1, !tbaa !34
  %412 = icmp eq i8 %411, 2
  br i1 %412, label %413, label %422

413:                                              ; preds = %406
  %414 = load ptr, ptr %404, align 8, !tbaa !179
  %415 = getelementptr inbounds i16, ptr %414, i64 %407
  %416 = load i16, ptr %415, align 2, !tbaa !138
  %417 = zext i16 %416 to i32
  %418 = mul i32 %408, %417
  %419 = lshr i32 %418, 8
  %420 = mul i32 %409, %417
  %421 = lshr i32 %420, 8
  br label %422

422:                                              ; preds = %406, %413
  %423 = phi i32 [ %421, %413 ], [ %409, %406 ]
  %424 = phi i32 [ %419, %413 ], [ %408, %406 ]
  %425 = add nuw nsw i64 %407, 1
  %426 = icmp eq i64 %425, %405
  br i1 %426, label %427, label %406, !llvm.loop !193

427:                                              ; preds = %422, %396
  %428 = phi i32 [ %399, %396 ], [ %423, %422 ]
  %429 = phi i32 [ %397, %396 ], [ %424, %422 ]
  %430 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %431 = load ptr, ptr %430, align 8, !tbaa !181
  %432 = getelementptr inbounds i16, ptr %431, i64 2
  %433 = load i16, ptr %432, align 2, !tbaa !138
  %434 = zext i16 %433 to i32
  %435 = mul i32 %428, %434
  %436 = icmp ugt i32 %435, 33553927
  br i1 %436, label %443, label %437

437:                                              ; preds = %427
  %438 = mul i32 %429, %434
  %439 = lshr i32 %438, 3
  %440 = shl nuw i32 %435, 7
  %441 = and i32 %440, -1024
  %442 = add i32 %441, %439
  br label %443

443:                                              ; preds = %437, %427, %392
  %444 = phi i32 [ %394, %392 ], [ %442, %437 ], [ 2147483647, %427 ]
  %445 = icmp ult i32 %444, %289
  br i1 %445, label %446, label %450

446:                                              ; preds = %296, %443
  %447 = phi ptr [ %365, %443 ], [ %293, %296 ]
  %448 = phi i32 [ %444, %443 ], [ %289, %296 ]
  %449 = load ptr, ptr %447, align 8, !tbaa !155
  br label %450

450:                                              ; preds = %446, %443, %309
  %451 = phi i32 [ %289, %309 ], [ %289, %443 ], [ %448, %446 ]
  %452 = phi ptr [ %290, %309 ], [ %290, %443 ], [ %449, %446 ]
  %453 = icmp eq i8 %4, 64
  br i1 %453, label %454, label %504

454:                                              ; preds = %450
  %455 = getelementptr inbounds i8, ptr %17, i64 1
  %456 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %457 = load ptr, ptr %456, align 8, !tbaa !156
  %458 = getelementptr inbounds i8, ptr %457, i64 1
  %459 = getelementptr inbounds i8, ptr %15, i64 1
  %460 = icmp eq i8 %10, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %468, %454
  %462 = phi ptr [ %455, %454 ], [ %473, %468 ]
  %463 = phi i32 [ 0, %454 ], [ %13, %468 ]
  %464 = phi ptr [ %458, %454 ], [ %479, %468 ]
  %465 = phi ptr [ %459, %454 ], [ %480, %468 ]
  %466 = zext nneg i32 %463 to i64
  %467 = icmp ugt i64 %6, %466
  br i1 %467, label %482, label %677

468:                                              ; preds = %454, %468
  %469 = phi ptr [ %480, %468 ], [ %459, %454 ]
  %470 = phi ptr [ %479, %468 ], [ %458, %454 ]
  %471 = phi i32 [ %478, %468 ], [ 0, %454 ]
  %472 = phi ptr [ %473, %468 ], [ %455, %454 ]
  %473 = getelementptr inbounds i8, ptr %472, i64 1
  %474 = load i8, ptr %472, align 1, !tbaa !34
  %475 = load i8, ptr %469, align 1, !tbaa !34
  %476 = lshr i8 %475, 1
  %477 = sub i8 %474, %476
  store i8 %477, ptr %470, align 1, !tbaa !34
  %478 = add nuw nsw i32 %471, 1
  %479 = getelementptr inbounds i8, ptr %470, i64 1
  %480 = getelementptr inbounds i8, ptr %469, i64 1
  %481 = icmp eq i32 %478, %13
  br i1 %481, label %461, label %468, !llvm.loop !194

482:                                              ; preds = %461, %482
  %483 = phi i32 [ %501, %482 ], [ %463, %461 ]
  %484 = phi ptr [ %493, %482 ], [ %455, %461 ]
  %485 = phi ptr [ %490, %482 ], [ %465, %461 ]
  %486 = phi ptr [ %500, %482 ], [ %464, %461 ]
  %487 = phi ptr [ %488, %482 ], [ %462, %461 ]
  %488 = getelementptr inbounds i8, ptr %487, i64 1
  %489 = load i8, ptr %487, align 1, !tbaa !34
  %490 = getelementptr inbounds i8, ptr %485, i64 1
  %491 = load i8, ptr %485, align 1, !tbaa !34
  %492 = zext i8 %491 to i16
  %493 = getelementptr inbounds i8, ptr %484, i64 1
  %494 = load i8, ptr %484, align 1, !tbaa !34
  %495 = zext i8 %494 to i16
  %496 = add nuw nsw i16 %495, %492
  %497 = lshr i16 %496, 1
  %498 = trunc i16 %497 to i8
  %499 = sub i8 %489, %498
  %500 = getelementptr inbounds i8, ptr %486, i64 1
  store i8 %499, ptr %486, align 1, !tbaa !34
  %501 = add i32 %483, 1
  %502 = zext i32 %501 to i64
  %503 = icmp ugt i64 %6, %502
  br i1 %503, label %482, label %677, !llvm.loop !195

504:                                              ; preds = %450
  %505 = and i32 %18, 64
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %681, label %507

507:                                              ; preds = %504
  %508 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %509 = load i8, ptr %508, align 8, !tbaa !177
  %510 = icmp eq i8 %509, 2
  br i1 %510, label %511, label %558

511:                                              ; preds = %507
  %512 = and i32 %451, 65535
  %513 = lshr i32 %451, 10
  %514 = and i32 %513, 4194240
  %515 = icmp eq i8 %8, 0
  br i1 %515, label %542, label %516

516:                                              ; preds = %511
  %517 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %518 = load ptr, ptr %517, align 8, !tbaa !178
  %519 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %520 = zext i8 %8 to i64
  br label %521

521:                                              ; preds = %516, %537
  %522 = phi i64 [ 0, %516 ], [ %540, %537 ]
  %523 = phi i32 [ %512, %516 ], [ %539, %537 ]
  %524 = phi i32 [ %514, %516 ], [ %538, %537 ]
  %525 = getelementptr inbounds i8, ptr %518, i64 %522
  %526 = load i8, ptr %525, align 1, !tbaa !34
  %527 = icmp eq i8 %526, 3
  br i1 %527, label %528, label %537

528:                                              ; preds = %521
  %529 = load ptr, ptr %519, align 8, !tbaa !184
  %530 = getelementptr inbounds i16, ptr %529, i64 %522
  %531 = load i16, ptr %530, align 2, !tbaa !138
  %532 = zext i16 %531 to i32
  %533 = mul i32 %523, %532
  %534 = lshr i32 %533, 8
  %535 = mul i32 %524, %532
  %536 = lshr i32 %535, 8
  br label %537

537:                                              ; preds = %521, %528
  %538 = phi i32 [ %536, %528 ], [ %524, %521 ]
  %539 = phi i32 [ %534, %528 ], [ %523, %521 ]
  %540 = add nuw nsw i64 %522, 1
  %541 = icmp eq i64 %540, %520
  br i1 %541, label %542, label %521, !llvm.loop !196

542:                                              ; preds = %537, %511
  %543 = phi i32 [ %514, %511 ], [ %538, %537 ]
  %544 = phi i32 [ %512, %511 ], [ %539, %537 ]
  %545 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %546 = load ptr, ptr %545, align 8, !tbaa !186
  %547 = getelementptr inbounds i16, ptr %546, i64 3
  %548 = load i16, ptr %547, align 2, !tbaa !138
  %549 = zext i16 %548 to i32
  %550 = mul i32 %543, %549
  %551 = icmp ugt i32 %550, 33553927
  br i1 %551, label %558, label %552

552:                                              ; preds = %542
  %553 = mul i32 %544, %549
  %554 = lshr i32 %553, 3
  %555 = shl nuw i32 %550, 7
  %556 = and i32 %555, -1024
  %557 = add i32 %556, %554
  br label %558

558:                                              ; preds = %552, %542, %507
  %559 = phi i32 [ %451, %507 ], [ %557, %552 ], [ 2147483647, %542 ]
  %560 = getelementptr inbounds i8, ptr %17, i64 1
  %561 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %562 = load ptr, ptr %561, align 8, !tbaa !156
  %563 = zext nneg i32 %13 to i64
  %564 = getelementptr inbounds i8, ptr %562, i64 1
  %565 = getelementptr inbounds i8, ptr %15, i64 1
  %566 = icmp eq i8 %10, 0
  br i1 %566, label %567, label %574

567:                                              ; preds = %574, %558
  %568 = phi ptr [ %560, %558 ], [ %580, %574 ]
  %569 = phi i32 [ 0, %558 ], [ %589, %574 ]
  %570 = phi i64 [ 0, %558 ], [ %563, %574 ]
  %571 = phi ptr [ %564, %558 ], [ %591, %574 ]
  %572 = phi ptr [ %565, %558 ], [ %592, %574 ]
  %573 = icmp ult i64 %570, %6
  br i1 %573, label %594, label %623

574:                                              ; preds = %558, %574
  %575 = phi ptr [ %592, %574 ], [ %565, %558 ]
  %576 = phi ptr [ %591, %574 ], [ %564, %558 ]
  %577 = phi i64 [ %590, %574 ], [ 0, %558 ]
  %578 = phi i32 [ %589, %574 ], [ 0, %558 ]
  %579 = phi ptr [ %580, %574 ], [ %560, %558 ]
  %580 = getelementptr inbounds i8, ptr %579, i64 1
  %581 = load i8, ptr %579, align 1, !tbaa !34
  %582 = load i8, ptr %575, align 1, !tbaa !34
  %583 = lshr i8 %582, 1
  %584 = sub i8 %581, %583
  store i8 %584, ptr %576, align 1, !tbaa !34
  %585 = zext i8 %584 to i32
  %586 = sub nuw nsw i32 256, %585
  %587 = icmp slt i8 %584, 0
  %588 = select i1 %587, i32 %586, i32 %585
  %589 = add i32 %588, %578
  %590 = add nuw nsw i64 %577, 1
  %591 = getelementptr inbounds i8, ptr %576, i64 1
  %592 = getelementptr inbounds i8, ptr %575, i64 1
  %593 = icmp eq i64 %590, %563
  br i1 %593, label %567, label %574, !llvm.loop !197

594:                                              ; preds = %567, %594
  %595 = phi i64 [ %620, %594 ], [ %570, %567 ]
  %596 = phi i32 [ %614, %594 ], [ %569, %567 ]
  %597 = phi ptr [ %617, %594 ], [ %560, %567 ]
  %598 = phi ptr [ %618, %594 ], [ %572, %567 ]
  %599 = phi ptr [ %616, %594 ], [ %571, %567 ]
  %600 = phi ptr [ %619, %594 ], [ %568, %567 ]
  %601 = load i8, ptr %600, align 1, !tbaa !34
  %602 = load i8, ptr %598, align 1, !tbaa !34
  %603 = zext i8 %602 to i16
  %604 = load i8, ptr %597, align 1, !tbaa !34
  %605 = zext i8 %604 to i16
  %606 = add nuw nsw i16 %605, %603
  %607 = lshr i16 %606, 1
  %608 = trunc i16 %607 to i8
  %609 = sub i8 %601, %608
  store i8 %609, ptr %599, align 1, !tbaa !34
  %610 = zext i8 %609 to i32
  %611 = sub nuw nsw i32 256, %610
  %612 = icmp slt i8 %609, 0
  %613 = select i1 %612, i32 %611, i32 %610
  %614 = add i32 %613, %596
  %615 = icmp ule i32 %614, %559
  %616 = getelementptr inbounds i8, ptr %599, i64 1
  %617 = getelementptr inbounds i8, ptr %597, i64 1
  %618 = getelementptr inbounds i8, ptr %598, i64 1
  %619 = getelementptr inbounds i8, ptr %600, i64 1
  %620 = add nuw i64 %595, 1
  %621 = icmp ult i64 %620, %6
  %622 = select i1 %615, i1 %621, i1 false
  br i1 %622, label %594, label %623, !llvm.loop !198

623:                                              ; preds = %594, %567
  %624 = phi i32 [ %569, %567 ], [ %614, %594 ]
  %625 = load i8, ptr %508, align 8, !tbaa !177
  %626 = icmp eq i8 %625, 2
  br i1 %626, label %627, label %674

627:                                              ; preds = %623
  %628 = and i32 %624, 65535
  %629 = lshr i32 %624, 10
  %630 = and i32 %629, 4194240
  %631 = icmp eq i8 %8, 0
  br i1 %631, label %658, label %632

632:                                              ; preds = %627
  %633 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %634 = load ptr, ptr %633, align 8, !tbaa !178
  %635 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %636 = zext i8 %8 to i64
  br label %637

637:                                              ; preds = %632, %653
  %638 = phi i64 [ 0, %632 ], [ %656, %653 ]
  %639 = phi i32 [ %628, %632 ], [ %655, %653 ]
  %640 = phi i32 [ %630, %632 ], [ %654, %653 ]
  %641 = getelementptr inbounds i8, ptr %634, i64 %638
  %642 = load i8, ptr %641, align 1, !tbaa !34
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %644, label %653

644:                                              ; preds = %637
  %645 = load ptr, ptr %635, align 8, !tbaa !179
  %646 = getelementptr inbounds i16, ptr %645, i64 %638
  %647 = load i16, ptr %646, align 2, !tbaa !138
  %648 = zext i16 %647 to i32
  %649 = mul i32 %639, %648
  %650 = lshr i32 %649, 8
  %651 = mul i32 %640, %648
  %652 = lshr i32 %651, 8
  br label %653

653:                                              ; preds = %637, %644
  %654 = phi i32 [ %652, %644 ], [ %640, %637 ]
  %655 = phi i32 [ %650, %644 ], [ %639, %637 ]
  %656 = add nuw nsw i64 %638, 1
  %657 = icmp eq i64 %656, %636
  br i1 %657, label %658, label %637, !llvm.loop !199

658:                                              ; preds = %653, %627
  %659 = phi i32 [ %630, %627 ], [ %654, %653 ]
  %660 = phi i32 [ %628, %627 ], [ %655, %653 ]
  %661 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %662 = load ptr, ptr %661, align 8, !tbaa !181
  %663 = getelementptr inbounds i16, ptr %662, i64 3
  %664 = load i16, ptr %663, align 2, !tbaa !138
  %665 = zext i16 %664 to i32
  %666 = mul i32 %659, %665
  %667 = icmp ugt i32 %666, 33553927
  br i1 %667, label %674, label %668

668:                                              ; preds = %658
  %669 = mul i32 %660, %665
  %670 = lshr i32 %669, 3
  %671 = shl nuw i32 %666, 7
  %672 = and i32 %671, -1024
  %673 = add i32 %672, %670
  br label %674

674:                                              ; preds = %668, %658, %623
  %675 = phi i32 [ %624, %623 ], [ %673, %668 ], [ 2147483647, %658 ]
  %676 = icmp ult i32 %675, %451
  br i1 %676, label %677, label %681

677:                                              ; preds = %482, %674, %461
  %678 = phi ptr [ %456, %461 ], [ %561, %674 ], [ %456, %482 ]
  %679 = phi i32 [ %451, %461 ], [ %675, %674 ], [ %451, %482 ]
  %680 = load ptr, ptr %678, align 8, !tbaa !156
  br label %681

681:                                              ; preds = %677, %674, %504
  %682 = phi i32 [ %451, %504 ], [ %451, %674 ], [ %679, %677 ]
  %683 = phi ptr [ %452, %504 ], [ %452, %674 ], [ %680, %677 ]
  %684 = icmp eq i8 %4, -128
  br i1 %684, label %685, label %746

685:                                              ; preds = %681
  %686 = getelementptr inbounds i8, ptr %17, i64 1
  %687 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %688 = load ptr, ptr %687, align 8, !tbaa !157
  %689 = getelementptr inbounds i8, ptr %15, i64 1
  %690 = zext nneg i32 %13 to i64
  %691 = getelementptr inbounds i8, ptr %688, i64 1
  %692 = icmp eq i8 %10, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %699, %685
  %694 = phi ptr [ %686, %685 ], [ %704, %699 ]
  %695 = phi ptr [ %689, %685 ], [ %706, %699 ]
  %696 = phi i64 [ 0, %685 ], [ %690, %699 ]
  %697 = phi ptr [ %691, %685 ], [ %710, %699 ]
  %698 = icmp ult i64 %696, %6
  br i1 %698, label %712, label %930

699:                                              ; preds = %685, %699
  %700 = phi ptr [ %710, %699 ], [ %691, %685 ]
  %701 = phi i64 [ %709, %699 ], [ 0, %685 ]
  %702 = phi ptr [ %706, %699 ], [ %689, %685 ]
  %703 = phi ptr [ %704, %699 ], [ %686, %685 ]
  %704 = getelementptr inbounds i8, ptr %703, i64 1
  %705 = load i8, ptr %703, align 1, !tbaa !34
  %706 = getelementptr inbounds i8, ptr %702, i64 1
  %707 = load i8, ptr %702, align 1, !tbaa !34
  %708 = sub i8 %705, %707
  store i8 %708, ptr %700, align 1, !tbaa !34
  %709 = add nuw nsw i64 %701, 1
  %710 = getelementptr inbounds i8, ptr %700, i64 1
  %711 = icmp eq i64 %709, %690
  br i1 %711, label %693, label %699, !llvm.loop !200

712:                                              ; preds = %693, %712
  %713 = phi i64 [ %744, %712 ], [ %696, %693 ]
  %714 = phi ptr [ %725, %712 ], [ %686, %693 ]
  %715 = phi ptr [ %722, %712 ], [ %689, %693 ]
  %716 = phi ptr [ %719, %712 ], [ %695, %693 ]
  %717 = phi ptr [ %743, %712 ], [ %697, %693 ]
  %718 = phi ptr [ %740, %712 ], [ %694, %693 ]
  %719 = getelementptr inbounds i8, ptr %716, i64 1
  %720 = load i8, ptr %716, align 1, !tbaa !34
  %721 = zext i8 %720 to i32
  %722 = getelementptr inbounds i8, ptr %715, i64 1
  %723 = load i8, ptr %715, align 1, !tbaa !34
  %724 = zext i8 %723 to i32
  %725 = getelementptr inbounds i8, ptr %714, i64 1
  %726 = load i8, ptr %714, align 1, !tbaa !34
  %727 = zext i8 %726 to i32
  %728 = sub nsw i32 %721, %724
  %729 = sub nsw i32 %727, %724
  %730 = tail call i32 @llvm.abs.i32(i32 %728, i1 true)
  %731 = tail call i32 @llvm.abs.i32(i32 %729, i1 true)
  %732 = add nsw i32 %729, %728
  %733 = tail call i32 @llvm.abs.i32(i32 %732, i1 true)
  %734 = icmp ugt i32 %730, %731
  %735 = icmp ugt i32 %730, %733
  %736 = select i1 %734, i1 true, i1 %735
  %737 = icmp ugt i32 %731, %733
  %738 = select i1 %737, i8 %723, i8 %720
  %739 = select i1 %736, i8 %738, i8 %726
  %740 = getelementptr inbounds i8, ptr %718, i64 1
  %741 = load i8, ptr %718, align 1, !tbaa !34
  %742 = sub i8 %741, %739
  %743 = getelementptr inbounds i8, ptr %717, i64 1
  store i8 %742, ptr %717, align 1, !tbaa !34
  %744 = add nuw i64 %713, 1
  %745 = icmp eq i64 %744, %6
  br i1 %745, label %930, label %712, !llvm.loop !201

746:                                              ; preds = %681
  %747 = icmp sgt i8 %4, -1
  br i1 %747, label %933, label %748

748:                                              ; preds = %746
  %749 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  %750 = load i8, ptr %749, align 8, !tbaa !177
  %751 = icmp eq i8 %750, 2
  br i1 %751, label %752, label %799

752:                                              ; preds = %748
  %753 = and i32 %682, 65535
  %754 = lshr i32 %682, 10
  %755 = and i32 %754, 4194240
  %756 = icmp eq i8 %8, 0
  br i1 %756, label %783, label %757

757:                                              ; preds = %752
  %758 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %759 = load ptr, ptr %758, align 8, !tbaa !178
  %760 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %761 = zext i8 %8 to i64
  br label %762

762:                                              ; preds = %757, %778
  %763 = phi i64 [ 0, %757 ], [ %781, %778 ]
  %764 = phi i32 [ %753, %757 ], [ %780, %778 ]
  %765 = phi i32 [ %755, %757 ], [ %779, %778 ]
  %766 = getelementptr inbounds i8, ptr %759, i64 %763
  %767 = load i8, ptr %766, align 1, !tbaa !34
  %768 = icmp eq i8 %767, 4
  br i1 %768, label %769, label %778

769:                                              ; preds = %762
  %770 = load ptr, ptr %760, align 8, !tbaa !184
  %771 = getelementptr inbounds i16, ptr %770, i64 %763
  %772 = load i16, ptr %771, align 2, !tbaa !138
  %773 = zext i16 %772 to i32
  %774 = mul i32 %764, %773
  %775 = lshr i32 %774, 8
  %776 = mul i32 %765, %773
  %777 = lshr i32 %776, 8
  br label %778

778:                                              ; preds = %762, %769
  %779 = phi i32 [ %777, %769 ], [ %765, %762 ]
  %780 = phi i32 [ %775, %769 ], [ %764, %762 ]
  %781 = add nuw nsw i64 %763, 1
  %782 = icmp eq i64 %781, %761
  br i1 %782, label %783, label %762, !llvm.loop !202

783:                                              ; preds = %778, %752
  %784 = phi i32 [ %755, %752 ], [ %779, %778 ]
  %785 = phi i32 [ %753, %752 ], [ %780, %778 ]
  %786 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %787 = load ptr, ptr %786, align 8, !tbaa !186
  %788 = getelementptr inbounds i16, ptr %787, i64 4
  %789 = load i16, ptr %788, align 2, !tbaa !138
  %790 = zext i16 %789 to i32
  %791 = mul i32 %784, %790
  %792 = icmp ugt i32 %791, 33553927
  br i1 %792, label %799, label %793

793:                                              ; preds = %783
  %794 = mul i32 %785, %790
  %795 = lshr i32 %794, 3
  %796 = shl nuw i32 %791, 7
  %797 = and i32 %796, -1024
  %798 = add i32 %797, %795
  br label %799

799:                                              ; preds = %793, %783, %748
  %800 = phi i32 [ %682, %748 ], [ %798, %793 ], [ 2147483647, %783 ]
  %801 = getelementptr inbounds i8, ptr %17, i64 1
  %802 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %803 = load ptr, ptr %802, align 8, !tbaa !157
  %804 = getelementptr inbounds i8, ptr %15, i64 1
  %805 = zext nneg i32 %13 to i64
  %806 = getelementptr inbounds i8, ptr %803, i64 1
  %807 = icmp eq i8 %10, 0
  br i1 %807, label %808, label %815

808:                                              ; preds = %815, %799
  %809 = phi ptr [ %801, %799 ], [ %821, %815 ]
  %810 = phi ptr [ %804, %799 ], [ %823, %815 ]
  %811 = phi i32 [ 0, %799 ], [ %830, %815 ]
  %812 = phi i64 [ 0, %799 ], [ %805, %815 ]
  %813 = phi ptr [ %806, %799 ], [ %832, %815 ]
  %814 = icmp ult i64 %812, %6
  br i1 %814, label %834, label %876

815:                                              ; preds = %799, %815
  %816 = phi ptr [ %832, %815 ], [ %806, %799 ]
  %817 = phi i64 [ %831, %815 ], [ 0, %799 ]
  %818 = phi i32 [ %830, %815 ], [ 0, %799 ]
  %819 = phi ptr [ %823, %815 ], [ %804, %799 ]
  %820 = phi ptr [ %821, %815 ], [ %801, %799 ]
  %821 = getelementptr inbounds i8, ptr %820, i64 1
  %822 = load i8, ptr %820, align 1, !tbaa !34
  %823 = getelementptr inbounds i8, ptr %819, i64 1
  %824 = load i8, ptr %819, align 1, !tbaa !34
  %825 = sub i8 %822, %824
  store i8 %825, ptr %816, align 1, !tbaa !34
  %826 = zext i8 %825 to i32
  %827 = sub nuw nsw i32 256, %826
  %828 = icmp slt i8 %825, 0
  %829 = select i1 %828, i32 %827, i32 %826
  %830 = add i32 %829, %818
  %831 = add nuw nsw i64 %817, 1
  %832 = getelementptr inbounds i8, ptr %816, i64 1
  %833 = icmp eq i64 %831, %805
  br i1 %833, label %808, label %815, !llvm.loop !203

834:                                              ; preds = %808, %834
  %835 = phi i64 [ %873, %834 ], [ %812, %808 ]
  %836 = phi i32 [ %866, %834 ], [ %811, %808 ]
  %837 = phi ptr [ %870, %834 ], [ %801, %808 ]
  %838 = phi ptr [ %871, %834 ], [ %804, %808 ]
  %839 = phi ptr [ %872, %834 ], [ %810, %808 ]
  %840 = phi ptr [ %868, %834 ], [ %813, %808 ]
  %841 = phi ptr [ %869, %834 ], [ %809, %808 ]
  %842 = load i8, ptr %839, align 1, !tbaa !34
  %843 = zext i8 %842 to i32
  %844 = load i8, ptr %838, align 1, !tbaa !34
  %845 = zext i8 %844 to i32
  %846 = load i8, ptr %837, align 1, !tbaa !34
  %847 = zext i8 %846 to i32
  %848 = sub nsw i32 %843, %845
  %849 = sub nsw i32 %847, %845
  %850 = tail call i32 @llvm.abs.i32(i32 %848, i1 true)
  %851 = tail call i32 @llvm.abs.i32(i32 %849, i1 true)
  %852 = add nsw i32 %849, %848
  %853 = tail call i32 @llvm.abs.i32(i32 %852, i1 true)
  %854 = icmp ugt i32 %850, %851
  %855 = icmp ugt i32 %850, %853
  %856 = select i1 %854, i1 true, i1 %855
  %857 = icmp ugt i32 %851, %853
  %858 = select i1 %857, i8 %844, i8 %842
  %859 = select i1 %856, i8 %858, i8 %846
  %860 = load i8, ptr %841, align 1, !tbaa !34
  %861 = sub i8 %860, %859
  store i8 %861, ptr %840, align 1, !tbaa !34
  %862 = zext i8 %861 to i32
  %863 = sub nuw nsw i32 256, %862
  %864 = icmp slt i8 %861, 0
  %865 = select i1 %864, i32 %863, i32 %862
  %866 = add i32 %865, %836
  %867 = icmp ule i32 %866, %800
  %868 = getelementptr inbounds i8, ptr %840, i64 1
  %869 = getelementptr inbounds i8, ptr %841, i64 1
  %870 = getelementptr inbounds i8, ptr %837, i64 1
  %871 = getelementptr inbounds i8, ptr %838, i64 1
  %872 = getelementptr inbounds i8, ptr %839, i64 1
  %873 = add nuw i64 %835, 1
  %874 = icmp ult i64 %873, %6
  %875 = select i1 %867, i1 %874, i1 false
  br i1 %875, label %834, label %876, !llvm.loop !204

876:                                              ; preds = %834, %808
  %877 = phi i32 [ %811, %808 ], [ %866, %834 ]
  %878 = load i8, ptr %749, align 8, !tbaa !177
  %879 = icmp eq i8 %878, 2
  br i1 %879, label %880, label %927

880:                                              ; preds = %876
  %881 = and i32 %877, 65535
  %882 = lshr i32 %877, 10
  %883 = and i32 %882, 4194240
  %884 = icmp eq i8 %8, 0
  br i1 %884, label %911, label %885

885:                                              ; preds = %880
  %886 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %887 = load ptr, ptr %886, align 8, !tbaa !178
  %888 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %889 = zext i8 %8 to i64
  br label %890

890:                                              ; preds = %885, %906
  %891 = phi i64 [ 0, %885 ], [ %909, %906 ]
  %892 = phi i32 [ %881, %885 ], [ %908, %906 ]
  %893 = phi i32 [ %883, %885 ], [ %907, %906 ]
  %894 = getelementptr inbounds i8, ptr %887, i64 %891
  %895 = load i8, ptr %894, align 1, !tbaa !34
  %896 = icmp eq i8 %895, 4
  br i1 %896, label %897, label %906

897:                                              ; preds = %890
  %898 = load ptr, ptr %888, align 8, !tbaa !179
  %899 = getelementptr inbounds i16, ptr %898, i64 %891
  %900 = load i16, ptr %899, align 2, !tbaa !138
  %901 = zext i16 %900 to i32
  %902 = mul i32 %892, %901
  %903 = lshr i32 %902, 8
  %904 = mul i32 %893, %901
  %905 = lshr i32 %904, 8
  br label %906

906:                                              ; preds = %890, %897
  %907 = phi i32 [ %905, %897 ], [ %893, %890 ]
  %908 = phi i32 [ %903, %897 ], [ %892, %890 ]
  %909 = add nuw nsw i64 %891, 1
  %910 = icmp eq i64 %909, %889
  br i1 %910, label %911, label %890, !llvm.loop !205

911:                                              ; preds = %906, %880
  %912 = phi i32 [ %883, %880 ], [ %907, %906 ]
  %913 = phi i32 [ %881, %880 ], [ %908, %906 ]
  %914 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %915 = load ptr, ptr %914, align 8, !tbaa !181
  %916 = getelementptr inbounds i16, ptr %915, i64 4
  %917 = load i16, ptr %916, align 2, !tbaa !138
  %918 = zext i16 %917 to i32
  %919 = mul i32 %912, %918
  %920 = icmp ugt i32 %919, 33553927
  br i1 %920, label %927, label %921

921:                                              ; preds = %911
  %922 = mul i32 %913, %918
  %923 = lshr i32 %922, 3
  %924 = shl nuw i32 %919, 7
  %925 = and i32 %924, -1024
  %926 = add i32 %925, %923
  br label %927

927:                                              ; preds = %921, %911, %876
  %928 = phi i32 [ %877, %876 ], [ %926, %921 ], [ 2147483647, %911 ]
  %929 = icmp ult i32 %928, %682
  br i1 %929, label %930, label %933

930:                                              ; preds = %712, %927, %693
  %931 = phi ptr [ %687, %693 ], [ %802, %927 ], [ %687, %712 ]
  %932 = load ptr, ptr %931, align 8, !tbaa !157
  br label %933

933:                                              ; preds = %930, %292, %927, %746
  %934 = phi ptr [ %683, %746 ], [ %683, %927 ], [ %294, %292 ], [ %932, %930 ]
  %935 = load i64, ptr %5, align 8, !tbaa !174
  %936 = add i64 %935, 1
  tail call fastcc void @png_write_filtered_row(ptr noundef nonnull %0, ptr noundef %934, i64 noundef %936) #13
  %937 = load i8, ptr %7, align 1, !tbaa !175
  %938 = icmp eq i8 %937, 0
  br i1 %938, label %960, label %939

939:                                              ; preds = %933
  %940 = icmp ugt i8 %8, 1
  br i1 %940, label %941, label %954

941:                                              ; preds = %939
  %942 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %943 = zext i8 %8 to i64
  br label %944

944:                                              ; preds = %941, %944
  %945 = phi i64 [ 1, %941 ], [ %950, %944 ]
  %946 = load ptr, ptr %942, align 8, !tbaa !178
  %947 = getelementptr i8, ptr %946, i64 %945
  %948 = getelementptr i8, ptr %947, i64 -1
  %949 = load i8, ptr %948, align 1, !tbaa !34
  store i8 %949, ptr %947, align 1, !tbaa !34
  %950 = add nuw nsw i64 %945, 1
  %951 = icmp eq i64 %950, %943
  br i1 %951, label %952, label %944, !llvm.loop !206

952:                                              ; preds = %944
  %953 = zext i8 %8 to i64
  br label %954

954:                                              ; preds = %939, %952
  %955 = phi i64 [ %953, %952 ], [ 1, %939 ]
  %956 = load i8, ptr %934, align 1, !tbaa !34
  %957 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %958 = load ptr, ptr %957, align 8, !tbaa !178
  %959 = getelementptr inbounds i8, ptr %958, i64 %955
  store i8 %956, ptr %959, align 1, !tbaa !34
  br label %960

960:                                              ; preds = %954, %933
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_write_filtered_row(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 !PGOFuncName !207 {
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  store ptr %1, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 1
  store i32 0, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  br label %9

9:                                                ; preds = %36, %3
  %10 = phi i32 [ 0, %3 ], [ %38, %36 ]
  %11 = phi i64 [ %2, %3 ], [ %20, %36 ]
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = icmp ugt i64 %11, 4294967295
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  store i32 -1, ptr %5, align 8, !tbaa !105
  %16 = add i64 %11, -4294967295
  br label %19

17:                                               ; preds = %13
  %18 = trunc i64 %11 to i32
  store i32 %18, ptr %5, align 8, !tbaa !105
  br label %19

19:                                               ; preds = %15, %17, %9
  %20 = phi i64 [ %16, %15 ], [ 0, %17 ], [ %11, %9 ]
  %21 = tail call i32 @deflate(ptr noundef nonnull %4, i32 noundef 0) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %25) #14
  unreachable

28:                                               ; preds = %23
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #14
  unreachable

29:                                               ; preds = %19
  %30 = load i32, ptr %6, align 8, !tbaa !94
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load ptr, ptr %7, align 8, !tbaa !91
  %34 = load i32, ptr %8, align 8, !tbaa !93
  %35 = zext i32 %34 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %33, i64 noundef %35) #13
  br label %36

36:                                               ; preds = %32, %29
  %37 = icmp eq i64 %20, 0
  %38 = load i32, ptr %5, align 8, !tbaa !105
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %9, !llvm.loop !208

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %43 = load ptr, ptr %42, align 8, !tbaa !154
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %47 = load ptr, ptr %46, align 8, !tbaa !152
  store ptr %47, ptr %42, align 8, !tbaa !154
  store ptr %43, ptr %46, align 8, !tbaa !152
  br label %48

48:                                               ; preds = %45, %41
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 73
  %50 = load i32, ptr %49, align 4, !tbaa !209
  %51 = freeze i32 %50
  %52 = add i32 %51, 1
  store i32 %52, ptr %49, align 4, !tbaa !209
  %53 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 72
  %54 = load i32, ptr %53, align 8, !tbaa !210
  %55 = add i32 %54, -1
  %56 = icmp ult i32 %55, %52
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  tail call void @png_write_flush(ptr noundef nonnull %0) #12
  br label %58

58:                                               ; preds = %57, %48
  ret void
}

; Function Attrs: optsize
declare void @png_reset_crc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_warning_parameter_signed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @deflateReset(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_warning_parameter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @png_write_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind optsize }
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
!49 = !{!"pngwutil.c:png_write_chunk_header"}
!50 = !{!38, !40, i64 496}
!51 = !{!38, !40, i64 564}
!52 = !{!"pngwutil.c:png_write_complete_chunk"}
!53 = !{!38, !35, i64 595}
!54 = !{!38, !40, i64 1032}
!55 = !{!38, !35, i64 592}
!56 = !{!38, !35, i64 591}
!57 = !{!38, !35, i64 588}
!58 = !{!38, !35, i64 1036}
!59 = !{!38, !35, i64 1096}
!60 = !{!38, !40, i64 464}
!61 = !{!38, !40, i64 468}
!62 = !{!38, !35, i64 594}
!63 = !{!38, !42, i64 480}
!64 = !{!38, !40, i64 476}
!65 = !{!38, !35, i64 593}
!66 = !{!38, !35, i64 596}
!67 = !{!38, !39, i64 360}
!68 = !{!38, !39, i64 368}
!69 = !{!38, !39, i64 376}
!70 = !{!38, !35, i64 590}
!71 = !{!38, !40, i64 288}
!72 = !{!38, !40, i64 440}
!73 = !{!38, !40, i64 424}
!74 = !{!38, !40, i64 436}
!75 = !{!38, !40, i64 432}
!76 = !{!38, !40, i64 428}
!77 = !{!38, !40, i64 460}
!78 = !{!38, !40, i64 444}
!79 = !{!38, !40, i64 456}
!80 = !{!38, !40, i64 452}
!81 = !{!38, !40, i64 448}
!82 = !{!38, !40, i64 420}
!83 = !{!38, !43, i64 576}
!84 = !{!85, !35, i64 0}
!85 = !{!"png_color_struct", !35, i64 0, !35, i64 1, !35, i64 2}
!86 = !{!85, !35, i64 1}
!87 = !{!85, !35, i64 2}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = distinct !{!90, !89}
!91 = !{!38, !39, i64 408}
!92 = !{!38, !39, i64 320}
!93 = !{!38, !40, i64 416}
!94 = !{!38, !40, i64 328}
!95 = !{i64 0, i64 80}
!96 = !{!39, !39, i64 0}
!97 = distinct !{!97, !89}
!98 = distinct !{!98, !89}
!99 = distinct !{!99, !89}
!100 = distinct !{!100, !89}
!101 = !{!"pngwutil.c:png_text_compress"}
!102 = !{!103, !39, i64 0}
!103 = !{!"", !39, i64 0, !42, i64 8, !40, i64 16, !40, i64 20, !39, i64 24}
!104 = !{!103, !42, i64 8}
!105 = !{!38, !40, i64 304}
!106 = !{!38, !39, i64 296}
!107 = !{!38, !39, i64 344}
!108 = !{!103, !40, i64 16}
!109 = !{!103, !40, i64 20}
!110 = !{!103, !39, i64 24}
!111 = distinct !{!111, !89}
!112 = distinct !{!112, !89}
!113 = !{!"pngwutil.c:png_write_compressed_data_out"}
!114 = distinct !{!114, !89}
!115 = distinct !{!115, !89}
!116 = !{!117, !35, i64 8}
!117 = !{!"png_sPLT_struct", !39, i64 0, !35, i64 8, !39, i64 16, !40, i64 24}
!118 = !{!117, !40, i64 24}
!119 = !{!117, !39, i64 0}
!120 = !{!117, !39, i64 16}
!121 = !{!122, !43, i64 0}
!122 = !{!"png_sPLT_entry_struct", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8}
!123 = !{!122, !43, i64 2}
!124 = !{!122, !43, i64 4}
!125 = !{!122, !43, i64 6}
!126 = !{!122, !43, i64 8}
!127 = distinct !{!127, !89}
!128 = !{!45, !35, i64 0}
!129 = !{!45, !35, i64 1}
!130 = !{!45, !35, i64 2}
!131 = !{!45, !35, i64 3}
!132 = !{!45, !35, i64 4}
!133 = !{!44, !43, i64 8}
!134 = !{!44, !43, i64 2}
!135 = !{!44, !43, i64 4}
!136 = !{!44, !43, i64 6}
!137 = !{!44, !35, i64 0}
!138 = !{!43, !43, i64 0}
!139 = distinct !{!139, !89}
!140 = !{!42, !42, i64 0}
!141 = distinct !{!141, !89}
!142 = distinct !{!142, !89}
!143 = !{!144, !35, i64 2}
!144 = !{!"png_time_struct", !43, i64 0, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6}
!145 = !{!144, !35, i64 3}
!146 = !{!144, !35, i64 4}
!147 = !{!144, !35, i64 6}
!148 = !{!144, !43, i64 0}
!149 = !{!144, !35, i64 5}
!150 = !{!38, !35, i64 599}
!151 = !{!38, !35, i64 598}
!152 = !{!38, !39, i64 512}
!153 = !{!38, !39, i64 520}
!154 = !{!38, !39, i64 504}
!155 = !{!38, !39, i64 528}
!156 = !{!38, !39, i64 536}
!157 = !{!38, !39, i64 544}
!158 = !{!38, !40, i64 292}
!159 = !{!38, !40, i64 472}
!160 = !{!"pngwutil.c:png_zlib_claim"}
!161 = !{!38, !40, i64 492}
!162 = !{!38, !35, i64 589}
!163 = distinct !{!163, !89}
!164 = distinct !{!164, !89}
!165 = !{!38, !40, i64 384}
!166 = !{!"pngwutil.c:png_zlib_release"}
!167 = !{!168, !35, i64 19}
!168 = !{!"png_row_info_struct", !40, i64 0, !42, i64 8, !35, i64 16, !35, i64 17, !35, i64 18, !35, i64 19}
!169 = !{!168, !40, i64 0}
!170 = distinct !{!170, !89}
!171 = distinct !{!171, !89}
!172 = distinct !{!172, !89}
!173 = distinct !{!173, !89}
!174 = !{!168, !42, i64 8}
!175 = !{!38, !35, i64 905}
!176 = distinct !{!176, !89}
!177 = !{!38, !35, i64 904}
!178 = !{!38, !39, i64 912}
!179 = !{!38, !39, i64 920}
!180 = distinct !{!180, !89}
!181 = !{!38, !39, i64 936}
!182 = distinct !{!182, !89}
!183 = distinct !{!183, !89}
!184 = !{!38, !39, i64 928}
!185 = distinct !{!185, !89}
!186 = !{!38, !39, i64 944}
!187 = distinct !{!187, !89}
!188 = distinct !{!188, !89}
!189 = distinct !{!189, !89}
!190 = distinct !{!190, !89}
!191 = distinct !{!191, !89}
!192 = distinct !{!192, !89}
!193 = distinct !{!193, !89}
!194 = distinct !{!194, !89}
!195 = distinct !{!195, !89}
!196 = distinct !{!196, !89}
!197 = distinct !{!197, !89}
!198 = distinct !{!198, !89}
!199 = distinct !{!199, !89}
!200 = distinct !{!200, !89}
!201 = distinct !{!201, !89}
!202 = distinct !{!202, !89}
!203 = distinct !{!203, !89}
!204 = distinct !{!204, !89}
!205 = distinct !{!205, !89}
!206 = distinct !{!206, !89}
!207 = !{!"pngwutil.c:png_write_filtered_row"}
!208 = distinct !{!208, !89}
!209 = !{!38, !40, i64 652}
!210 = !{!38, !40, i64 648}
