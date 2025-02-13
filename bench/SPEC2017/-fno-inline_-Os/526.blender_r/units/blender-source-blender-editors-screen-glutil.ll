; ModuleID = 'blender/source/blender/editors/screen/glutil.c'
source_filename = "blender/source/blender/editors/screen/glutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@stipple_halftone = dso_local local_unnamed_addr constant [128 x i8] c"\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU", align 16
@stipple_quarttone = dso_local local_unnamed_addr constant [128 x i8] c"\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00", align 16
@stipple_diag_stripes_pos = dso_local local_unnamed_addr constant [128 x i8] c"\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F", align 16
@stipple_diag_stripes_neg = dso_local local_unnamed_addr constant [128 x i8] c"\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80", align 16
@stipple_checker_8px = dso_local constant [128 x i8] c"\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF", align 16
@U = external local_unnamed_addr global %struct.UserDef, align 8
@curmode = internal unnamed_addr global i32 0, align 4
@pointhack = internal unnamed_addr global i32 0, align 4
@Squaredot = internal global [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@bglPolygonOffset.winmat = internal global [16 x float] zeroinitializer, align 16
@bglPolygonOffset.offset = internal unnamed_addr global float 0.000000e+00, align 4
@get_cached_work_texture.texid = internal global i32 -1, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"tbuf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@switch.table.glaDrawPixelsTexScaled = private unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 4, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fdrawline(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  tail call void @glBegin(i32 noundef 3) #9
  store float %0, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  store float %2, ptr %5, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fdrawbox(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  tail call void @glBegin(i32 noundef 3) #9
  store float %0, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  store float %0, ptr %5, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  store float %2, ptr %5, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  store float %2, ptr %5, align 4, !tbaa !34
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  store float %0, ptr %5, align 4, !tbaa !34
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fdrawcheckerboard(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 2631720, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 3289650, ptr %6, align 4
  call void @glColor3ubv(ptr noundef nonnull %5) #9
  call void @glRectf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #9
  call void @glColor3ubv(ptr noundef nonnull %6) #9
  call void @glEnable(i32 noundef 2882) #9
  call void @glPolygonStipple(ptr noundef nonnull @stipple_checker_8px) #9
  call void @glRectf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #9
  call void @glDisable(i32 noundef 2882) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sdrawline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  tail call void @glBegin(i32 noundef 3) #9
  store i32 %0, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  store i32 %2, ptr %5, align 4, !tbaa !38
  store i32 %3, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sdrawbox(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  tail call void @glBegin(i32 noundef 3) #9
  store i32 %0, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  store i32 %0, ptr %5, align 4, !tbaa !38
  store i32 %3, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  store i32 %2, ptr %5, align 4, !tbaa !38
  store i32 %3, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  store i32 %2, ptr %5, align 4, !tbaa !38
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  store i32 %0, ptr %5, align 4, !tbaa !38
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #9
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @setlinestyle(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @glDisable(i32 noundef 2852) #9
  br label %9

4:                                                ; preds = %1
  tail call void @glEnable(i32 noundef 2852) #9
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !40
  %6 = fcmp ogt float %5, 1.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @glLineStipple(i32 noundef %0, i16 noundef zeroext -13108) #9
  br label %9

8:                                                ; preds = %4
  tail call void @glLineStipple(i32 noundef %0, i16 noundef zeroext -21846) #9
  br label %9

9:                                                ; preds = %7, %8, %3
  ret void
}

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_inverted_drawing(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 5379, i32 5386
  tail call void @glLogicOp(i32 noundef %3) #9
  %4 = select i1 %2, ptr @glDisable, ptr @glEnable
  tail call void %4(i32 noundef 3058) #9, !callees !47
  %5 = select i1 %2, ptr @glEnable, ptr @glDisable
  tail call void %5(i32 noundef 3024) #9, !callees !47
  ret void
}

; Function Attrs: optsize
declare void @glLogicOp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fdrawXORcirc(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  tail call void @set_inverted_drawing(i32 noundef 1) #10
  tail call void @glPushMatrix() #9
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #9
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %2, i32 noundef 20) #10
  tail call void @glPopMatrix() #9
  tail call void @set_inverted_drawing(i32 noundef 0) #10
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glutil_draw_lined_arc(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 3) #9
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sitofp i32 %7 to float
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ 0, %6 ], [ %18, %9 ]
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %8
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %1, float %0)
  %14 = tail call float @cosf(float noundef %13) #9
  %15 = fmul float %14, %2
  %16 = tail call float @sinf(float noundef %13) #9
  %17 = fmul float %16, %2
  tail call void @glVertex2f(float noundef %15, float noundef %17) #9
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %9, !llvm.loop !48

20:                                               ; preds = %9, %4
  tail call void @glEnd() #9
  ret void
}

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glutil_draw_filled_arc(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 6) #9
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sitofp i32 %7 to float
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ 0, %6 ], [ %18, %9 ]
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %8
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %1, float %0)
  %14 = tail call float @cosf(float noundef %13) #9
  %15 = fmul float %14, %2
  %16 = tail call float @sinf(float noundef %13) #9
  %17 = fmul float %16, %2
  tail call void @glVertex2f(float noundef %15, float noundef %17) #9
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %9, !llvm.loop !50

