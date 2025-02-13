; ModuleID = 'ldecod_src/nalu.c'
source_filename = "ldecod_src/nalu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.sBitsFile = type { ptr, ptr, ptr }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.nalu_t = type { i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"initBitsFile : p_Vid->bitsfile\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"initBitsFile: Unknown bitstream file mode\00", align 1
@errortext = external global [300 x i8], align 16
@.str.2 = private unnamed_addr constant [54 x i8] c"Error while getting the NALU in file format %s, exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Annex B\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RTP\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Invalid startcode emulation prevention found.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Found NALU with forbidden_bit set, bit error?\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"non_idr_flag\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"priority_id\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"view_id\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"temporal_id\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"anchor_pic_flag\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"inter_view_flag\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"reserved_one_bit\00", align 1
@str = private unnamed_addr constant [31 x i8] c"Warning: zero_byte shall exist\00", align 1
@str.17 = private unnamed_addr constant [31 x i8] c"warning: zero_byte shall exist\00", align 1
@str.18 = private unnamed_addr constant [54 x i8] c"Nalu Header MVC Extension: reserved_one_bit is not 1!\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initBitsFile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %23 [
    i32 0, label %3
    i32 1, label %13
  ]

3:                                                ; preds = %2
  %4 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 145
  store ptr %4, ptr %5, align 8, !tbaa !6
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %4, %3 ]
  store ptr @OpenAnnexBFile, ptr %10, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.sBitsFile, ptr %10, i64 0, i32 1
  store ptr @CloseAnnexBFile, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.sBitsFile, ptr %10, i64 0, i32 2
  store ptr @GetAnnexbNALU, ptr %12, align 8, !tbaa !20
  tail call void @malloc_annex_b(ptr noundef nonnull %0) #8
  br label %24

13:                                               ; preds = %2
  %14 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 145
  store ptr %14, ptr %15, align 8, !tbaa !6
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  %18 = load ptr, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %14, %13 ]
  store ptr @OpenRTPFile, ptr %20, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.sBitsFile, ptr %20, i64 0, i32 1
  store ptr @CloseRTPFile, ptr %21, align 8, !tbaa !19
  %22 = getelementptr inbounds %struct.sBitsFile, ptr %20, i64 0, i32 2
  store ptr @GetRTPNALU, ptr %22, align 8, !tbaa !20
  br label %24

23:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 255) #8
  br label %24

