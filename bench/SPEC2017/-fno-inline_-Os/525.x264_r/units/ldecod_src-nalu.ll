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
  store ptr %4, ptr %5, align 8, !tbaa !34
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %4, %3 ]
  store ptr @OpenAnnexBFile, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.sBitsFile, ptr %10, i64 0, i32 1
  store ptr @CloseAnnexBFile, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.sBitsFile, ptr %10, i64 0, i32 2
  store ptr @GetAnnexbNALU, ptr %12, align 8, !tbaa !48
  tail call void @malloc_annex_b(ptr noundef nonnull %0) #8
  br label %24

13:                                               ; preds = %2
  %14 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 145
  store ptr %14, ptr %15, align 8, !tbaa !34
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8
  %18 = load ptr, ptr %15, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %14, %13 ]
  store ptr @OpenRTPFile, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.sBitsFile, ptr %20, i64 0, i32 1
  store ptr @CloseRTPFile, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.sBitsFile, ptr %20, i64 0, i32 2
  store ptr @GetRTPNALU, ptr %22, align 8, !tbaa !48
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
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 145
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.sBitsFile, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 %7(ptr noundef nonnull %0, ptr noundef %1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inp_par, ptr %3, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !50
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
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 603) #8
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !55
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
  %4 = load i32, ptr %3, align 8, !tbaa !56
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
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  store i32 0, ptr %11, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  store i32 0, ptr %15, align 4, !tbaa !58
  br label %16

16:                                               ; preds = %7, %10, %14
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !58
  %20 = icmp ne i32 %18, 0
  %21 = and i1 %9, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %1, align 8, !tbaa !59
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %27

27:                                               ; preds = %16, %22, %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @NALUtoRBSP(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.nalu_t, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.nalu_t, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = tail call i32 @EBSPtoRBSP(ptr noundef %3, i32 noundef %5, i32 noundef 1) #8
  store i32 %6, ptr %4, align 4, !tbaa !55
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @CheckZeroByteVCL(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nalu_t, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !56
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 124
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  br i1 %10, label %13, label %12

12:                                               ; preds = %7
  store i32 1, ptr %11, align 4, !tbaa !58
  store i32 1, ptr %8, align 8, !tbaa !57
  br label %18

13:                                               ; preds = %7
  %14 = load i32, ptr %11, align 4, !tbaa !58
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 125
  %16 = add nsw i32 %14, 1
  store i32 %16, ptr %15, align 4, !tbaa !58
  %17 = icmp eq i32 %14, 0
  store i32 1, ptr %8, align 8, !tbaa !57
  br i1 %17, label %18, label %23

18:                                               ; preds = %12, %13
  %19 = load i32, ptr %1, align 8, !tbaa !59
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
  store i32 %3, ptr %0, align 4, !tbaa !62
  %4 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.10, ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !64
  %6 = tail call i32 @u_v(i32 noundef 10, ptr noundef nonnull @.str.11, ptr noundef %1) #8
  %7 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 2
  store i32 %6, ptr %7, align 4, !tbaa !65
  %8 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %1) #8
  %9 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !66
  %10 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %1) #8
  %11 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 4, !tbaa !67
  %12 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %1) #8
  %13 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 5
  store i32 %12, ptr %13, align 4, !tbaa !68
  %14 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef %1) #8
  %15 = getelementptr inbounds %struct.nalunitheadermvcext_tag, ptr %0, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !69
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

; Function Attrs: optsize
declare i32 @EBSPtoRBSP(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 856616}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!46, !36, i64 0}
!46 = !{!"sBitsFile", !36, i64 0, !36, i64 8, !36, i64 16}
!47 = !{!46, !36, i64 8}
!48 = !{!46, !36, i64 16}
!49 = !{!35, !36, i64 0}
!50 = !{!51, !39, i64 768}
!51 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !42, i64 792, !42, i64 928, !39, i64 1064, !39, i64 1068, !52, i64 1072, !52, i64 2040, !52, i64 3008, !39, i64 3976, !39, i64 3980, !39, i64 3984, !39, i64 3988, !39, i64 3992, !39, i64 3996, !39, i64 4000, !39, i64 4004, !39, i64 4008, !39, i64 4012}
!52 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !42, i64 776, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944, !39, i64 948, !39, i64 952, !36, i64 960}
!53 = !{!54, !39, i64 12}
!54 = !{!"nalu_t", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64}
!55 = !{!54, !39, i64 4}
!56 = !{!54, !39, i64 16}
!57 = !{!35, !39, i64 855992}
!58 = !{!35, !39, i64 855996}
!59 = !{!54, !39, i64 0}
!60 = !{!"nalu.c:NALUtoRBSP"}
!61 = !{!54, !36, i64 24}
!62 = !{!63, !39, i64 0}
!63 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!64 = !{!63, !39, i64 4}
!65 = !{!63, !39, i64 8}
!66 = !{!63, !39, i64 12}
!67 = !{!63, !39, i64 16}
!68 = !{!63, !39, i64 20}
!69 = !{!63, !39, i64 24}