20:                                               ; preds = %9, %4
  tail call void @glEnd() #9
  ret void
}

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @glaGetOneInteger(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @glGetIntegerv(i32 noundef %0, ptr noundef nonnull %2) #9
  %3 = load i32, ptr %2, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @glaGetOneFloat(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @glGetFloatv(i32 noundef %0, ptr noundef nonnull %2) #9
  %3 = load float, ptr %2, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret float %3
}

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaRasterPosSafe2f(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !tbaa !51
  tail call void @glRasterPos2f(float noundef %2, float noundef %3) #9
  %6 = fsub float %0, %2
  %7 = fsub float %1, %3
  call void @glBitmap(i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %6, float noundef %7, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBitmap(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawPixelsTexScaled(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = tail call float @glaGetOneFloat(i32 noundef 3350) #10
  %14 = tail call float @glaGetOneFloat(i32 noundef 3351) #10
  %15 = tail call i32 @glaGetOneInteger(i32 noundef 3553) #10
  %16 = tail call i32 @glaGetOneInteger(i32 noundef 3314) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  %17 = call fastcc i32 @get_cached_work_texture(ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #9
  tail call void @glPixelStorei(i32 noundef 3314, i32 noundef %2) #9
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %17) #9
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33071) #9
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33071) #9
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %6) #9
  %18 = load i32, ptr %11, align 4
  %19 = icmp slt i32 %18, %2
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = load i32, ptr %12, align 4
  %22 = icmp slt i32 %21, %3
  %23 = icmp sgt i32 %18, 2
  %24 = and i1 %23, %22
  br i1 %24, label %28, label %33

25:                                               ; preds = %10
  %26 = icmp sgt i32 %18, 2
  %27 = load i32, ptr %12, align 4
  br i1 %26, label %28, label %33

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %21, %20 ], [ %27, %25 ]
  %30 = freeze i32 %29
  %31 = icmp sgt i32 %30, 2
  %32 = select i1 %31, i32 2, i32 0
  br label %33

33:                                               ; preds = %28, %20, %25
  %34 = phi i32 [ %27, %25 ], [ %21, %20 ], [ %30, %28 ]
  %35 = phi i1 [ false, %25 ], [ false, %20 ], [ %31, %28 ]
  %36 = phi i32 [ 0, %25 ], [ 0, %20 ], [ %32, %28 ]
  %37 = sub nsw i32 %18, %36
  %38 = sub nsw i32 %34, %36
  %39 = add i32 %2, -1
  %40 = add i32 %39, %37
  %41 = sdiv i32 %40, %37
  %42 = add i32 %3, -1
  %43 = add i32 %42, %38
  %44 = sdiv i32 %43, %38
  %45 = add i32 %4, -6406
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %166

47:                                               ; preds = %33
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [4 x i32], ptr @switch.table.glaDrawPixelsTexScaled, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %5, 5126
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 34842, i32 noundef %18, i32 noundef %34, i32 noundef 0, i32 noundef %4, i32 noundef 5126, ptr noundef null) #9
  br label %54

53:                                               ; preds = %47
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef %18, i32 noundef %34, i32 noundef 0, i32 noundef %4, i32 noundef 5121, ptr noundef null) #9
  br label %54

54:                                               ; preds = %53, %52
  %55 = icmp sgt i32 %44, 0
  br i1 %55, label %56, label %165

56:                                               ; preds = %54
  %57 = icmp sgt i32 %41, 0
  %58 = sitofp i32 %18 to float
  %59 = sitofp i32 %34 to float
  %60 = zext nneg i32 %41 to i64
  br label %61

61:                                               ; preds = %56, %162
  %62 = phi i32 [ 0, %56 ], [ %163, %162 ]
  br i1 %57, label %63, label %162

63:                                               ; preds = %61
  %64 = mul nsw i32 %62, %38
  %65 = sub nsw i32 %3, %64
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %34)
  %67 = icmp ne i32 %62, 0
  %68 = and i1 %35, %67
  %69 = icmp sgt i32 %65, %34
  %70 = select i1 %35, i1 %69, i1 false
  %71 = sext i1 %70 to i32
  %72 = sitofp i32 %64 to float
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %14, float %1)
  %74 = icmp sgt i32 %66, %36
  %75 = mul nsw i32 %64, %2
  %76 = add i32 %75, -1
  %77 = icmp slt i32 %65, %34
  %78 = add i32 %64, -1
  %79 = add i32 %78, %66
  %80 = mul nsw i32 %79, %2
  %81 = add i32 %80, -1
  %82 = uitofp i1 %68 to float
  %83 = fdiv float %82, %59
  %84 = tail call float @llvm.fmuladd.f32(float %82, float %14, float %73)
  %85 = add nsw i32 %66, %71
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %86, %59
  %88 = fmul float %14, %86
  %89 = tail call float @llvm.fmuladd.f32(float %88, float %9, float %73)
  br label %90