24:                                               ; preds = %23, %19, %9
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OpenAnnexBFile(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @CloseAnnexBFile(ptr noundef) #2

; Function Attrs: optsize
declare i32 @GetAnnexbNALU(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @malloc_annex_b(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @OpenRTPFile(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @CloseRTPFile(ptr noundef) #2

; Function Attrs: optsize
declare i32 @GetRTPNALU(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @read_next_nalu(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 145
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.sBitsFile, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = tail call i32 %7(ptr noundef nonnull %0, ptr noundef %1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !22
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.3, ptr @.str.4
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #8
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 601) #8
  br label %18

16:                                               ; preds = %2
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %10, %16
  tail call void @CheckZeroByteNonVCL(ptr noundef nonnull %0, ptr noundef %1) #9
  %19 = tail call fastcc i32 @NALUtoRBSP(ptr noundef %1) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 602) #8
  br label %22

22:                                               ; preds = %21, %18
  %23 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 603) #8
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !27
  br label %30

30:                                               ; preds = %16, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %16 ]
  ret i32 %31
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @CheckZeroByteNonVCL(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !28
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = add i32 %4, -9
  %9 = icmp ult i32 %8, -2
  switch i32 %4, label %16 [
    i32 18, label %10
    i32 17, label %10
    i32 16, label %10
    i32 15, label %10
    i32 14, label %10
    i32 13, label %10
    i32 9, label %10
    i32 8, label %10
    i32 7, label %10
    i32 6, label %10
  ]

10:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 124
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  store i32 0, ptr %11, align 8, !tbaa !29
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  store i32 0, ptr %15, align 4, !tbaa !30
  br label %16

16:                                               ; preds = %7, %10, %14
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  %18 = load i32, ptr %17, align 4, !tbaa !30
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !30
  %20 = icmp ne i32 %18, 0
  %21 = and i1 %9, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %1, align 8, !tbaa !31
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %27

27:                                               ; preds = %16, %22, %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @NALUtoRBSP(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nalu_t, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.nalu_t, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !27
  %6 = tail call i32 @EBSPtoRBSP(ptr noundef %3, i32 noundef %5, i32 noundef 1) #8
  store i32 %6, ptr %4, align 4, !tbaa !27
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @EBSPtoRBSP(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @CheckZeroByteVCL(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !28
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 124
  %9 = load i32, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  br i1 %10, label %13, label %12

12:                                               ; preds = %7
  store i32 1, ptr %11, align 4, !tbaa !30
  store i32 1, ptr %8, align 8, !tbaa !29
  br label %18

13:                                               ; preds = %7
  %14 = load i32, ptr %11, align 4, !tbaa !30
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  %16 = add nsw i32 %14, 1
  store i32 %16, ptr %15, align 4, !tbaa !30
  %17 = icmp eq i32 %14, 0
  store i32 1, ptr %8, align 8, !tbaa !29
  br i1 %17, label %18, label %23

18:                                               ; preds = %12, %13
  %19 = load i32, ptr %1, align 8, !tbaa !31
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  br label %23

23:                                               ; preds = %13, %18, %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nal_unit_header_mvc_extension(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %1) #8
  store i32 %3, ptr %0, align 4, !tbaa !33
  %4 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.10, ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !35
  %6 = tail call i32 @u_v(i32 noundef 10, ptr noundef nonnull @.str.11, ptr noundef %1) #8
  %7 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 2
  store i32 %6, ptr %7, align 4, !tbaa !36
  %8 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %1) #8
  %9 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !37
  %10 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %1) #8
  %11 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 4, !tbaa !38
  %12 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %1) #8
  %13 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 5
  store i32 %12, ptr %13, align 4, !tbaa !39
  %14 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef %1) #8
  %15 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !40
  %16 = icmp eq i32 %14, 1
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  br label %19

19:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: optsize
declare i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @nal_unit_header_svc_extension() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @prefix_nal_unit_svc() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind optsize allocsize(0,1) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 856616}
!7 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !12, i64 849040, !12, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !13, i64 849304, !13, i64 849624, !13, i64 849944, !13, i64 850264, !13, i64 850584, !13, i64 850904, !13, i64 851224, !13, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !16, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{!"image_data", !14, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!14 = !{!"frame_format", !11, i64 0, !11, i64 4, !15, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!15 = !{!"double", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 0}
!18 = !{!"sBitsFile", !8, i64 0, !8, i64 8, !8, i64 16}
!19 = !{!18, !8, i64 8}
!20 = !{!18, !8, i64 16}
!21 = !{!7, !8, i64 0}
!22 = !{!23, !11, i64 768}
!23 = !{!"inp_par", !9, i64 0, !9, i64 255, !9, i64 510, !11, i64 768, !11, i64 772, !11, i64 776, !11, i64 780, !11, i64 784, !11, i64 788, !14, i64 792, !14, i64 928, !11, i64 1064, !11, i64 1068, !24, i64 1072, !24, i64 2040, !24, i64 3008, !11, i64 3976, !11, i64 3980, !11, i64 3984, !11, i64 3988, !11, i64 3992, !11, i64 3996, !11, i64 4000, !11, i64 4004, !11, i64 4008, !11, i64 4012}
!24 = !{!"video_data_file", !9, i64 0, !9, i64 255, !9, i64 510, !11, i64 768, !11, i64 772, !14, i64 776, !11, i64 912, !11, i64 916, !11, i64 920, !11, i64 924, !11, i64 928, !11, i64 932, !11, i64 936, !11, i64 940, !11, i64 944, !11, i64 948, !11, i64 952, !8, i64 960}
!25 = !{!26, !11, i64 12}
!26 = !{!"nalu_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 24, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!27 = !{!26, !11, i64 4}
!28 = !{!26, !11, i64 16}
!29 = !{!7, !11, i64 855992}
!30 = !{!7, !11, i64 855996}
!31 = !{!26, !11, i64 0}
!32 = !{!26, !8, i64 24}
!33 = !{!34, !11, i64 0}
!34 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!35 = !{!34, !11, i64 4}
!36 = !{!34, !11, i64 8}
!37 = !{!34, !11, i64 12}
!38 = !{!34, !11, i64 16}
!39 = !{!34, !11, i64 20}
!40 = !{!34, !11, i64 24}
