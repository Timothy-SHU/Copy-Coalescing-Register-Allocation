; ModuleID = 'blender/source/blender/editors/space_console/console_draw.c'
source_filename = "blender/source/blender/editors/space_console/console_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceConsole = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i32, i32, %struct.ListBase, %struct.ListBase, [256 x i8], [32 x i8], i32, i32 }
%struct.ConsoleLine = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.TextViewContext = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Link = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"cl_dummy\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @console_scrollback_prompt_begin(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 10
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #10
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 6
  store i32 1, ptr %8, align 4, !tbaa !13
  %9 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = add nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !15
  %13 = add nsw i32 %11, 1
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !16
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !17
  %16 = sext i32 %13 to i64
  %17 = tail call ptr %15(i64 noundef %16, ptr noundef nonnull @.str) #11
  %18 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !18
  %19 = shl i64 %6, 32
  %20 = ashr exact i64 %19, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr nonnull align 8 %5, i64 %20, i1 false)
  %21 = load ptr, ptr %18, align 8, !tbaa !18
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  %23 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = load i32, ptr %9, align 4, !tbaa !15
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %24, i64 %27, i1 false)
  %28 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @console_scrollback_prompt_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  tail call void %3(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @console_textview_main(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 9223372034707292159, ptr %3, align 8
  %4 = call fastcc i32 @console_textview_main__internal(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @console_textview_main__internal(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ConsoleLine, align 8
  %8 = alloca %struct.TextViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #12
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, i8 0, i64 112, i1 false)
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 8
  store ptr @console_textview_begin, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 9
  store ptr @console_textview_end, ptr %11, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 12
  store ptr @console_textview_step, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 13
  store ptr @console_textview_line_get, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 14
  store ptr @console_textview_line_color, ptr %14, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 15
  store ptr @console_textview_const_colors, ptr %15, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 10
  store ptr %0, ptr %16, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 1
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !27
  store <2 x i32> %19, ptr %18, align 4, !tbaa !27
  %20 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !28
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !29
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !34
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, %22
  %29 = fptosi float %28 to i32
  store i32 %29, ptr %8, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !40
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 7
  store i32 %34, ptr %35, align 4, !tbaa !41
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %37 = load i16, ptr %36, align 8, !tbaa !42
  %38 = sitofp i16 %37 to float
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %40 = sitofp i16 %39 to float
  %41 = tail call float @llvm.fmuladd.f32(float %40, float 0xBFEB333340000000, float %38)
  %42 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 5
  %43 = insertelement <2 x float> poison, float %41, i64 0
  %44 = insertelement <2 x float> %43, float %31, i64 1
  %45 = fptosi <2 x float> %44 to <2 x i32>
  store <2 x i32> %45, ptr %42, align 4, !tbaa !27
  call void @console_scrollback_prompt_begin(ptr noundef %0, ptr noundef nonnull %7) #13
  %46 = call i32 @textview_draw(ptr noundef nonnull %8, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #11
  call void @console_scrollback_prompt_end(ptr noundef %0, ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @console_textview_height(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 9223372034707292159, ptr %3, align 8
  %4 = call fastcc i32 @console_textview_main__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @console_char_pick(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %7 = load i32, ptr %2, align 4, !tbaa !27
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !42
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, -4
  %14 = tail call i32 @llvm.smin.i32(i32 %7, i32 %13)
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ 4, %3 ], [ %14, %9 ]
  store i32 %16, ptr %6, align 4, !tbaa !27
  %17 = getelementptr inbounds i32, ptr %2, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !27
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %22 = load i16, ptr %21, align 2, !tbaa !45
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %23, -4
  %25 = tail call i32 @llvm.smin.i32(i32 %18, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i32 [ 4, %15 ], [ %25, %20 ]
  %28 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !27
  %29 = call fastcc i32 @console_textview_main__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %30 = load i32, ptr %4, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @console_textview_begin(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !28
  %6 = sitofp i32 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !29
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !34
  %9 = sitofp i32 %8 to float
  %10 = fmul float %7, %9
  %11 = fdiv float %10, 7.200000e+01
  %12 = fmul float %11, %6
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !27
  store <2 x i32> %16, ptr %15, align 4, !tbaa !27
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  store ptr %18, ptr %19, align 8, !tbaa !47
  %20 = icmp ne ptr %18, null
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @console_textview_end(ptr nocapture readnone %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @console_textview_step(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  store ptr %5, ptr %2, align 8, !tbaa !47
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @console_textview_line_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  store ptr %7, ptr %1, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !15
  store i32 %9, ptr %2, align 4, !tbaa !27
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_textview_line_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %13, i64 0, i32 9, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !27
  %16 = load i32, ptr %0, align 8, !tbaa !35
  %17 = sdiv i32 %16, 6
  %18 = getelementptr inbounds %struct.SpaceConsole, ptr %13, i64 0, i32 10
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  call fastcc void @console_cursor_wrap_offset(ptr noundef nonnull %18, i32 noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #13
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = load i32, ptr %19, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %15, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !52
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  call fastcc void @console_cursor_wrap_offset(ptr noundef %22, i32 noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !53
  %30 = load i32, ptr %5, align 4, !tbaa !27
  %31 = mul nsw i32 %30, %29
  %32 = load i32, ptr %0, align 8, !tbaa !35
  %33 = load i32, ptr %4, align 4, !tbaa !27
  %34 = mul nsw i32 %33, %32
  %35 = load ptr, ptr %21, align 8, !tbaa !18
  %36 = load i32, ptr %24, align 8, !tbaa !52
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = load i32, ptr %19, align 8, !tbaa !51
  call fastcc void @console_cursor_wrap_offset(ptr noundef %38, i32 noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #13
  %40 = load i32, ptr %0, align 8, !tbaa !35
  %41 = load i32, ptr %4, align 4, !tbaa !27
  %42 = mul nsw i32 %41, %40
  tail call void @UI_GetThemeColor3ubv(i32 noundef 114, ptr noundef %1) #11
  tail call void @glColor3ubv(ptr noundef %1) #11
  %43 = add nsw i32 %31, 3
  %44 = add nsw i32 %17, 2
  %45 = sub i32 %44, %34
  %46 = add i32 %45, %42
  %47 = add nsw i32 %31, 5
  %48 = load i32, ptr %0, align 8, !tbaa !35
  %49 = add nsw i32 %46, %48
  tail call void @glRecti(i32 noundef %43, i32 noundef %46, i32 noundef %47, i32 noundef %49) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %50

50:                                               ; preds = %11, %3
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %7, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !13
  tail call fastcc void @console_line_color(ptr noundef %1, i32 noundef %52) #13
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_textview_const_colors(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @UI_GetThemeColor4ubv(i32 noundef 115, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare i32 @textview_draw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_cursor_wrap_offset(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef readnone %4) unnamed_addr #0 {
  %6 = load i8, ptr %0, align 1, !tbaa !54
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %4, null
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi ptr [ %0, %8 ], [ %27, %23 ]
  %12 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %11) #11
  %13 = load i32, ptr %3, align 4, !tbaa !27
  %14 = add nsw i32 %13, %12
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4, !tbaa !27
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %2, align 4, !tbaa !27
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ 0, %16 ], [ %13, %10 ]
  %21 = icmp ult ptr %11, %4
  %22 = or i1 %9, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = add nsw i32 %20, %12
  store i32 %24, ptr %3, align 4, !tbaa !27
  %25 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %11) #11
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %11, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !54
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %10, !llvm.loop !55

30:                                               ; preds = %23, %19, %5
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_line_color(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add nuw nsw i32 %1, 110
  tail call void @UI_GetThemeColor3ubv(i32 noundef %5, ptr noundef %0) #11
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 88}
!6 = !{!"SpaceConsole", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40, !11, i64 56, !11, i64 60, !10, i64 64, !10, i64 80, !8, i64 96, !8, i64 352, !11, i64 384, !11, i64 388}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!14, !11, i64 36}
!14 = !{!"ConsoleLine", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !7, i64 24, !11, i64 32, !11, i64 36}
!15 = !{!14, !11, i64 20}
!16 = !{!14, !11, i64 16}
!17 = !{!7, !7, i64 0}
!18 = !{!14, !7, i64 24}
!19 = !{!20, !7, i64 32}
!20 = !{!"TextViewContext", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116}
!21 = !{!20, !7, i64 40}
!22 = !{!20, !7, i64 64}
!23 = !{!20, !7, i64 72}
!24 = !{!20, !7, i64 80}
!25 = !{!20, !7, i64 88}
!26 = !{!20, !7, i64 48}
!27 = !{!11, !11, i64 0}
!28 = !{!6, !11, i64 56}
!29 = !{!30, !12, i64 10908}
!30 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !31, i64 8472, !31, i64 8474, !31, i64 8476, !31, i64 8478, !31, i64 8480, !31, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !31, i64 8496, !31, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !31, i64 8528, !31, i64 8530, !31, i64 8532, !31, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !31, i64 8712, !31, i64 8714, !31, i64 8716, !31, i64 8718, !31, i64 8720, !31, i64 8722, !31, i64 8724, !31, i64 8726, !8, i64 8728, !31, i64 8896, !31, i64 8898, !31, i64 8900, !31, i64 8902, !31, i64 8904, !31, i64 8906, !31, i64 8908, !31, i64 8910, !11, i64 8912, !11, i64 8916, !31, i64 8920, !31, i64 8922, !31, i64 8924, !31, i64 8926, !31, i64 8928, !31, i64 8930, !31, i64 8932, !31, i64 8934, !31, i64 8936, !31, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !31, i64 8944, !31, i64 8946, !31, i64 8948, !31, i64 8950, !31, i64 8952, !31, i64 8954, !12, i64 8956, !12, i64 8960, !11, i64 8964, !31, i64 8968, !31, i64 8970, !12, i64 8972, !31, i64 8976, !31, i64 8978, !31, i64 8980, !31, i64 8982, !32, i64 8984, !8, i64 9760, !8, i64 9772, !31, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !12, i64 10904, !12, i64 10908, !11, i64 10912, !31, i64 10916, !31, i64 10918, !31, i64 10920, !31, i64 10922, !31, i64 10924, !31, i64 10926, !33, i64 10928}
!31 = !{!"short", !8, i64 0}
!32 = !{!"ColorBand", !31, i64 0, !31, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!33 = !{!"WalkNavigation", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !31, i64 24, !8, i64 26}
!34 = !{!30, !11, i64 8524}
!35 = !{!20, !11, i64 0}
!36 = !{!37, !12, i64 24}
!37 = !{!"View2D", !38, i64 0, !38, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !31, i64 104, !31, i64 106, !31, i64 108, !31, i64 110, !31, i64 112, !31, i64 114, !31, i64 116, !31, i64 118, !31, i64 120, !31, i64 122, !31, i64 124, !31, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!38 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!39 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!40 = !{!37, !12, i64 28}
!41 = !{!20, !11, i64 28}
!42 = !{!43, !31, i64 208}
!43 = !{!"ARegion", !7, i64 0, !7, i64 8, !37, i64 16, !39, i64 176, !39, i64 192, !31, i64 208, !31, i64 210, !31, i64 212, !31, i64 214, !31, i64 216, !31, i64 218, !12, i64 220, !31, i64 224, !31, i64 226, !31, i64 228, !31, i64 230, !31, i64 232, !31, i64 234, !31, i64 236, !31, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!44 = !{!30, !31, i64 8948}
!45 = !{!43, !31, i64 210}
!46 = !{!6, !7, i64 72}
!47 = !{!20, !7, i64 96}
!48 = !{!49, !7, i64 8}
!49 = !{!"Link", !7, i64 0, !7, i64 8}
!50 = !{!20, !11, i64 104}
!51 = !{!20, !11, i64 16}
!52 = !{!14, !11, i64 32}
!53 = !{!20, !11, i64 12}
!54 = !{!8, !8, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