90:                                               ; preds = %63, %159
  %91 = phi i64 [ 0, %63 ], [ %160, %159 ]
  %92 = trunc i64 %91 to i32
  %93 = mul nsw i32 %37, %92
  %94 = sub nsw i32 %2, %93
  %95 = tail call i32 @llvm.smin.i32(i32 %94, i32 %18)
  %96 = icmp ne i64 %91, 0
  %97 = and i1 %35, %96
  %98 = icmp sgt i32 %94, %18
  %99 = select i1 %35, i1 %98, i1 false
  %100 = sext i1 %99 to i32
  %101 = sitofp i32 %93 to float
  %102 = tail call float @llvm.fmuladd.f32(float %101, float %13, float %0)
  %103 = icmp sgt i32 %95, %36
  %104 = select i1 %103, i1 %74, i1 false
  br i1 %104, label %105, label %159

105:                                              ; preds = %90
  %106 = add i32 %93, %75
  %107 = mul i32 %106, %50
  %108 = sext i32 %107 to i64
  %109 = icmp slt i32 %94, %18
  br i1 %51, label %110, label %130

110:                                              ; preds = %105
  %111 = getelementptr inbounds float, ptr %7, i64 %108
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %95, i32 noundef %66, i32 noundef %4, i32 noundef 5126, ptr noundef %111) #9
  br i1 %109, label %112, label %118

112:                                              ; preds = %110
  %113 = add i32 %76, %93
  %114 = add i32 %113, %95
  %115 = mul i32 %114, %50
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, ptr %7, i64 %116
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %95, i32 noundef 0, i32 noundef 1, i32 noundef %66, i32 noundef %4, i32 noundef 5126, ptr noundef %117) #9
  br label %118

118:                                              ; preds = %112, %110
  br i1 %77, label %119, label %150

119:                                              ; preds = %118
  %120 = add i32 %93, %80
  %121 = mul i32 %120, %50
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, ptr %7, i64 %122
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef %66, i32 noundef %95, i32 noundef 1, i32 noundef %4, i32 noundef 5126, ptr noundef %123) #9
  br i1 %109, label %124, label %150

124:                                              ; preds = %119
  %125 = add i32 %81, %93
  %126 = add i32 %125, %95
  %127 = mul i32 %126, %50
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, ptr %7, i64 %128
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %95, i32 noundef %66, i32 noundef 1, i32 noundef 1, i32 noundef %4, i32 noundef 5126, ptr noundef %129) #9
  br label %150

130:                                              ; preds = %105
  %131 = getelementptr inbounds i8, ptr %7, i64 %108
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %95, i32 noundef %66, i32 noundef %4, i32 noundef 5121, ptr noundef %131) #9
  br i1 %109, label %132, label %138

132:                                              ; preds = %130
  %133 = add i32 %76, %93
  %134 = add i32 %133, %95
  %135 = mul i32 %134, %50
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %7, i64 %136
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %95, i32 noundef 0, i32 noundef 1, i32 noundef %66, i32 noundef %4, i32 noundef 5121, ptr noundef %137) #9
  br label %138

138:                                              ; preds = %132, %130
  br i1 %77, label %139, label %150

139:                                              ; preds = %138
  %140 = add i32 %93, %80
  %141 = mul i32 %140, %50
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %7, i64 %142
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef %66, i32 noundef %95, i32 noundef 1, i32 noundef %4, i32 noundef 5121, ptr noundef %143) #9
  br i1 %109, label %144, label %150

144:                                              ; preds = %139
  %145 = add i32 %81, %93
  %146 = add i32 %145, %95
  %147 = mul i32 %146, %50
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %7, i64 %148
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %95, i32 noundef %66, i32 noundef 1, i32 noundef 1, i32 noundef %4, i32 noundef 5121, ptr noundef %149) #9
  br label %150

