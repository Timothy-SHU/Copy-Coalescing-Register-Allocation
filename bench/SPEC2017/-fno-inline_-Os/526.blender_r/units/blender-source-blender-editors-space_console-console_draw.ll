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
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 10
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #10
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 6
  store i32 1, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = add nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !44
  %13 = add nsw i32 %11, 1
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !45
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %16 = sext i32 %13 to i64
  %17 = tail call ptr %15(i64 noundef %16, ptr noundef nonnull @.str) #11
  %18 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !47
  %19 = shl i64 %6, 32
  %20 = ashr exact i64 %19, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr nonnull align 8 %5, i64 %20, i1 false)
  %21 = load ptr, ptr %18, align 8, !tbaa !47
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  %23 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = load i32, ptr %9, align 4, !tbaa !44
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
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
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
define internal fastcc i32 @console_textview_main__internal(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !48 {
  %7 = alloca %struct.ConsoleLine, align 8
  %8 = alloca %struct.TextViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #12
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, i8 0, i64 112, i1 false)
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 8
  store ptr @console_textview_begin, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 9
  store ptr @console_textview_end, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 12
  store ptr @console_textview_step, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 13
  store ptr @console_textview_line_get, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 14
  store ptr @console_textview_line_color, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 15
  store ptr @console_textview_const_colors, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 10
  store ptr %0, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 1
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !57
  store <2 x i32> %19, ptr %18, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !59
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !64
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, %22
  %29 = fptosi float %28 to i32
  store i32 %29, ptr %8, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !66
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !70
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 7
  store i32 %34, ptr %35, align 4, !tbaa !71
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %37 = load i16, ptr %36, align 8, !tbaa !72
  %38 = sitofp i16 %37 to float
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !74
  %40 = sitofp i16 %39 to float
  %41 = tail call float @llvm.fmuladd.f32(float %40, float 0xBFEB333340000000, float %38)
  %42 = getelementptr inbounds %struct.TextViewContext, ptr %8, i64 0, i32 5
  %43 = insertelement <2 x float> poison, float %41, i64 0
  %44 = insertelement <2 x float> %43, float %31, i64 1
  %45 = fptosi <2 x float> %44 to <2 x i32>
  store <2 x i32> %45, ptr %42, align 4, !tbaa !57
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
  store i32 0, ptr %4, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %7 = load i32, ptr %2, align 4, !tbaa !57
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !72
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, -4
  %14 = tail call i32 @llvm.smin.i32(i32 %7, i32 %13)
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ 4, %3 ], [ %14, %9 ]
  store i32 %16, ptr %6, align 4, !tbaa !57
  %17 = getelementptr inbounds i32, ptr %2, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !57
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %22 = load i16, ptr %21, align 2, !tbaa !75
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %23, -4
  %25 = tail call i32 @llvm.smin.i32(i32 %18, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i32 [ 4, %15 ], [ %25, %20 ]
  %28 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !57
  %29 = call fastcc i32 @console_textview_main__internal(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %30 = load i32, ptr %4, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @console_textview_begin(ptr nocapture noundef %0) #6 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = sitofp i32 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !59
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !64
  %9 = sitofp i32 %8 to float
  %10 = fmul float %7, %9
  %11 = fdiv float %10, 7.200000e+01
  %12 = fmul float %11, %6
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %0, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %15 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !57
  store <2 x i32> %16, ptr %15, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  store ptr %18, ptr %19, align 8, !tbaa !78
  %20 = icmp ne ptr %18, null
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @console_textview_end(ptr nocapture readnone %0) #7 !PGOFuncName !79 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @console_textview_step(ptr nocapture noundef %0) #6 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  store ptr %5, ptr %2, align 8, !tbaa !78
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @console_textview_line_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #6 !PGOFuncName !83 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  store ptr %7, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !44
  store i32 %9, ptr %2, align 4, !tbaa !57
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_textview_line_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !84 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !85
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %13, i64 0, i32 9, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !57
  %16 = load i32, ptr %0, align 8, !tbaa !65
  %17 = sdiv i32 %16, 6
  %18 = getelementptr inbounds %struct.SpaceConsole, ptr %13, i64 0, i32 10
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !86
  call fastcc void @console_cursor_wrap_offset(ptr noundef nonnull %18, i32 noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #13
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %15, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = load i32, ptr %19, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %15, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !87
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  call fastcc void @console_cursor_wrap_offset(ptr noundef %22, i32 noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !88
  %30 = load i32, ptr %5, align 4, !tbaa !57
  %31 = mul nsw i32 %30, %29
  %32 = load i32, ptr %0, align 8, !tbaa !65
  %33 = load i32, ptr %4, align 4, !tbaa !57
  %34 = mul nsw i32 %33, %32
  %35 = load ptr, ptr %21, align 8, !tbaa !47
  %36 = load i32, ptr %24, align 8, !tbaa !87
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = load i32, ptr %19, align 8, !tbaa !86
  call fastcc void @console_cursor_wrap_offset(ptr noundef %38, i32 noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #13
  %40 = load i32, ptr %0, align 8, !tbaa !65
  %41 = load i32, ptr %4, align 4, !tbaa !57
  %42 = mul nsw i32 %41, %40
  tail call void @UI_GetThemeColor3ubv(i32 noundef 114, ptr noundef %1) #11
  tail call void @glColor3ubv(ptr noundef %1) #11
  %43 = add nsw i32 %31, 3
  %44 = add nsw i32 %17, 2
  %45 = sub i32 %44, %34
  %46 = add i32 %45, %42
  %47 = add nsw i32 %31, 5
  %48 = load i32, ptr %0, align 8, !tbaa !65
  %49 = add nsw i32 %46, %48
  tail call void @glRecti(i32 noundef %43, i32 noundef %46, i32 noundef %47, i32 noundef %49) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %50

50:                                               ; preds = %11, %3
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %7, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !42
  tail call fastcc void @console_line_color(ptr noundef %1, i32 noundef %52) #13
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_textview_const_colors(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !89 {
  tail call void @UI_GetThemeColor4ubv(i32 noundef 115, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare i32 @textview_draw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_cursor_wrap_offset(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef readnone %4) unnamed_addr #0 !PGOFuncName !90 {
  %6 = load i8, ptr %0, align 1, !tbaa !91
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %4, null
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi ptr [ %0, %8 ], [ %27, %23 ]
  %12 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %11) #11
  %13 = load i32, ptr %3, align 4, !tbaa !57
  %14 = add nsw i32 %13, %12
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4, !tbaa !57
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %2, align 4, !tbaa !57
  store i32 0, ptr %3, align 4, !tbaa !57
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ 0, %16 ], [ %13, %10 ]
  %21 = icmp ult ptr %11, %4
  %22 = or i1 %9, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = add nsw i32 %20, %12
  store i32 %24, ptr %3, align 4, !tbaa !57
  %25 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %11) #11
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %11, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !91
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %10, !llvm.loop !92

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
define internal fastcc void @console_line_color(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !94 {
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
!34 = !{!35, !36, i64 88}
!35 = !{!"SpaceConsole", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !40, i64 56, !40, i64 60, !39, i64 64, !39, i64 80, !37, i64 96, !37, i64 352, !40, i64 384, !40, i64 388}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!43, !40, i64 36}
!43 = !{!"ConsoleLine", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !40, i64 36}
!44 = !{!43, !40, i64 20}
!45 = !{!43, !40, i64 16}
!46 = !{!36, !36, i64 0}
!47 = !{!43, !36, i64 24}
!48 = !{!"console_draw.c:console_textview_main__internal"}
!49 = !{!50, !36, i64 32}
!50 = !{!"TextViewContext", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116}
!51 = !{!50, !36, i64 40}
!52 = !{!50, !36, i64 64}
!53 = !{!50, !36, i64 72}
!54 = !{!50, !36, i64 80}
!55 = !{!50, !36, i64 88}
!56 = !{!50, !36, i64 48}
!57 = !{!40, !40, i64 0}
!58 = !{!35, !40, i64 56}
!59 = !{!60, !41, i64 10908}
!60 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !61, i64 8472, !61, i64 8474, !61, i64 8476, !61, i64 8478, !61, i64 8480, !61, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !61, i64 8496, !61, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !61, i64 8528, !61, i64 8530, !61, i64 8532, !61, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !61, i64 8712, !61, i64 8714, !61, i64 8716, !61, i64 8718, !61, i64 8720, !61, i64 8722, !61, i64 8724, !61, i64 8726, !37, i64 8728, !61, i64 8896, !61, i64 8898, !61, i64 8900, !61, i64 8902, !61, i64 8904, !61, i64 8906, !61, i64 8908, !61, i64 8910, !40, i64 8912, !40, i64 8916, !61, i64 8920, !61, i64 8922, !61, i64 8924, !61, i64 8926, !61, i64 8928, !61, i64 8930, !61, i64 8932, !61, i64 8934, !61, i64 8936, !61, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !61, i64 8944, !61, i64 8946, !61, i64 8948, !61, i64 8950, !61, i64 8952, !61, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !61, i64 8968, !61, i64 8970, !41, i64 8972, !61, i64 8976, !61, i64 8978, !61, i64 8980, !61, i64 8982, !62, i64 8984, !37, i64 9760, !37, i64 9772, !61, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !61, i64 10916, !61, i64 10918, !61, i64 10920, !61, i64 10922, !61, i64 10924, !61, i64 10926, !63, i64 10928}
!61 = !{!"short", !37, i64 0}
!62 = !{!"ColorBand", !61, i64 0, !61, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!63 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !61, i64 24, !37, i64 26}
!64 = !{!60, !40, i64 8524}
!65 = !{!50, !40, i64 0}
!66 = !{!67, !41, i64 24}
!67 = !{!"View2D", !68, i64 0, !68, i64 16, !69, i64 32, !69, i64 48, !69, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !61, i64 112, !61, i64 114, !61, i64 116, !61, i64 118, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!68 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!69 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!70 = !{!67, !41, i64 28}
!71 = !{!50, !40, i64 28}
!72 = !{!73, !61, i64 208}
!73 = !{!"ARegion", !36, i64 0, !36, i64 8, !67, i64 16, !69, i64 176, !69, i64 192, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !41, i64 220, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !61, i64 232, !61, i64 234, !61, i64 236, !61, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!74 = !{!60, !61, i64 8948}
!75 = !{!73, !61, i64 210}
!76 = !{!"console_draw.c:console_textview_begin"}
!77 = !{!35, !36, i64 72}
!78 = !{!50, !36, i64 96}
!79 = !{!"console_draw.c:console_textview_end"}
!80 = !{!"console_draw.c:console_textview_step"}
!81 = !{!82, !36, i64 8}
!82 = !{!"Link", !36, i64 0, !36, i64 8}
!83 = !{!"console_draw.c:console_textview_line_get"}
!84 = !{!"console_draw.c:console_textview_line_color"}
!85 = !{!50, !40, i64 104}
!86 = !{!50, !40, i64 16}
!87 = !{!43, !40, i64 32}
!88 = !{!50, !40, i64 12}
!89 = !{!"console_draw.c:console_textview_const_colors"}
!90 = !{!"console_draw.c:console_cursor_wrap_offset"}
!91 = !{!37, !37, i64 0}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"console_draw.c:console_line_color"}
