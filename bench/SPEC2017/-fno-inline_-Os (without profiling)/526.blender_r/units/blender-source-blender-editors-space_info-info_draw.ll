; ModuleID = 'blender/source/blender/editors/space_info/info_draw.c'
source_filename = "blender/source/blender/editors/space_info/info_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.TextViewContext = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }
%struct.Link = type { ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @info_text_pick(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !tbaa !9
  %7 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %3, ptr %7, align 4, !tbaa !9
  %8 = call fastcc i32 @info_textview_main__internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  %9 = load ptr, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @info_textview_main__internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.TextViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #9
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %8, i8 0, i64 112, i1 false)
  %9 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 8
  store ptr @report_textview_begin, ptr %9, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 9
  store ptr @report_textview_end, ptr %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 12
  store ptr @report_textview_step, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 13
  store ptr @report_textview_line_get, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 14
  store ptr @report_textview_line_color, ptr %13, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 10
  store ptr %0, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 11
  store ptr %2, ptr %15, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 1
  store i32 0, ptr %16, align 4, !tbaa !19
  %17 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !20
  %18 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !27
  %19 = sitofp i32 %18 to float
  %20 = fmul float %17, %19
  %21 = fdiv float %20, 7.200000e+01
  %22 = fmul float %21, 1.400000e+01
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %7, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !33
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 7
  store i32 %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %31 = load i16, ptr %30, align 8, !tbaa !35
  %32 = sitofp i16 %31 to float
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !37
  %34 = sitofp i16 %33 to float
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 0xBFEB333340000000, float %32)
  %36 = getelementptr inbounds %struct.TextViewContext, ptr %7, i64 0, i32 5
  %37 = insertelement <2 x float> poison, float %35, i64 0
  %38 = insertelement <2 x float> %37, float %25, i64 1
  %39 = fptosi <2 x float> %38 to <2 x i32>
  store <2 x i32> %39, ptr %36, align 4, !tbaa !9
  %40 = call i32 @textview_draw(ptr noundef nonnull %7, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #9
  ret i32 %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @info_textview_height(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 9223372034707292159, ptr %4, align 8
  %5 = call fastcc i32 @info_textview_main__internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @info_textview_main(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 9223372034707292159, ptr %4, align 8
  %5 = call fastcc i32 @info_textview_main__internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_textview_begin(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !20
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !27
  %6 = sitofp i32 %5 to float
  %7 = fmul float %4, %6
  %8 = fdiv float %7, 7.200000e+01
  %9 = fmul float %8, 1.400000e+01
  %10 = fptosi float %9 to i32
  store i32 %10, ptr %0, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !19
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  store ptr %14, ptr %15, align 8, !tbaa !41
  tail call void @UI_ThemeClearColor(i32 noundef 2) #11
  tail call void @glClear(i32 noundef 16384) #11
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 20
  store i32 0, ptr %16, align 4, !tbaa !42
  %17 = load ptr, ptr %15, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = tail call fastcc i32 @report_textview_skip__internal(ptr noundef nonnull %0) #10, !range !43
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  store i32 0, ptr %23, align 4, !tbaa !44
  tail call fastcc void @report_textview_init__internal(ptr noundef nonnull %0) #10
  br label %24

24:                                               ; preds = %1, %19, %22
  %25 = phi i32 [ 1, %22 ], [ 0, %19 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @report_textview_end(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_textview_step(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.Report, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  store ptr %11, ptr %2, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @report_textview_skip__internal(ptr noundef nonnull %0) #10, !range !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 20
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !42
  br label %22

20:                                               ; preds = %1
  %21 = add nsw i32 %7, 1
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %24 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  store i32 %23, ptr %24, align 4, !tbaa !44
  tail call fastcc void @report_textview_init__internal(ptr noundef nonnull %0) #10
  br label %25

25:                                               ; preds = %22, %9, %13
  %26 = phi i32 [ 0, %13 ], [ 0, %9 ], [ 1, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @report_textview_line_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.Report, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !44
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  store ptr %11, ptr %1, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = sub nsw i32 %13, %9
  store i32 %14, ptr %2, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_textview_line_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = srem i32 %7, 2
  %9 = trunc i32 %8 to i16
  tail call fastcc void @info_report_color(ptr noundef %1, ptr noundef %2, ptr noundef %5, i16 noundef signext %9) #10
  ret i32 3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare i32 @textview_draw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @report_textview_skip__internal(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = tail call i32 @info_report_mask(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %15
  %9 = phi ptr [ %17, %15 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = sext i16 %11 to i32
  %13 = and i32 %4, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Link, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  store ptr %17, ptr %5, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !52

19:                                               ; preds = %8, %15, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %15 ], [ 1, %8 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @report_textview_init__internal(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.Report, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 10) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = ptrtoint ptr %10 to i64
  %14 = ptrtoint ptr %5 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  br label %20

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.Report, ptr %3, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !45
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %19, %17 ], [ %16, %12 ]
  %22 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 19
  store i32 %21, ptr %22, align 8
  ret void
}

; Function Attrs: optsize
declare i32 @info_report_mask(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @info_report_color(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Report, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !54
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Report, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 480
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = and i32 %12, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = and i32 %12, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = and i32 %12, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 3, i32 191
  %25 = select i1 %23, i32 2, i32 190
  br label %26

26:                                               ; preds = %21, %18, %15, %9, %4
  %27 = phi i32 [ 183, %4 ], [ 185, %9 ], [ 187, %15 ], [ 189, %18 ], [ %24, %21 ]
  %28 = phi i32 [ 182, %4 ], [ 184, %9 ], [ 186, %15 ], [ 188, %18 ], [ %25, %21 ]
  %29 = icmp eq i16 %3, 0
  %30 = select i1 %29, i32 -6, i32 0
  tail call void @UI_GetThemeColorShade3ubv(i32 noundef %28, i32 noundef %30, ptr noundef %1) #11
  tail call void @UI_GetThemeColor3ubv(i32 noundef %27, ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !6, i64 32}
!12 = !{!"TextViewContext", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!13 = !{!12, !6, i64 40}
!14 = !{!12, !6, i64 64}
!15 = !{!12, !6, i64 72}
!16 = !{!12, !6, i64 80}
!17 = !{!12, !6, i64 48}
!18 = !{!12, !6, i64 56}
!19 = !{!12, !10, i64 4}
!20 = !{!21, !24, i64 10908}
!21 = !{!"UserDef", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !10, i64 8468, !22, i64 8472, !22, i64 8474, !22, i64 8476, !22, i64 8478, !22, i64 8480, !22, i64 8482, !10, i64 8484, !10, i64 8488, !10, i64 8492, !22, i64 8496, !22, i64 8498, !10, i64 8500, !10, i64 8504, !10, i64 8508, !10, i64 8512, !10, i64 8516, !10, i64 8520, !10, i64 8524, !22, i64 8528, !22, i64 8530, !22, i64 8532, !22, i64 8534, !23, i64 8536, !23, i64 8552, !23, i64 8568, !23, i64 8584, !23, i64 8600, !23, i64 8616, !23, i64 8632, !7, i64 8648, !22, i64 8712, !22, i64 8714, !22, i64 8716, !22, i64 8718, !22, i64 8720, !22, i64 8722, !22, i64 8724, !22, i64 8726, !7, i64 8728, !22, i64 8896, !22, i64 8898, !22, i64 8900, !22, i64 8902, !22, i64 8904, !22, i64 8906, !22, i64 8908, !22, i64 8910, !10, i64 8912, !10, i64 8916, !22, i64 8920, !22, i64 8922, !22, i64 8924, !22, i64 8926, !22, i64 8928, !22, i64 8930, !22, i64 8932, !22, i64 8934, !22, i64 8936, !22, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !22, i64 8944, !22, i64 8946, !22, i64 8948, !22, i64 8950, !22, i64 8952, !22, i64 8954, !24, i64 8956, !24, i64 8960, !10, i64 8964, !22, i64 8968, !22, i64 8970, !24, i64 8972, !22, i64 8976, !22, i64 8978, !22, i64 8980, !22, i64 8982, !25, i64 8984, !7, i64 9760, !7, i64 9772, !22, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !10, i64 10896, !10, i64 10900, !24, i64 10904, !24, i64 10908, !10, i64 10912, !22, i64 10916, !22, i64 10918, !22, i64 10920, !22, i64 10922, !22, i64 10924, !22, i64 10926, !26, i64 10928}
!22 = !{!"short", !7, i64 0}
!23 = !{!"ListBase", !6, i64 0, !6, i64 8}
!24 = !{!"float", !7, i64 0}
!25 = !{!"ColorBand", !22, i64 0, !22, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!26 = !{!"WalkNavigation", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !22, i64 24, !7, i64 26}
!27 = !{!21, !10, i64 8524}
!28 = !{!12, !10, i64 0}
!29 = !{!30, !24, i64 24}
!30 = !{!"View2D", !31, i64 0, !31, i64 16, !32, i64 32, !32, i64 48, !32, i64 64, !7, i64 80, !7, i64 88, !24, i64 96, !24, i64 100, !22, i64 104, !22, i64 106, !22, i64 108, !22, i64 110, !22, i64 112, !22, i64 114, !22, i64 116, !22, i64 118, !22, i64 120, !22, i64 122, !22, i64 124, !22, i64 126, !6, i64 128, !10, i64 136, !10, i64 140, !6, i64 144, !6, i64 152}
!31 = !{!"rctf", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!32 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!33 = !{!30, !24, i64 28}
!34 = !{!12, !10, i64 28}
!35 = !{!36, !22, i64 208}
!36 = !{!"ARegion", !6, i64 0, !6, i64 8, !30, i64 16, !32, i64 176, !32, i64 192, !22, i64 208, !22, i64 210, !22, i64 212, !22, i64 214, !22, i64 216, !22, i64 218, !24, i64 220, !22, i64 224, !22, i64 226, !22, i64 228, !22, i64 230, !22, i64 232, !22, i64 234, !22, i64 236, !22, i64 238, !6, i64 240, !23, i64 248, !23, i64 264, !23, i64 280, !23, i64 296, !23, i64 312, !23, i64 328, !23, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!37 = !{!21, !22, i64 8948}
!38 = !{!12, !10, i64 8}
!39 = !{!40, !6, i64 8}
!40 = !{!"ReportList", !23, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !6, i64 32}
!41 = !{!12, !6, i64 96}
!42 = !{!12, !10, i64 116}
!43 = !{i32 0, i32 2}
!44 = !{!12, !10, i64 108}
!45 = !{!46, !10, i64 20}
!46 = !{!"Report", !6, i64 0, !6, i64 8, !22, i64 16, !22, i64 18, !10, i64 20, !6, i64 24, !6, i64 32}
!47 = !{!12, !10, i64 112}
!48 = !{!49, !6, i64 8}
!49 = !{!"Link", !6, i64 0, !6, i64 8}
!50 = !{!46, !6, i64 32}
!51 = !{!46, !22, i64 16}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!46, !22, i64 18}