150:                                              ; preds = %138, %118, %139, %144, %119, %124
  tail call void @glEnable(i32 noundef 3553) #9
  tail call void @glBegin(i32 noundef 7) #9
  %151 = uitofp i1 %97 to float
  %152 = fdiv float %151, %58
  tail call void @glTexCoord2f(float noundef %152, float noundef %83) #9
  %153 = tail call float @llvm.fmuladd.f32(float %151, float %13, float %102)
  tail call void @glVertex2f(float noundef %153, float noundef %84) #9
  %154 = add nsw i32 %95, %100
  %155 = sitofp i32 %154 to float
  %156 = fdiv float %155, %58
  tail call void @glTexCoord2f(float noundef %156, float noundef %83) #9
  %157 = fmul float %13, %155
  %158 = tail call float @llvm.fmuladd.f32(float %157, float %8, float %102)
  tail call void @glVertex2f(float noundef %158, float noundef %84) #9
  tail call void @glTexCoord2f(float noundef %156, float noundef %87) #9
  tail call void @glVertex2f(float noundef %158, float noundef %89) #9
  tail call void @glTexCoord2f(float noundef %152, float noundef %87) #9
  tail call void @glVertex2f(float noundef %153, float noundef %89) #9
  tail call void @glEnd() #9
  tail call void @glDisable(i32 noundef 3553) #9
  br label %159

159:                                              ; preds = %90, %150
  %160 = add nuw nsw i64 %91, 1
  %161 = icmp eq i64 %160, %60
  br i1 %161, label %162, label %90, !llvm.loop !52

162:                                              ; preds = %159, %61
  %163 = add nuw nsw i32 %62, 1
  %164 = icmp eq i32 %163, %44
  br i1 %164, label %165, label %61, !llvm.loop !53

165:                                              ; preds = %162, %54
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %15) #9
  tail call void @glPixelStorei(i32 noundef 3314, i32 noundef %16) #9
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #9
  br label %166

166:                                              ; preds = %33, %165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_cached_work_texture(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !54 {
  %3 = load i32, ptr @get_cached_work_texture.texid, align 4, !tbaa !38
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = tail call i32 @glaGetOneInteger(i32 noundef 3553) #10
  tail call void @glGenTextures(i32 noundef 1, ptr noundef nonnull @get_cached_work_texture.texid) #9
  %7 = load i32, ptr @get_cached_work_texture.texid, align 4, !tbaa !38
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %7) #9
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #9
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #9
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %9 = tail call ptr %8(i64 noundef 262144, ptr noundef nonnull @.str) #9
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef 256, i32 noundef 256, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %9) #9
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %10(ptr noundef %9) #9
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %6) #9
  br label %11

11:                                               ; preds = %5, %2
  store i32 256, ptr %0, align 4, !tbaa !38
  store i32 256, ptr %1, align 4, !tbaa !38
  %12 = load i32, ptr @get_cached_work_texture.texid, align 4, !tbaa !38
  ret i32 %12
}

; Function Attrs: optsize
declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawPixelsTex(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  tail call void @glaDrawPixelsTexScaled(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef 1.000000e+00, float noundef 1.000000e+00) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4 x float], align 16
  %10 = tail call float @glaGetOneFloat(i32 noundef 3350) #10
  %11 = tail call float @glaGetOneFloat(i32 noundef 3351) #10
  %12 = fneg float %0
  %13 = fdiv float %12, %10
  %14 = fneg float %1
  %15 = fdiv float %14, %11
  %16 = tail call fastcc float @max_ff(float noundef %13) #10
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = tail call fastcc float @max_ff(float noundef %15) #10
  %20 = tail call float @llvm.floor.f32(float %19)
  %21 = fptosi float %20 to i32
  %22 = sitofp i32 %18 to float
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %10, float %0)
  %24 = sitofp i32 %21 to float
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %11, float %1)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @glGetFloatv(i32 noundef 3088, ptr noundef nonnull %9) #9
  %26 = sub nsw i32 %2, %18
  %27 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !34
  %29 = fsub float %28, %23
  %30 = fdiv float %29, %10
  %31 = call float @llvm.ceil.f32(float %30)
  %32 = fptosi float %31 to i32
  %33 = call fastcc i32 @min_ii(i32 noundef %26, i32 noundef %32) #10
  %34 = sub nsw i32 %3, %21
  %35 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %36, %25
  %38 = fdiv float %37, %11
  %39 = call float @llvm.ceil.f32(float %38)
  %40 = fptosi float %39 to i32
  %41 = call fastcc i32 @min_ii(i32 noundef %34, i32 noundef %40) #10
  %42 = icmp sgt i32 %33, 0
  %43 = icmp sgt i32 %41, 0
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %8
  %46 = call i32 @glaGetOneInteger(i32 noundef 3314) #10
  %47 = fcmp oge float %23, 0.000000e+00
  %48 = fcmp oge float %25, 0.000000e+00
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void @glRasterPos2f(float noundef %23, float noundef %25) #9
  br label %52

51:                                               ; preds = %45
  call void @glaRasterPosSafe2f(float noundef %23, float noundef %25, float noundef 0.000000e+00, float noundef 0.000000e+00) #10
  br label %52

