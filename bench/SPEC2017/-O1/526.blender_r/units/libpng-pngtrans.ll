; ModuleID = 'libpng/pngtrans.c'
source_filename = "libpng/pngtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@onebppswaptable = internal unnamed_addr constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16
@twobppswaptable = internal unnamed_addr constant [256 x i8] c"\00@\80\C0\10P\90\D0 `\A0\E00p\B0\F0\04D\84\C4\14T\94\D4$d\A4\E44t\B4\F4\08H\88\C8\18X\98\D8(h\A8\E88x\B8\F8\0CL\8C\CC\1C\\\9C\DC,l\AC\EC<|\BC\FC\01A\81\C1\11Q\91\D1!a\A1\E11q\B1\F1\05E\85\C5\15U\95\D5%e\A5\E55u\B5\F5\09I\89\C9\19Y\99\D9)i\A9\E99y\B9\F9\0DM\8D\CD\1D]\9D\DD-m\AD\ED=}\BD\FD\02B\82\C2\12R\92\D2\22b\A2\E22r\B2\F2\06F\86\C6\16V\96\D6&f\A6\E66v\B6\F6\0AJ\8A\CA\1AZ\9A\DA*j\AA\EA:z\BA\FA\0EN\8E\CE\1E^\9E\DE.n\AE\EE>~\BE\FE\03C\83\C3\13S\93\D3#c\A3\E33s\B3\F3\07G\87\C7\17W\97\D7'g\A7\E77w\B7\F7\0BK\8B\CB\1B[\9B\DB+k\AB\EB;{\BB\FB\0FO\8F\CF\1F_\9F\DF/o\AF\EF?\7F\BF\FF", align 16
@fourbppswaptable = internal unnamed_addr constant [256 x i8] c"\00\10 0@P`p\80\90\A0\B0\C0\D0\E0\F0\01\11!1AQaq\81\91\A1\B1\C1\D1\E1\F1\02\12\222BRbr\82\92\A2\B2\C2\D2\E2\F2\03\13#3CScs\83\93\A3\B3\C3\D3\E3\F3\04\14$4DTdt\84\94\A4\B4\C4\D4\E4\F4\05\15%5EUeu\85\95\A5\B5\C5\D5\E5\F5\06\16&6FVfv\86\96\A6\B6\C6\D6\E6\F6\07\17'7GWgw\87\97\A7\B7\C7\D7\E7\F7\08\18(8HXhx\88\98\A8\B8\C8\D8\E8\F8\09\19)9IYiy\89\99\A9\B9\C9\D9\E9\F9\0A\1A*:JZjz\8A\9A\AA\BA\CA\DA\EA\FA\0B\1B+;K[k{\8B\9B\AB\BB\CB\DB\EB\FB\0C\1C,<L\\l|\8C\9C\AC\BC\CC\DC\EC\FC\0D\1D-=M]m}\8D\9D\AD\BD\CD\DD\ED\FD\0E\1E.>N^n~\8E\9E\AE\BE\CE\DE\EE\FE\0F\1F/?O_o\7F\8F\9F\AF\BF\CF\DF\EF\FF", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_bgr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = or i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_swap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %5 = load i8, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i8 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = or i32 %9, 16
  store i32 %10, ptr %8, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %1, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_packing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %5 = load i8, ptr %4, align 8, !tbaa !46
  %6 = icmp ult i8 %5, 8
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  store i8 8, ptr %11, align 1, !tbaa !47
  br label %12

