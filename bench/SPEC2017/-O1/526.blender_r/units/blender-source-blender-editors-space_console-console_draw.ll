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

; Function Attrs: nounwind uwtable
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @console_scrollback_prompt_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void %3(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %1) #11
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @console_textview_main(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ConsoleLine, align 8
  %4 = alloca %struct.TextViewContext, align 8
  %5 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 9223372034707292159, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 8
  store ptr @console_textview_begin, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 9
  store ptr @console_textview_end, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 12
  store ptr @console_textview_step, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 13
  store ptr @console_textview_line_get, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 14
  store ptr @console_textview_line_color, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 15
  store ptr @console_textview_const_colors, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 10
  store ptr %0, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 11
  store ptr null, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !58
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !62
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !67
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, %22
  %29 = fptosi float %28 to i32
  store i32 %29, ptr %4, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !69
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 6
  store i32 %32, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !74
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 7
  store i32 %36, ptr %37, align 4, !tbaa !75
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !76
  %40 = sitofp i16 %39 to float
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %42 = sitofp i16 %41 to float
  %43 = tail call float @llvm.fmuladd.f32(float %42, float 0xBFEB333340000000, float %40)
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 5
  store i32 %44, ptr %45, align 4, !tbaa !79
  %46 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 10
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #10
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 6
  store i32 1, ptr %51, align 4, !tbaa !42
  %52 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !44
  %54 = add nsw i32 %53, %50
  %55 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 3
  store i32 %54, ptr %55, align 4, !tbaa !44
  %56 = add nsw i32 %54, 1
  %57 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 2
  store i32 %56, ptr %57, align 8, !tbaa !45
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %59 = sext i32 %56 to i64
  %60 = tail call ptr %58(i64 noundef %59, ptr noundef nonnull @.str) #11
  %61 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !47
  %62 = shl i64 %49, 32
  %63 = ashr exact i64 %62, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr nonnull align 8 %48, i64 %63, i1 false)
  %64 = load ptr, ptr %61, align 8, !tbaa !47
  %65 = getelementptr inbounds i8, ptr %64, i64 %63
  %66 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !47
  %68 = load i32, ptr %52, align 4, !tbaa !44
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %67, i64 %70, i1 false)
  %71 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %71, ptr noundef nonnull %3) #11
  %72 = call i32 @textview_draw(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #11
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %74 = load ptr, ptr %61, align 8, !tbaa !47
  call void %73(ptr noundef %74) #11
  call void @BLI_remlink(ptr noundef nonnull %71, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @console_textview_height(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ConsoleLine, align 8
  %4 = alloca %struct.TextViewContext, align 8
  %5 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 9223372034707292159, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 8
  store ptr @console_textview_begin, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 9
  store ptr @console_textview_end, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 12
  store ptr @console_textview_step, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 13
  store ptr @console_textview_line_get, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 14
  store ptr @console_textview_line_color, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 15
  store ptr @console_textview_const_colors, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 10
  store ptr %0, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 11
  store ptr null, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !58
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = sitofp i32 %21 to float
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !62
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !67
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = fmul float %27, %22
  %29 = fptosi float %28 to i32
  store i32 %29, ptr %4, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !69
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 6
  store i32 %32, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !74
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 7
  store i32 %36, ptr %37, align 4, !tbaa !75
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !76
  %40 = sitofp i16 %39 to float
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %42 = sitofp i16 %41 to float
  %43 = tail call float @llvm.fmuladd.f32(float %42, float 0xBFEB333340000000, float %40)
  %44 = fptosi float %43 to i32
  %45 = getelementptr inbounds %struct.TextViewContext, ptr %4, i64 0, i32 5
  store i32 %44, ptr %45, align 4, !tbaa !79
  %46 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 10
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #10
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 6
  store i32 1, ptr %51, align 4, !tbaa !42
  %52 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !44
  %54 = add nsw i32 %53, %50
  %55 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 3
  store i32 %54, ptr %55, align 4, !tbaa !44
  %56 = add nsw i32 %54, 1
  %57 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 2
  store i32 %56, ptr %57, align 8, !tbaa !45
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %59 = sext i32 %56 to i64
  %60 = tail call ptr %58(i64 noundef %59, ptr noundef nonnull @.str) #11
  %61 = getelementptr inbounds %struct.ConsoleLine, ptr %3, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !47
  %62 = shl i64 %49, 32
  %63 = ashr exact i64 %62, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr nonnull align 8 %48, i64 %63, i1 false)
  %64 = load ptr, ptr %61, align 8, !tbaa !47
  %65 = getelementptr inbounds i8, ptr %64, i64 %63
  %66 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !47
  %68 = load i32, ptr %52, align 4, !tbaa !44
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %67, i64 %70, i1 false)
  %71 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %71, ptr noundef nonnull %3) #11
  %72 = call i32 @textview_draw(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #11
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %74 = load ptr, ptr %61, align 8, !tbaa !47
  call void %73(ptr noundef %74) #11
  call void @BLI_remlink(ptr noundef nonnull %71, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local i32 @console_char_pick(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ConsoleLine, align 8
  %5 = alloca %struct.TextViewContext, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %9 = load i32, ptr %2, align 4, !tbaa !80
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !76
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, -4
  %16 = tail call i32 @llvm.smin.i32(i32 %9, i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ 4, %3 ], [ %16, %11 ]
  store i32 %18, ptr %8, align 4, !tbaa !80
  %19 = getelementptr inbounds i32, ptr %2, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !80
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !81
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, -4
  %27 = tail call i32 @llvm.smin.i32(i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i32 [ 4, %17 ], [ %27, %22 ]
  %30 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  store i32 %29, ptr %30, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %31 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 8
  store ptr @console_textview_begin, ptr %31, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 9
  store ptr @console_textview_end, ptr %32, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 12
  store ptr @console_textview_step, ptr %33, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 13
  store ptr @console_textview_line_get, ptr %34, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 14
  store ptr @console_textview_line_color, ptr %35, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 15
  store ptr @console_textview_const_colors, ptr %36, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 10
  store ptr %0, ptr %37, align 8, !tbaa !55
  %38 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 11
  store ptr null, ptr %38, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  %43 = load i32, ptr %42, align 4, !tbaa !59
  %44 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 2
  store i32 %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !61
  %47 = sitofp i32 %46 to float
  %48 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !62
  %49 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !67
  %50 = sitofp i32 %49 to float
  %51 = fmul float %48, %50
  %52 = fdiv float %51, 7.200000e+01
  %53 = fmul float %52, %47
  %54 = fptosi float %53 to i32
  store i32 %54, ptr %5, align 8, !tbaa !68
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %56 = load float, ptr %55, align 8, !tbaa !69
  %57 = fptosi float %56 to i32
  %58 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 6
  store i32 %57, ptr %58, align 8, !tbaa !73
  %59 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !74
  %61 = fptosi float %60 to i32
  %62 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 7
  store i32 %61, ptr %62, align 4, !tbaa !75
  %63 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %64 = load i16, ptr %63, align 8, !tbaa !76
  %65 = sitofp i16 %64 to float
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !78
  %67 = sitofp i16 %66 to float
  %68 = tail call float @llvm.fmuladd.f32(float %67, float 0xBFEB333340000000, float %65)
  %69 = fptosi float %68 to i32
  %70 = getelementptr inbounds %struct.TextViewContext, ptr %5, i64 0, i32 5
  store i32 %69, ptr %70, align 4, !tbaa !79
  %71 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 10
  %74 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #10
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 6
  store i32 1, ptr %76, align 4, !tbaa !42
  %77 = getelementptr inbounds %struct.ConsoleLine, ptr %72, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !44
  %79 = add nsw i32 %78, %75
  %80 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  store i32 %79, ptr %80, align 4, !tbaa !44
  %81 = add nsw i32 %79, 1
  %82 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 2
  store i32 %81, ptr %82, align 8, !tbaa !45
  %83 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %84 = sext i32 %81 to i64
  %85 = tail call ptr %83(i64 noundef %84, ptr noundef nonnull @.str) #11
  %86 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  store ptr %85, ptr %86, align 8, !tbaa !47
  %87 = shl i64 %74, 32
  %88 = ashr exact i64 %87, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr nonnull align 8 %73, i64 %88, i1 false)
  %89 = load ptr, ptr %86, align 8, !tbaa !47
  %90 = getelementptr inbounds i8, ptr %89, i64 %88
  %91 = getelementptr inbounds %struct.ConsoleLine, ptr %72, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !47
  %93 = load i32, ptr %77, align 4, !tbaa !44
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %90, ptr align 1 %92, i64 %95, i1 false)
  %96 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %96, ptr noundef nonnull %4) #11
  %97 = call i32 @textview_draw(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #11
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %99 = load ptr, ptr %86, align 8, !tbaa !47
  call void %98(ptr noundef %99) #11
  call void @BLI_remlink(ptr noundef nonnull %96, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  %100 = load i32, ptr %6, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %100
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @console_textview_begin(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = sitofp i32 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !62
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !67
  %9 = sitofp i32 %8 to float
  %10 = fmul float %7, %9
  %11 = fdiv float %10, 7.200000e+01
  %12 = fmul float %11, %6
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !58
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  store ptr %21, ptr %22, align 8, !tbaa !83
  %23 = icmp ne ptr %21, null
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @console_textview_end(ptr nocapture readnone %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @console_textview_step(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  store ptr %5, ptr %2, align 8, !tbaa !83
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @console_textview_line_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  store ptr %7, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !44
  store i32 %9, ptr %2, align 4, !tbaa !80
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_textview_line_color(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !86
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %109

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.SpaceConsole, ptr %11, i64 0, i32 9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load i32, ptr %0, align 8, !tbaa !68
  %15 = sdiv i32 %14, 6
  %16 = getelementptr inbounds %struct.SpaceConsole, ptr %11, i64 0, i32 10
  %17 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = load i8, ptr %16, align 1, !tbaa !88
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %9, %21
  %22 = phi ptr [ %34, %21 ], [ %16, %9 ]
  %23 = phi i32 [ %31, %21 ], [ 0, %9 ]
  %24 = phi i32 [ %29, %21 ], [ 0, %9 ]
  %25 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %22) #11
  %26 = add nsw i32 %25, %23
  %27 = icmp sgt i32 %26, %18
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = select i1 %27, i32 0, i32 %23
  %31 = add nsw i32 %30, %25
  %32 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %22) #11
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %22, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !88
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %21, !llvm.loop !89

37:                                               ; preds = %21, %9
  %38 = phi i32 [ 0, %9 ], [ %29, %21 ]
  %39 = phi i32 [ 0, %9 ], [ %31, %21 ]
  %40 = getelementptr inbounds %struct.ConsoleLine, ptr %13, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = load i32, ptr %17, align 8, !tbaa !87
  %43 = getelementptr inbounds %struct.ConsoleLine, ptr %13, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !92
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %41, i64 %45
  %47 = load i8, ptr %41, align 1, !tbaa !88
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %37, %60
  %50 = phi i32 [ %57, %60 ], [ %38, %37 ]
  %51 = phi i32 [ %61, %60 ], [ %39, %37 ]
  %52 = phi ptr [ %64, %60 ], [ %41, %37 ]
  %53 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %52) #11
  %54 = add nsw i32 %53, %51
  %55 = icmp sgt i32 %54, %42
  %56 = zext i1 %55 to i32
  %57 = add nuw nsw i32 %50, %56
  %58 = select i1 %55, i32 0, i32 %51
  %59 = icmp ult ptr %52, %46
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = add nsw i32 %58, %53
  %62 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %52) #11
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %52, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !88
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %49, !llvm.loop !89

67:                                               ; preds = %49, %60, %37
  %68 = phi i32 [ %38, %37 ], [ %57, %60 ], [ %57, %49 ]
  %69 = phi i32 [ %39, %37 ], [ %58, %49 ], [ %61, %60 ]
  %70 = getelementptr inbounds %struct.TextViewContext, ptr %0, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !93
  %72 = mul nsw i32 %71, %69
  %73 = load i32, ptr %0, align 8, !tbaa !68
  %74 = mul nsw i32 %73, %68
  %75 = load ptr, ptr %40, align 8, !tbaa !47
  %76 = load i32, ptr %43, align 8, !tbaa !92
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  %79 = load i32, ptr %17, align 8, !tbaa !87
  %80 = load i8, ptr %78, align 1, !tbaa !88
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %67, %82
  %83 = phi ptr [ %95, %82 ], [ %78, %67 ]
  %84 = phi i32 [ %92, %82 ], [ %69, %67 ]
  %85 = phi i32 [ %90, %82 ], [ %68, %67 ]
  %86 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %83) #11
  %87 = add nsw i32 %86, %84
  %88 = icmp sgt i32 %87, %79
  %89 = zext i1 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = select i1 %88, i32 0, i32 %84
  %92 = add nsw i32 %91, %86
  %93 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %83) #11
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %83, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !88
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %82, !llvm.loop !89

98:                                               ; preds = %82, %67
  %99 = phi i32 [ %68, %67 ], [ %90, %82 ]
  %100 = load i32, ptr %0, align 8, !tbaa !68
  %101 = mul nsw i32 %100, %99
  tail call void @UI_GetThemeColor3ubv(i32 noundef 114, ptr noundef %1) #11
  tail call void @glColor3ubv(ptr noundef %1) #11
  %102 = add nsw i32 %72, 3
  %103 = add nsw i32 %15, 2
  %104 = sub i32 %103, %74
  %105 = add i32 %104, %101
  %106 = add nsw i32 %72, 5
  %107 = load i32, ptr %0, align 8, !tbaa !68
  %108 = add nsw i32 %105, %107
  tail call void @glRecti(i32 noundef %102, i32 noundef %105, i32 noundef %106, i32 noundef %108) #11
  br label %109

109:                                              ; preds = %98, %3
  %110 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !42
  %112 = icmp ult i32 %111, 4
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = add nuw nsw i32 %111, 110
  tail call void @UI_GetThemeColor3ubv(i32 noundef %114, ptr noundef %1) #11
  br label %115

115:                                              ; preds = %109, %113
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @console_textview_const_colors(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @UI_GetThemeColor4ubv(i32 noundef 115, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare i32 @textview_draw(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #4

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #4

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #4

declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }

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
!48 = !{!49, !36, i64 32}
!49 = !{!"TextViewContext", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116}
!50 = !{!49, !36, i64 40}
!51 = !{!49, !36, i64 64}
!52 = !{!49, !36, i64 72}
!53 = !{!49, !36, i64 80}
!54 = !{!49, !36, i64 88}
!55 = !{!49, !36, i64 48}
!56 = !{!49, !36, i64 56}
!57 = !{!35, !40, i64 384}
!58 = !{!49, !40, i64 4}
!59 = !{!35, !40, i64 388}
!60 = !{!49, !40, i64 8}
!61 = !{!35, !40, i64 56}
!62 = !{!63, !41, i64 10908}
!63 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !64, i64 8472, !64, i64 8474, !64, i64 8476, !64, i64 8478, !64, i64 8480, !64, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !64, i64 8496, !64, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !64, i64 8528, !64, i64 8530, !64, i64 8532, !64, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !64, i64 8712, !64, i64 8714, !64, i64 8716, !64, i64 8718, !64, i64 8720, !64, i64 8722, !64, i64 8724, !64, i64 8726, !37, i64 8728, !64, i64 8896, !64, i64 8898, !64, i64 8900, !64, i64 8902, !64, i64 8904, !64, i64 8906, !64, i64 8908, !64, i64 8910, !40, i64 8912, !40, i64 8916, !64, i64 8920, !64, i64 8922, !64, i64 8924, !64, i64 8926, !64, i64 8928, !64, i64 8930, !64, i64 8932, !64, i64 8934, !64, i64 8936, !64, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !64, i64 8944, !64, i64 8946, !64, i64 8948, !64, i64 8950, !64, i64 8952, !64, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !64, i64 8968, !64, i64 8970, !41, i64 8972, !64, i64 8976, !64, i64 8978, !64, i64 8980, !64, i64 8982, !65, i64 8984, !37, i64 9760, !37, i64 9772, !64, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !64, i64 10916, !64, i64 10918, !64, i64 10920, !64, i64 10922, !64, i64 10924, !64, i64 10926, !66, i64 10928}
!64 = !{!"short", !37, i64 0}
!65 = !{!"ColorBand", !64, i64 0, !64, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!66 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !64, i64 24, !37, i64 26}
!67 = !{!63, !40, i64 8524}
!68 = !{!49, !40, i64 0}
!69 = !{!70, !41, i64 24}
!70 = !{!"View2D", !71, i64 0, !71, i64 16, !72, i64 32, !72, i64 48, !72, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !64, i64 104, !64, i64 106, !64, i64 108, !64, i64 110, !64, i64 112, !64, i64 114, !64, i64 116, !64, i64 118, !64, i64 120, !64, i64 122, !64, i64 124, !64, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!71 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!72 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!73 = !{!49, !40, i64 24}
!74 = !{!70, !41, i64 28}
!75 = !{!49, !40, i64 28}
!76 = !{!77, !64, i64 208}
!77 = !{!"ARegion", !36, i64 0, !36, i64 8, !70, i64 16, !72, i64 176, !72, i64 192, !64, i64 208, !64, i64 210, !64, i64 212, !64, i64 214, !64, i64 216, !64, i64 218, !41, i64 220, !64, i64 224, !64, i64 226, !64, i64 228, !64, i64 230, !64, i64 232, !64, i64 234, !64, i64 236, !64, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!78 = !{!63, !64, i64 8948}
!79 = !{!49, !40, i64 20}
!80 = !{!40, !40, i64 0}
!81 = !{!77, !64, i64 210}
!82 = !{!35, !36, i64 72}
!83 = !{!49, !36, i64 96}
!84 = !{!85, !36, i64 8}
!85 = !{!"Link", !36, i64 0, !36, i64 8}
!86 = !{!49, !40, i64 104}
!87 = !{!49, !40, i64 16}
!88 = !{!37, !37, i64 0}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!43, !40, i64 32}
!93 = !{!49, !40, i64 12}