52:                                               ; preds = %51, %50
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %4) #9
  switch i32 %5, label %68 [
    i32 6409, label %53
    i32 6403, label %53
  ]

53:                                               ; preds = %52, %52
  %54 = icmp eq i32 %6, 5126
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = mul nsw i32 %21, %4
  %57 = add nsw i32 %56, %18
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %7, i64 %58
  call void @glDrawPixels(i32 noundef %33, i32 noundef %41, i32 noundef %5, i32 noundef 5126, ptr noundef %59) #9
  br label %81

60:                                               ; preds = %53
  %61 = and i32 %6, -2
  %62 = icmp eq i32 %61, 5124
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = mul nsw i32 %21, %4
  %65 = add nsw i32 %64, %18
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %7, i64 %66
  call void @glDrawPixels(i32 noundef %33, i32 noundef %41, i32 noundef %5, i32 noundef %6, ptr noundef %67) #9
  br label %81

68:                                               ; preds = %52
  switch i32 %6, label %81 [
    i32 5126, label %69
    i32 5121, label %75
  ]

69:                                               ; preds = %68
  %70 = mul nsw i32 %21, %4
  %71 = add nsw i32 %70, %18
  %72 = shl nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, ptr %7, i64 %73
  call void @glDrawPixels(i32 noundef %33, i32 noundef %41, i32 noundef %5, i32 noundef 5126, ptr noundef %74) #9
  br label %81

75:                                               ; preds = %68
  %76 = mul nsw i32 %21, %4
  %77 = add nsw i32 %76, %18
  %78 = shl nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %7, i64 %79
  call void @glDrawPixels(i32 noundef %33, i32 noundef %41, i32 noundef %5, i32 noundef 5121, ptr noundef %80) #9
  br label %81

81:                                               ; preds = %68, %69, %75, %55, %60, %63
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %46) #9
  br label %82

82:                                               ; preds = %81, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #5 !PGOFuncName !56 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = select i1 %2, float %0, float 0.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !57 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawPixelsAuto(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !58
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  tail call void @glaDrawPixelsTex(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #10
  br label %13

12:                                               ; preds = %8
  tail call void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %7) #10
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDefine2DArea(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %0) #10
  %3 = add nsw i32 %2, 1
  %4 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %0) #10
  %5 = add nsw i32 %4, 1
  %6 = load i32, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !61
  tail call void @glViewport(i32 noundef %6, i32 noundef %8, i32 noundef %3, i32 noundef %5) #9
  %9 = load i32, ptr %0, align 4, !tbaa !59
  %10 = load i32, ptr %7, align 4, !tbaa !61
  tail call void @glScissor(i32 noundef %9, i32 noundef %10, i32 noundef %3, i32 noundef %5) #9
  tail call void @glMatrixMode(i32 noundef 5889) #9
  tail call void @glLoadIdentity() #9
  %11 = sitofp i32 %3 to double
  %12 = sitofp i32 %5 to double
  tail call void @glOrtho(double noundef 0.000000e+00, double noundef %11, double noundef 0.000000e+00, double noundef %12, double noundef -1.000000e+00, double noundef 1.000000e+00) #9
  tail call void @glTranslatef(float noundef 3.750000e-01, float noundef 3.750000e-01, float noundef 0.000000e+00) #9
  tail call void @glMatrixMode(i32 noundef 5888) #9
  tail call void @glLoadIdentity() #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !63
  %4 = load i32, ptr %0, align 4, !tbaa !59
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bglBegin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x float], align 16
  store i32 %0, ptr @curmode, align 4, !tbaa !38
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @glGetFloatv(i32 noundef 2834, ptr noundef nonnull %2) #9
  %5 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp olt float %6, 2.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  call void @glGetFloatv(i32 noundef 2833, ptr noundef nonnull %2) #9
  %9 = load float, ptr %2, align 16, !tbaa !34
  %10 = call fastcc i32 @iroundf(float noundef %9) #10
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 4)
  store i32 %11, ptr @pointhack, align 4
  br label %13

12:                                               ; preds = %4
  call void @glBegin(i32 noundef 0) #9
  br label %13

13:                                               ; preds = %12, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #5 !PGOFuncName !66 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bglVertex3fv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @curmode, align 4, !tbaa !38
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load i32, ptr @pointhack, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  tail call void @glRasterPos3fv(ptr noundef %0) #9
  %8 = load i32, ptr @pointhack, align 4, !tbaa !38
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  tail call void @glBitmap(i32 noundef %8, i32 noundef %8, float noundef %10, float noundef %10, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @Squaredot) #9
  br label %12

11:                                               ; preds = %4
  tail call void @glVertex3fv(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %7, %11, %1
  ret void
}