12:                                               ; preds = %1, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_packswap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %5 = load i8, ptr %4, align 8, !tbaa !46
  %6 = icmp ult i8 %5, 8
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = or i32 %9, 65536
  store i32 %10, ptr %8, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %1, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_shift(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = or i32 %6, 8
  store i32 %7, ptr %5, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %8, ptr noundef nonnull align 1 dereferenceable(5) %1, i64 5, i1 false), !tbaa.struct !48
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @png_set_interlace_handling(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %5 = load i8, ptr %4, align 4, !tbaa !50
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ 7, %7 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_filler(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = or i32 %7, 32768
  store i32 %8, ptr %6, align 4, !tbaa !34
  %9 = trunc i32 %1 to i16
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 66
  store i16 %9, ptr %10, align 2, !tbaa !51
  %11 = icmp eq i32 %2, 1
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = and i32 %13, -129
  %15 = select i1 %11, i32 128, i32 0
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %18 = load i8, ptr %17, align 1, !tbaa !53
  switch i8 %18, label %26 [
    i8 2, label %23
    i8 0, label %19
  ]

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %21 = load i8, ptr %20, align 8, !tbaa !46
  %22 = icmp ugt i8 %21, 7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %5
  %24 = phi i8 [ 4, %5 ], [ 2, %19 ]
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  store i8 %24, ptr %25, align 4, !tbaa !54
  br label %26

26:                                               ; preds = %23, %5, %3, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_add_alpha(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = or i32 %7, 32768
  store i32 %8, ptr %6, align 4, !tbaa !34
  %9 = trunc i32 %1 to i16
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 66
  store i16 %9, ptr %10, align 2, !tbaa !51
  %11 = icmp eq i32 %2, 1
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = and i32 %13, -129
  %15 = select i1 %11, i32 128, i32 0
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %18 = load i8, ptr %17, align 1, !tbaa !53
  switch i8 %18, label %26 [
    i8 2, label %23
    i8 0, label %19
  ]

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 57
  %21 = load i8, ptr %20, align 8, !tbaa !46
  %22 = icmp ugt i8 %21, 7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %5
  %24 = phi i8 [ 4, %5 ], [ 2, %19 ]
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  store i8 %24, ptr %25, align 4, !tbaa !54
  br label %26

26:                                               ; preds = %23, %5, %19
  %27 = or i32 %7, 16809984
  store i32 %27, ptr %6, align 4, !tbaa !34
  br label %28

28:                                               ; preds = %3, %26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_swap_alpha(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = or i32 %5, 131072
  store i32 %6, ptr %4, align 4, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_invert_alpha(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = or i32 %5, 524288
  store i32 %6, ptr %4, align 4, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_invert_mono(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = or i32 %5, 32
  store i32 %6, ptr %4, align 4, !tbaa !34
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_invert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !55
  switch i8 %4, label %54 [
    i8 0, label %5
    i8 4, label %17
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %14, %9 ], [ %1, %5 ]
  %11 = phi i64 [ %15, %9 ], [ 0, %5 ]
  %12 = load i8, ptr %10, align 1, !tbaa !49
  %13 = xor i8 %12, -1
  store i8 %13, ptr %10, align 1, !tbaa !49
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = add nuw i64 %11, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %54, label %9, !llvm.loop !58

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !61
  %20 = icmp eq i8 %19, 8
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !57
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %31, %25 ], [ 0, %21 ]
  %27 = phi ptr [ %30, %25 ], [ %1, %21 ]
  %28 = load i8, ptr %27, align 1, !tbaa !49
  %29 = xor i8 %28, -1
  store i8 %29, ptr %27, align 1, !tbaa !49
  %30 = getelementptr inbounds i8, ptr %27, i64 2
  %31 = add nuw i64 %26, 2
  %32 = icmp ult i64 %31, %23
  br i1 %32, label %25, label %54, !llvm.loop !62

33:                                               ; preds = %17
  %34 = icmp eq i8 %4, 4
  br i1 %34, label %35, label %54

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !61
  %38 = icmp eq i8 %37, 16
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !57
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ %52, %43 ], [ 0, %39 ]
  %45 = phi ptr [ %51, %43 ], [ %1, %39 ]
  %46 = load i8, ptr %45, align 1, !tbaa !49
  %47 = xor i8 %46, -1
  store i8 %47, ptr %45, align 1, !tbaa !49
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !49
  %50 = xor i8 %49, -1
  store i8 %50, ptr %48, align 1, !tbaa !49
  %51 = getelementptr inbounds i8, ptr %45, i64 4
  %52 = add nuw i64 %44, 4
  %53 = icmp ult i64 %52, %41
  br i1 %53, label %43, label %54, !llvm.loop !63

54:                                               ; preds = %43, %25, %9, %39, %21, %5, %2, %35, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_swap(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !61
  %5 = icmp eq i8 %4, 16
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 2, !tbaa !65
  %10 = zext i8 %9 to i32
  %11 = mul i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %20, %13 ], [ %1, %6 ]
  %15 = phi i32 [ %19, %13 ], [ 0, %6 ]
  %16 = load i8, ptr %14, align 1, !tbaa !49
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !49
  store i8 %18, ptr %14, align 1, !tbaa !49
  store i8 %16, ptr %17, align 1, !tbaa !49
  %19 = add nuw i32 %15, 1
  %20 = getelementptr inbounds i8, ptr %14, i64 2
  %21 = icmp eq i32 %19, %11
  br i1 %21, label %22, label %13, !llvm.loop !66

22:                                               ; preds = %13, %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_packswap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !61
  %5 = icmp ult i8 %4, 8
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  switch i8 %4, label %23 [
    i8 1, label %12
    i8 2, label %10
    i8 4, label %11
  ]

10:                                               ; preds = %6
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %6, %10, %11
  %13 = phi ptr [ @twobppswaptable, %10 ], [ @fourbppswaptable, %11 ], [ @onebppswaptable, %6 ]
  %14 = icmp sgt i64 %8, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %21, %15 ], [ %1, %12 ]
  %17 = load i8, ptr %16, align 1, !tbaa !49
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i8, ptr %13, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !49
  store i8 %20, ptr %16, align 1, !tbaa !49
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  %22 = icmp ult ptr %21, %9
  br i1 %22, label %15, label %23, !llvm.loop !67

23:                                               ; preds = %15, %12, %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_strip_channel(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 4
  %8 = load i8, ptr %7, align 2, !tbaa !65
  switch i8 %8, label %117 [
    i8 2, label %9
    i8 4, label %50
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !61
  switch i8 %11, label %117 [
    i8 8, label %12
    i8 16, label %26
  ]

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = getelementptr inbounds i8, ptr %1, i64 2
  %16 = select i1 %13, ptr %14, ptr %1
  %17 = select i1 %13, ptr %15, ptr %14
  %18 = icmp ult ptr %17, %6
  br i1 %18, label %19, label %43

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %24, %19 ], [ %17, %12 ]
  %21 = phi ptr [ %23, %19 ], [ %16, %12 ]
  %22 = load i8, ptr %20, align 1, !tbaa !49
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %22, ptr %21, align 1, !tbaa !49
  %24 = getelementptr inbounds i8, ptr %20, i64 2
  %25 = icmp ult ptr %24, %6
  br i1 %25, label %19, label %43, !llvm.loop !68

26:                                               ; preds = %9
  %27 = icmp eq i32 %2, 0
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = getelementptr inbounds i8, ptr %1, i64 4
  %30 = select i1 %27, ptr %28, ptr %1
  %31 = select i1 %27, ptr %29, ptr %28
  %32 = icmp ult ptr %31, %6
  br i1 %32, label %33, label %43

33:                                               ; preds = %26, %33
  %34 = phi ptr [ %41, %33 ], [ %31, %26 ]
  %35 = phi ptr [ %40, %33 ], [ %30, %26 ]
  %36 = getelementptr inbounds i8, ptr %34, i64 1
  %37 = load i8, ptr %34, align 1, !tbaa !49
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 %37, ptr %35, align 1, !tbaa !49
  %39 = load i8, ptr %36, align 1, !tbaa !49
  %40 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 %39, ptr %38, align 1, !tbaa !49
  %41 = getelementptr inbounds i8, ptr %34, i64 4
  %42 = icmp ult ptr %41, %6
  br i1 %42, label %33, label %43, !llvm.loop !69

43:                                               ; preds = %33, %19, %26, %12
  %44 = phi ptr [ %16, %12 ], [ %30, %26 ], [ %23, %19 ], [ %40, %33 ]
  %45 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %11, ptr %45, align 1, !tbaa !70
  store i8 1, ptr %7, align 2, !tbaa !65
  %46 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %47 = load i8, ptr %46, align 8, !tbaa !55
  %48 = icmp eq i8 %47, 4
  br i1 %48, label %49, label %112

49:                                               ; preds = %43
  store i8 0, ptr %46, align 8, !tbaa !55
  br label %112

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !61
  switch i8 %52, label %117 [
    i8 8, label %53
    i8 16, label %74
  ]

53:                                               ; preds = %50
  %54 = icmp eq i32 %2, 0
  %55 = select i1 %54, i64 3, i64 0
  %56 = getelementptr inbounds i8, ptr %1, i64 %55
  %57 = select i1 %54, i64 4, i64 1
  %58 = icmp slt i64 %57, %5
  br i1 %58, label %59, label %104

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %1, i64 %57
  br label %61

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %72, %61 ], [ %60, %59 ]
  %63 = phi ptr [ %71, %61 ], [ %56, %59 ]
  %64 = getelementptr inbounds i8, ptr %62, i64 1
  %65 = load i8, ptr %62, align 1, !tbaa !49
  %66 = getelementptr inbounds i8, ptr %63, i64 1
  store i8 %65, ptr %63, align 1, !tbaa !49
  %67 = getelementptr inbounds i8, ptr %62, i64 2
  %68 = load i8, ptr %64, align 1, !tbaa !49
  %69 = getelementptr inbounds i8, ptr %63, i64 2
  store i8 %68, ptr %66, align 1, !tbaa !49
  %70 = load i8, ptr %67, align 1, !tbaa !49
  %71 = getelementptr inbounds i8, ptr %63, i64 3
  store i8 %70, ptr %69, align 1, !tbaa !49
  %72 = getelementptr inbounds i8, ptr %62, i64 4
  %73 = icmp ult ptr %72, %6
  br i1 %73, label %61, label %104, !llvm.loop !71

74:                                               ; preds = %50
  %75 = icmp eq i32 %2, 0
  %76 = select i1 %75, i64 6, i64 0
  %77 = getelementptr inbounds i8, ptr %1, i64 %76
  %78 = select i1 %75, i64 8, i64 2
  %79 = icmp slt i64 %78, %5
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = getelementptr inbounds i8, ptr %1, i64 %78
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi ptr [ %102, %82 ], [ %81, %80 ]
  %84 = phi ptr [ %101, %82 ], [ %77, %80 ]
  %85 = getelementptr inbounds i8, ptr %83, i64 1
  %86 = load i8, ptr %83, align 1, !tbaa !49
  %87 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %86, ptr %84, align 1, !tbaa !49
  %88 = getelementptr inbounds i8, ptr %83, i64 2
  %89 = load i8, ptr %85, align 1, !tbaa !49
  %90 = getelementptr inbounds i8, ptr %84, i64 2
  store i8 %89, ptr %87, align 1, !tbaa !49
  %91 = getelementptr inbounds i8, ptr %83, i64 3
  %92 = load i8, ptr %88, align 1, !tbaa !49
  %93 = getelementptr inbounds i8, ptr %84, i64 3
  store i8 %92, ptr %90, align 1, !tbaa !49
  %94 = getelementptr inbounds i8, ptr %83, i64 4
  %95 = load i8, ptr %91, align 1, !tbaa !49
  %96 = getelementptr inbounds i8, ptr %84, i64 4
  store i8 %95, ptr %93, align 1, !tbaa !49
  %97 = getelementptr inbounds i8, ptr %83, i64 5
  %98 = load i8, ptr %94, align 1, !tbaa !49
  %99 = getelementptr inbounds i8, ptr %84, i64 5
  store i8 %98, ptr %96, align 1, !tbaa !49
  %100 = load i8, ptr %97, align 1, !tbaa !49
  %101 = getelementptr inbounds i8, ptr %84, i64 6
  store i8 %100, ptr %99, align 1, !tbaa !49
  %102 = getelementptr inbounds i8, ptr %83, i64 8
  %103 = icmp ult ptr %102, %6
  br i1 %103, label %82, label %104, !llvm.loop !72

104:                                              ; preds = %82, %61, %74, %53
  %105 = phi i8 [ 24, %53 ], [ 48, %74 ], [ 24, %61 ], [ 48, %82 ]
  %106 = phi ptr [ %56, %53 ], [ %77, %74 ], [ %71, %61 ], [ %101, %82 ]
  %107 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 5
  store i8 %105, ptr %107, align 1, !tbaa !70
  store i8 3, ptr %7, align 2, !tbaa !65
  %108 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %109 = load i8, ptr %108, align 8, !tbaa !55
  %110 = icmp eq i8 %109, 6
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i8 2, ptr %108, align 8, !tbaa !55
  br label %112

112:                                              ; preds = %111, %104, %43, %49
  %113 = phi ptr [ %44, %49 ], [ %44, %43 ], [ %106, %111 ], [ %106, %104 ]
  %114 = ptrtoint ptr %113 to i64
  %115 = ptrtoint ptr %1 to i64
  %116 = sub i64 %114, %115
  store i64 %116, ptr %4, align 8, !tbaa !57
  br label %117

117:                                              ; preds = %3, %50, %9, %112
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_bgr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !55
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.png_row_info_struct, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !61
  switch i8 %10, label %65 [
    i8 8, label %11
    i8 16, label %34
  ]

11:                                               ; preds = %7
  switch i8 %4, label %65 [
    i8 2, label %14
    i8 6, label %12
  ]

12:                                               ; preds = %11
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %65, label %25

14:                                               ; preds = %11
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %23, %16 ], [ %1, %14 ]
  %18 = phi i32 [ %22, %16 ], [ 0, %14 ]
  %19 = load i8, ptr %17, align 1, !tbaa !49
  %20 = getelementptr inbounds i8, ptr %17, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !49
  store i8 %21, ptr %17, align 1, !tbaa !49
  store i8 %19, ptr %20, align 1, !tbaa !49
  %22 = add nuw i32 %18, 1
  %23 = getelementptr inbounds i8, ptr %17, i64 3
  %24 = icmp eq i32 %22, %8
  br i1 %24, label %65, label %16, !llvm.loop !73

25:                                               ; preds = %12, %25
  %26 = phi ptr [ %32, %25 ], [ %1, %12 ]
  %27 = phi i32 [ %31, %25 ], [ 0, %12 ]
  %28 = load i8, ptr %26, align 1, !tbaa !49
  %29 = getelementptr inbounds i8, ptr %26, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !49
  store i8 %30, ptr %26, align 1, !tbaa !49
  store i8 %28, ptr %29, align 1, !tbaa !49
  %31 = add nuw i32 %27, 1
  %32 = getelementptr inbounds i8, ptr %26, i64 4
  %33 = icmp eq i32 %31, %8
  br i1 %33, label %65, label %25, !llvm.loop !74

34:                                               ; preds = %7
  switch i8 %4, label %65 [
    i8 2, label %37
    i8 6, label %35
  ]

35:                                               ; preds = %34
  %36 = icmp eq i32 %8, 0
  br i1 %36, label %65, label %52

37:                                               ; preds = %34
  %38 = icmp eq i32 %8, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %37, %39
  %40 = phi i32 [ %49, %39 ], [ 0, %37 ]
  %41 = phi ptr [ %50, %39 ], [ %1, %37 ]
  %42 = load i8, ptr %41, align 1, !tbaa !49
  %43 = getelementptr inbounds i8, ptr %41, i64 4
  %44 = load i8, ptr %43, align 1, !tbaa !49
  store i8 %44, ptr %41, align 1, !tbaa !49
  store i8 %42, ptr %43, align 1, !tbaa !49
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !49
  %47 = getelementptr inbounds i8, ptr %41, i64 5
  %48 = load i8, ptr %47, align 1, !tbaa !49
  store i8 %48, ptr %45, align 1, !tbaa !49
  store i8 %46, ptr %47, align 1, !tbaa !49
  %49 = add nuw i32 %40, 1
  %50 = getelementptr inbounds i8, ptr %41, i64 6
  %51 = icmp eq i32 %49, %8
  br i1 %51, label %65, label %39, !llvm.loop !75

52:                                               ; preds = %35, %52
  %53 = phi i32 [ %62, %52 ], [ 0, %35 ]
  %54 = phi ptr [ %63, %52 ], [ %1, %35 ]
  %55 = load i8, ptr %54, align 1, !tbaa !49
  %56 = getelementptr inbounds i8, ptr %54, i64 4
  %57 = load i8, ptr %56, align 1, !tbaa !49
  store i8 %57, ptr %54, align 1, !tbaa !49
  store i8 %55, ptr %56, align 1, !tbaa !49
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !49
  %60 = getelementptr inbounds i8, ptr %54, i64 5
  %61 = load i8, ptr %60, align 1, !tbaa !49
  store i8 %61, ptr %58, align 1, !tbaa !49
  store i8 %59, ptr %60, align 1, !tbaa !49
  %62 = add nuw i32 %53, 1
  %63 = getelementptr inbounds i8, ptr %54, i64 8
  %64 = icmp eq i32 %62, %8
  br i1 %64, label %65, label %52, !llvm.loop !76

65:                                               ; preds = %52, %39, %25, %16, %35, %37, %12, %14, %11, %7, %34, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @png_do_check_palette_indexes(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !61
  %8 = zext nneg i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = icmp sgt i32 %9, %5
  br i1 %10, label %11, label %126

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 49
  %13 = load i32, ptr %12, align 4, !tbaa !78
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %126

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 1, !tbaa !70
  %18 = zext i8 %17 to i32
  %19 = load i32, ptr %1, align 8, !tbaa !64
  %20 = mul i32 %19, %18
  %21 = sub i32 0, %20
  %22 = and i32 %21, 7
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.png_row_info_struct, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !57
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  switch i8 %7, label %126 [
    i8 1, label %40
    i8 2, label %36
    i8 4, label %32
    i8 8, label %28
  ]

28:                                               ; preds = %15
  %29 = icmp sgt i64 %26, 0
  br i1 %29, label %30, label %126

30:                                               ; preds = %28
  %31 = load i32, ptr %12, align 4, !tbaa !78
  br label %115

32:                                               ; preds = %15
  %33 = icmp sgt i64 %26, 0
  br i1 %33, label %34, label %126

34:                                               ; preds = %32
  %35 = load i32, ptr %12, align 4, !tbaa !78
  br label %93

36:                                               ; preds = %15
  %37 = icmp sgt i64 %26, 0
  br i1 %37, label %38, label %126

38:                                               ; preds = %36
  %39 = load i32, ptr %12, align 4, !tbaa !78
  br label %53

40:                                               ; preds = %15
  %41 = icmp sgt i64 %26, 0
  br i1 %41, label %42, label %126

42:                                               ; preds = %40, %50
  %43 = phi ptr [ %51, %50 ], [ %27, %40 ]
  %44 = phi i32 [ 0, %50 ], [ %22, %40 ]
  %45 = load i8, ptr %43, align 1, !tbaa !49
  %46 = zext i8 %45 to i32
  %47 = lshr i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, ptr %12, align 4, !tbaa !78
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds i8, ptr %43, i64 -1
  %52 = icmp ugt ptr %51, %24
  br i1 %52, label %42, label %126, !llvm.loop !80

53:                                               ; preds = %38, %89
  %54 = phi i32 [ %39, %38 ], [ %90, %89 ]
  %55 = phi ptr [ %27, %38 ], [ %91, %89 ]
  %56 = phi i32 [ %22, %38 ], [ 0, %89 ]
  %57 = load i8, ptr %55, align 1, !tbaa !49
  %58 = zext i8 %57 to i32
  %59 = lshr i32 %58, %56
  %60 = and i32 %59, 3
  %61 = icmp sgt i32 %60, %54
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 %60, ptr %12, align 4, !tbaa !78
  br label %63

63:                                               ; preds = %62, %53
  %64 = phi i32 [ %60, %62 ], [ %54, %53 ]
  %65 = load i8, ptr %55, align 1, !tbaa !49
  %66 = zext i8 %65 to i32
  %67 = lshr i32 %66, %56
  %68 = lshr i32 %67, 2
  %69 = and i32 %68, 3
  %70 = icmp sgt i32 %69, %64
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 %69, ptr %12, align 4, !tbaa !78
  br label %72

72:                                               ; preds = %71, %63
  %73 = phi i32 [ %69, %71 ], [ %64, %63 ]
  %74 = load i8, ptr %55, align 1, !tbaa !49
  %75 = zext i8 %74 to i32
  %76 = lshr i32 %75, %56
  %77 = lshr i32 %76, 4
  %78 = and i32 %77, 3
  %79 = icmp sgt i32 %78, %73
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 %78, ptr %12, align 4, !tbaa !78
  br label %81

81:                                               ; preds = %80, %72
  %82 = phi i32 [ %78, %80 ], [ %73, %72 ]
  %83 = load i8, ptr %55, align 1, !tbaa !49
  %84 = zext i8 %83 to i32
  %85 = lshr i32 %84, %56
  %86 = lshr i32 %85, 6
  %87 = icmp sgt i32 %86, %82
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 %86, ptr %12, align 4, !tbaa !78
  br label %89

89:                                               ; preds = %88, %81
  %90 = phi i32 [ %86, %88 ], [ %82, %81 ]
  %91 = getelementptr inbounds i8, ptr %55, i64 -1
  %92 = icmp ugt ptr %91, %24
  br i1 %92, label %53, label %126, !llvm.loop !81

93:                                               ; preds = %34, %111
  %94 = phi i32 [ %35, %34 ], [ %112, %111 ]
  %95 = phi ptr [ %27, %34 ], [ %113, %111 ]
  %96 = phi i32 [ %22, %34 ], [ 0, %111 ]
  %97 = load i8, ptr %95, align 1, !tbaa !49
  %98 = zext i8 %97 to i32
  %99 = lshr i32 %98, %96
  %100 = and i32 %99, 15
  %101 = icmp sgt i32 %100, %94
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 %100, ptr %12, align 4, !tbaa !78
  br label %103

103:                                              ; preds = %102, %93
  %104 = phi i32 [ %100, %102 ], [ %94, %93 ]
  %105 = load i8, ptr %95, align 1, !tbaa !49
  %106 = zext i8 %105 to i32
  %107 = lshr i32 %106, %96
  %108 = lshr i32 %107, 4
  %109 = icmp sgt i32 %108, %104
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 %108, ptr %12, align 4, !tbaa !78
  br label %111

111:                                              ; preds = %110, %103
  %112 = phi i32 [ %108, %110 ], [ %104, %103 ]
  %113 = getelementptr inbounds i8, ptr %95, i64 -1
  %114 = icmp ugt ptr %113, %24
  br i1 %114, label %93, label %126, !llvm.loop !82

115:                                              ; preds = %30, %122
  %116 = phi i32 [ %31, %30 ], [ %123, %122 ]
  %117 = phi ptr [ %27, %30 ], [ %124, %122 ]
  %118 = load i8, ptr %117, align 1, !tbaa !49
  %119 = zext i8 %118 to i32
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  store i32 %119, ptr %12, align 4, !tbaa !78
  br label %122

122:                                              ; preds = %115, %121
  %123 = phi i32 [ %116, %115 ], [ %119, %121 ]
  %124 = getelementptr inbounds i8, ptr %117, i64 -1
  %125 = icmp ugt ptr %124, %24
  br i1 %125, label %115, label %126, !llvm.loop !83

126:                                              ; preds = %122, %111, %89, %50, %28, %32, %36, %40, %15, %11, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_user_transform_info(ptr noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 10
  store ptr %1, ptr %7, align 8, !tbaa !84
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 11
  store i8 %8, ptr %9, align 8, !tbaa !85
  %10 = trunc i32 %3 to i8
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 12
  store i8 %10, ptr %11, align 1, !tbaa !86
  br label %12

12:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @png_get_user_transform_ptr(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @png_get_current_row_number(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %5 = load i32, ptr %4, align 4, !tbaa !87
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @png_get_current_pass_number(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %5 = load i8, ptr %4, align 1, !tbaa !88
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i8 [ %5, %3 ], [ 8, %1 ]
  ret i8 %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!35, !39, i64 292}
!35 = !{!"png_struct_def", !36, i64 0, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !36, i64 280, !36, i64 281, !39, i64 284, !39, i64 288, !39, i64 292, !40, i64 296, !38, i64 408, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !41, i64 480, !39, i64 488, !39, i64 492, !39, i64 496, !38, i64 504, !38, i64 512, !38, i64 520, !38, i64 528, !38, i64 536, !38, i64 544, !41, i64 552, !39, i64 560, !39, i64 564, !38, i64 568, !42, i64 576, !39, i64 580, !42, i64 584, !36, i64 586, !36, i64 587, !36, i64 588, !36, i64 589, !36, i64 590, !36, i64 591, !36, i64 592, !36, i64 593, !36, i64 594, !36, i64 595, !36, i64 596, !36, i64 597, !36, i64 598, !36, i64 599, !36, i64 600, !42, i64 606, !36, i64 608, !39, i64 612, !43, i64 616, !43, i64 626, !38, i64 640, !39, i64 648, !39, i64 652, !39, i64 656, !39, i64 660, !39, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !38, i64 704, !38, i64 712, !44, i64 720, !44, i64 725, !38, i64 736, !43, i64 744, !38, i64 760, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !38, i64 800, !38, i64 808, !38, i64 816, !38, i64 824, !39, i64 832, !39, i64 836, !41, i64 840, !41, i64 848, !41, i64 856, !41, i64 864, !39, i64 872, !39, i64 876, !38, i64 880, !38, i64 888, !38, i64 896, !36, i64 904, !36, i64 905, !38, i64 912, !38, i64 920, !38, i64 928, !38, i64 936, !38, i64 944, !36, i64 952, !39, i64 984, !38, i64 992, !38, i64 1000, !39, i64 1008, !38, i64 1016, !36, i64 1024, !36, i64 1025, !36, i64 1026, !42, i64 1028, !42, i64 1030, !39, i64 1032, !36, i64 1036, !38, i64 1040, !38, i64 1048, !38, i64 1056, !38, i64 1064, !38, i64 1072, !38, i64 1080, !38, i64 1088, !36, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !41, i64 1112, !45, i64 1120, !41, i64 1152, !38, i64 1160, !39, i64 1168, !38, i64 1176, !36, i64 1184}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"z_stream_s", !38, i64 0, !39, i64 8, !41, i64 16, !38, i64 24, !39, i64 32, !41, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !41, i64 96, !41, i64 104}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"png_color_16_struct", !36, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !42, i64 8}
!44 = !{!"png_color_8_struct", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4}
!45 = !{!"png_unknown_chunk_t", !36, i64 0, !38, i64 8, !41, i64 16, !36, i64 24}
!46 = !{!35, !36, i64 592}
!47 = !{!35, !36, i64 593}
!48 = !{i64 0, i64 1, !49, i64 1, i64 1, !49, i64 2, i64 1, !49, i64 3, i64 1, !49, i64 4, i64 1, !49}
!49 = !{!36, !36, i64 0}
!50 = !{!35, !36, i64 588}
!51 = !{!35, !42, i64 606}
!52 = !{!35, !39, i64 288}
!53 = !{!35, !36, i64 591}
!54 = !{!35, !36, i64 596}
!55 = !{!56, !36, i64 16}
!56 = !{!"png_row_info_struct", !39, i64 0, !41, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!57 = !{!56, !41, i64 8}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!56, !36, i64 17}
!62 = distinct !{!62, !59, !60}
!63 = distinct !{!63, !59, !60}
!64 = !{!56, !39, i64 0}
!65 = !{!56, !36, i64 18}
!66 = distinct !{!66, !59, !60}
!67 = distinct !{!67, !59, !60}
!68 = distinct !{!68, !59, !60}
!69 = distinct !{!69, !59, !60}
!70 = !{!56, !36, i64 19}
!71 = distinct !{!71, !59, !60}
!72 = distinct !{!72, !59, !60}
!73 = distinct !{!73, !59, !60}
!74 = distinct !{!74, !59, !60}
!75 = distinct !{!75, !59, !60}
!76 = distinct !{!76, !59, !60}
!77 = !{!35, !42, i64 576}
!78 = !{!35, !39, i64 580}
!79 = !{!35, !38, i64 512}
!80 = distinct !{!80, !59, !60}
!81 = distinct !{!81, !59, !60}
!82 = distinct !{!82, !59, !60}
!83 = distinct !{!83, !59, !60}
!84 = !{!35, !38, i64 272}
!85 = !{!35, !36, i64 280}
!86 = !{!35, !36, i64 281}
!87 = !{!35, !39, i64 492}
!88 = !{!35, !36, i64 589}