; Function Attrs: optsize
declare void @glRasterPos3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bglVertex3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @curmode, align 4, !tbaa !38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load i32, ptr @pointhack, align 4, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @glRasterPos3f(float noundef %0, float noundef %1, float noundef %2) #9
  %10 = load i32, ptr @pointhack, align 4, !tbaa !38
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 5.000000e-01
  tail call void @glBitmap(i32 noundef %10, i32 noundef %10, float noundef %12, float noundef %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @Squaredot) #9
  br label %14

13:                                               ; preds = %6
  tail call void @glVertex3f(float noundef %0, float noundef %1, float noundef %2) #9
  br label %14

14:                                               ; preds = %9, %13, %3
  ret void
}

; Function Attrs: optsize
declare void @glRasterPos3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bglVertex2fv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @curmode, align 4, !tbaa !38
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = load i32, ptr @pointhack, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  tail call void @glRasterPos2fv(ptr noundef %0) #9
  %8 = load i32, ptr @pointhack, align 4, !tbaa !38
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  %11 = sdiv i32 %8, 2
  %12 = sitofp i32 %11 to float
  tail call void @glBitmap(i32 noundef %8, i32 noundef %8, float noundef %10, float noundef %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @Squaredot) #9
  br label %14

13:                                               ; preds = %4
  tail call void @glVertex2fv(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %7, %13, %1
  ret void
}

; Function Attrs: optsize
declare void @glRasterPos2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bglEnd() local_unnamed_addr #0 {
  %1 = load i32, ptr @pointhack, align 4, !tbaa !38
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i32 0, ptr @pointhack, align 4, !tbaa !38
  br label %5

4:                                                ; preds = %0
  tail call void @glEnd() #9
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bgl_get_mats(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @glGetDoublev(i32 noundef 2982, ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 1
  tail call void @glGetDoublev(i32 noundef 2983, ptr noundef nonnull %2) #9
  %3 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 2
  tail call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %3) #9
  %4 = load double, ptr %0, align 8, !tbaa !67
  %5 = fcmp olt double %4, 0x3EB0C6F7A0B5ED8D
  %6 = fcmp ogt double %4, 0xBEB0C6F7A0B5ED8D
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store double 0.000000e+00, ptr %0, align 8, !tbaa !67
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds [16 x double], ptr %0, i64 0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !67
  %12 = fcmp olt double %11, 0x3EB0C6F7A0B5ED8D
  %13 = fcmp ogt double %11, 0xBEB0C6F7A0B5ED8D
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store double 0.000000e+00, ptr %10, align 8, !tbaa !67
  br label %16

16:                                               ; preds = %15, %9
  store i32 0, ptr %3, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 2, i64 1
  store i32 0, ptr %17, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @glGetDoublev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bglPolygonOffset(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fcmp une float %1, 0.000000e+00
  tail call void @glMatrixMode(i32 noundef 5889) #9
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  tail call void @glGetFloatv(i32 noundef 2983, ptr noundef nonnull @bglPolygonOffset.winmat) #9
  %5 = load float, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 15), align 4, !tbaa !34
  %6 = fcmp ogt float %5, 5.000000e-01
  %7 = fmul float %1, 0x3EE4F8B580000000
  %8 = fmul float %7, %0
  %9 = fmul float %1, 0x3F40624DE0000000
  %10 = select i1 %6, float %8, float %9
  %11 = load float, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  %12 = fsub float %11, %10
  store float %12, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  %13 = load float, ptr @bglPolygonOffset.offset, align 4, !tbaa !34
  %14 = fadd float %10, %13
  br label %19

15:                                               ; preds = %2
  %16 = load float, ptr @bglPolygonOffset.offset, align 4, !tbaa !34
  %17 = load float, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  %18 = fadd float %16, %17
  store float %18, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi float [ 0.000000e+00, %15 ], [ %14, %4 ]
  store float %20, ptr @bglPolygonOffset.offset, align 4, !tbaa !34
  tail call void @glLoadMatrixf(ptr noundef nonnull @bglPolygonOffset.winmat) #9
  tail call void @glMatrixMode(i32 noundef 5888) #9
  ret void
}

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawImBuf_glsl(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !73
  %18 = icmp ne i32 %17, 1
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !58
  %20 = icmp eq i16 %19, 1
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %31 = load float, ptr %30, align 8, !tbaa !75
  br i1 %29, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %28, float noundef %31, i8 noundef zeroext 1) #9
  br label %42

34:                                               ; preds = %26
  %35 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef %4, ptr noundef %5, float noundef %31, i8 noundef zeroext 1) #9
  br label %42

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %40 = load float, ptr %39, align 8, !tbaa !75
  %41 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %4, ptr noundef %5, ptr noundef %38, float noundef %40, i8 noundef zeroext 0) #9
  br label %42

42:                                               ; preds = %32, %34, %36
  %43 = phi i8 [ %33, %32 ], [ %35, %34 ], [ %41, %36 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %42
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %46 = load ptr, ptr %23, align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %16, align 4, !tbaa !73
  switch i32 %49, label %65 [
    i32 3, label %51
    i32 4, label %50
  ]

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ 6407, %48 ], [ 6408, %50 ]
  %53 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !77
  %55 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !78
  tail call void @glaDrawPixelsTex(float noundef %1, float noundef %2, i32 noundef %54, i32 noundef %56, i32 noundef %52, i32 noundef 5126, i32 noundef %3, ptr noundef nonnull %46) #10
  br label %65

57:                                               ; preds = %45
  %58 = load ptr, ptr %8, align 8, !tbaa !69
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !77
  %63 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !78
  tail call void @glaDrawPixelsTex(float noundef %1, float noundef %2, i32 noundef %62, i32 noundef %64, i32 noundef 6408, i32 noundef 5121, i32 noundef %3, ptr noundef nonnull %58) #10
  br label %65

65:                                               ; preds = %48, %51, %57, %60
  tail call void @IMB_colormanagement_finish_glsl_draw() #9
  br label %76

66:                                               ; preds = %42, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %67 = call ptr @IMB_display_buffer_acquire(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !77
  %72 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !78
  call void @glaDrawPixelsAuto(float noundef %1, float noundef %2, i32 noundef %71, i32 noundef %73, i32 noundef 6408, i32 noundef 5121, i32 noundef %3, ptr noundef nonnull %67) #10
  br label %74

74:                                               ; preds = %69, %66
  %75 = load ptr, ptr %7, align 8, !tbaa !55
  call void @IMB_display_buffer_release(ptr noundef %75) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %76

76:                                               ; preds = %65, %74, %11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef, ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @IMB_colormanagement_display_settings_from_ctx(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !55
  %9 = load ptr, ptr %7, align 8, !tbaa !55
  call void @glaDrawImBuf_glsl(ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %8, ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_display_settings_from_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpack(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i8
  %3 = lshr i32 %0, 8
  %4 = trunc i32 %3 to i8
  %5 = lshr i32 %0, 16
  %6 = trunc i32 %5 to i8
  tail call void @glColor3ub(i8 noundef zeroext %2, i8 noundef zeroext %4, i8 noundef zeroext %6) #9
  ret void
}

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @glaDrawBorderCorners(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !40
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !79
  %6 = sitofp i32 %5 to float
  %7 = fmul float %4, %6
  %8 = fdiv float %7, 7.200000e+01
  %9 = fmul float %8, 4.000000e+00
  %10 = fdiv float %9, %1
  %11 = fdiv float %9, %2
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !63
  %14 = load i32, ptr %0, align 4, !tbaa !59
  %15 = sub nsw i32 %13, %14
  %16 = sitofp i32 %15 to float
  %17 = tail call fastcc float @min_ff(float noundef %10, float noundef %16) #10
  %18 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !65
  %20 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !61
  %22 = sub nsw i32 %19, %21
  %23 = sitofp i32 %22 to float
  %24 = tail call fastcc float @min_ff(float noundef %11, float noundef %23) #10
  tail call void @glBegin(i32 noundef 3) #9
  %25 = load i32, ptr %0, align 4, !tbaa !59
  %26 = sitofp i32 %25 to float
  %27 = load i32, ptr %20, align 4, !tbaa !61
  %28 = sitofp i32 %27 to float
  %29 = fadd float %24, %28
  tail call void @glVertex2f(float noundef %26, float noundef %29) #9
  %30 = load i32, ptr %0, align 4, !tbaa !59
  %31 = sitofp i32 %30 to float
  %32 = load i32, ptr %20, align 4, !tbaa !61
  %33 = sitofp i32 %32 to float
  tail call void @glVertex2f(float noundef %31, float noundef %33) #9
  %34 = load i32, ptr %0, align 4, !tbaa !59
  %35 = sitofp i32 %34 to float
  %36 = fadd float %17, %35
  %37 = load i32, ptr %20, align 4, !tbaa !61
  %38 = sitofp i32 %37 to float
  tail call void @glVertex2f(float noundef %36, float noundef %38) #9
  tail call void @glEnd() #9
  tail call void @glBegin(i32 noundef 3) #9
  %39 = load i32, ptr %0, align 4, !tbaa !59
  %40 = sitofp i32 %39 to float
  %41 = load i32, ptr %18, align 4, !tbaa !65
  %42 = sitofp i32 %41 to float
  %43 = fsub float %42, %24
  tail call void @glVertex2f(float noundef %40, float noundef %43) #9
  %44 = load i32, ptr %0, align 4, !tbaa !59
  %45 = sitofp i32 %44 to float
  %46 = load i32, ptr %18, align 4, !tbaa !65
  %47 = sitofp i32 %46 to float
  tail call void @glVertex2f(float noundef %45, float noundef %47) #9
  %48 = load i32, ptr %0, align 4, !tbaa !59
  %49 = sitofp i32 %48 to float
  %50 = fadd float %17, %49
  %51 = load i32, ptr %18, align 4, !tbaa !65
  %52 = sitofp i32 %51 to float
  tail call void @glVertex2f(float noundef %50, float noundef %52) #9
  tail call void @glEnd() #9
  tail call void @glBegin(i32 noundef 3) #9
  %53 = load i32, ptr %12, align 4, !tbaa !63
  %54 = sitofp i32 %53 to float
  %55 = fsub float %54, %17
  %56 = load i32, ptr %20, align 4, !tbaa !61
  %57 = sitofp i32 %56 to float
  tail call void @glVertex2f(float noundef %55, float noundef %57) #9
  %58 = load i32, ptr %12, align 4, !tbaa !63
  %59 = sitofp i32 %58 to float
  %60 = load i32, ptr %20, align 4, !tbaa !61
  %61 = sitofp i32 %60 to float
  tail call void @glVertex2f(float noundef %59, float noundef %61) #9
  %62 = load i32, ptr %12, align 4, !tbaa !63
  %63 = sitofp i32 %62 to float
  %64 = load i32, ptr %20, align 4, !tbaa !61
  %65 = sitofp i32 %64 to float
  %66 = fadd float %24, %65
  tail call void @glVertex2f(float noundef %63, float noundef %66) #9
  tail call void @glEnd() #9
  tail call void @glBegin(i32 noundef 3) #9
  %67 = load i32, ptr %12, align 4, !tbaa !63
  %68 = sitofp i32 %67 to float
  %69 = fsub float %68, %17
  %70 = load i32, ptr %18, align 4, !tbaa !65
  %71 = sitofp i32 %70 to float
  tail call void @glVertex2f(float noundef %69, float noundef %71) #9
  %72 = load i32, ptr %12, align 4, !tbaa !63
  %73 = sitofp i32 %72 to float
  %74 = load i32, ptr %18, align 4, !tbaa !65
  %75 = sitofp i32 %74 to float
  tail call void @glVertex2f(float noundef %73, float noundef %75) #9
  %76 = load i32, ptr %12, align 4, !tbaa !63
  %77 = sitofp i32 %76 to float
  %78 = load i32, ptr %18, align 4, !tbaa !65
  %79 = sitofp i32 %78 to float
  %80 = fsub float %79, %24
  tail call void @glVertex2f(float noundef %77, float noundef %80) #9
  tail call void @glEnd() #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !80 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 10908}
!41 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !42, i64 8496, !42, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !36, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !36, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !39, i64 8912, !39, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !35, i64 8956, !35, i64 8960, !39, i64 8964, !42, i64 8968, !42, i64 8970, !35, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !45, i64 8984, !36, i64 9760, !36, i64 9772, !42, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !35, i64 10904, !35, i64 10908, !39, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !46, i64 10928}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !44, i64 0, !44, i64 8}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"ColorBand", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!46 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !42, i64 24, !36, i64 26}
!47 = !{ptr @glDisable, ptr @glEnable}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !49}
!54 = !{!"glutil.c:get_cached_work_texture"}
!55 = !{!44, !44, i64 0}
!56 = !{!"glutil.c:max_ff"}
!57 = !{!"glutil.c:min_ii"}
!58 = !{!41, !42, i64 8970}
!59 = !{!60, !39, i64 0}
!60 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!61 = !{!60, !39, i64 8}
!62 = !{!"glutil.c:BLI_rcti_size_x"}
!63 = !{!60, !39, i64 4}
!64 = !{!"glutil.c:BLI_rcti_size_y"}
!65 = !{!60, !39, i64 12}
!66 = !{!"glutil.c:iroundf"}
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !36, i64 0}
!69 = !{!70, !44, i64 40}
!70 = !{!"ImBuf", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !44, i64 40, !44, i64 48, !36, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !35, i64 112, !36, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !44, i64 296, !44, i64 304, !39, i64 312, !36, i64 316, !36, i64 1340, !44, i64 2368, !39, i64 2376, !44, i64 2384, !39, i64 2392, !39, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !39, i64 2432, !60, i64 2436, !71, i64 2456}
!71 = !{!"DDSData", !39, i64 0, !39, i64 4, !44, i64 8, !39, i64 16}
!72 = !{!70, !44, i64 48}
!73 = !{!70, !39, i64 28}
!74 = !{!70, !44, i64 2408}
!75 = !{!70, !35, i64 112}
!76 = !{!70, !44, i64 2400}
!77 = !{!70, !39, i64 16}
!78 = !{!70, !39, i64 20}
!79 = !{!41, !39, i64 8524}
!80 = !{!"glutil.c:min_ff"}
