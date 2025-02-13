; ModuleID = 'genrtl.c'
source_filename = "genrtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_0_stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !52 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !56 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ue_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !57 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_E_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !59 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 !prof !60 {
  %11 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 %1, 16
  %14 = and i32 %13, 16711680
  %15 = and i32 %12, -16711681
  %16 = or disjoint i32 %15, %14
  store i32 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  store i32 %2, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  store i32 %6, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  store ptr %7, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1
  store i32 %8, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %24, align 8, !tbaa !53
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuBieie0_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 !prof !61 {
  %11 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 %1, 16
  %14 = and i32 %13, 16711680
  %15 = and i32 %12, -16711681
  %16 = or disjoint i32 %15, %14
  store i32 %16, ptr %11, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  store i32 %2, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  store i32 %6, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  store ptr %7, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1
  store i32 %8, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %25, align 8, !tbaa !53
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuBieiee_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 !prof !61 {
  %12 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %1, 16
  %15 = and i32 %14, 16711680
  %16 = and i32 %13, -16711681
  %17 = or disjoint i32 %16, %15
  store i32 %17, ptr %12, align 8
  %18 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  store i32 %2, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 2
  store i32 %6, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  store ptr %7, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1
  store i32 %8, ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %25, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %10, ptr %26, align 8, !tbaa !53
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuu00000_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 !prof !62 {
  %9 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 %1, 16
  %12 = and i32 %11, 16711680
  %13 = and i32 %10, -16711681
  %14 = or disjoint i32 %13, %12
  store i32 %14, ptr %9, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  store i32 %2, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i32 %6, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %7, ptr %21, align 8, !tbaa !53
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_si_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !61 {
  %10 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %11 = load i32, ptr %10, align 8
  %12 = shl i32 %1, 16
  %13 = and i32 %12, 16711680
  %14 = and i32 %11, -16711681
  %15 = or disjoint i32 %14, %13
  store i32 %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  store ptr %2, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  store i32 %4, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 2
  store ptr %6, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  store ptr %7, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1, i32 1
  store i32 %8, ptr %22, align 8, !tbaa !53
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_Ei_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !63 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_eEee0_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !61 {
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %1, 16
  %10 = and i32 %9, 16711680
  %11 = and i32 %8, -16711681
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !53
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_eee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !64 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt__stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !65 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_w_stat(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !66 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store i64 %2, ptr %10, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_www_stat(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i64 %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store i64 %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store i64 %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_s_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !61 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_i00_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !67 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store i32 %2, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ei_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !68 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_e0_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !69 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %11, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_u_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !70 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_s00_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !71 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_tei_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store i32 %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iss_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_is_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_isE_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_i_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !61 {
  %4 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %1, 16
  %7 = and i32 %6, 16711680
  %8 = and i32 %5, -16711681
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store i32 %2, ptr %10, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_iE_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ss_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_sEss_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !61 {
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %1, 16
  %10 = and i32 %9, 16711680
  %11 = and i32 %8, -16711681
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !53
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_eE_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_Ess_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ses_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_sss_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_sse_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !61 {
  %6 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 16
  %9 = and i32 %8, 16711680
  %10 = and i32 %7, -16711681
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %14, align 8, !tbaa !53
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_sies_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !61 {
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %1, 16
  %10 = and i32 %9, 16711680
  %11 = and i32 %8, -16711681
  %12 = or disjoint i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %16, align 8, !tbaa !53
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_sE_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_ii_stat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_fmt_Ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !61 {
  %5 = tail call ptr @rtx_alloc_stat(i32 noundef %0) #3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %1, 16
  %8 = and i32 %7, 16711680
  %9 = and i32 %6, -16711681
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %12, align 8, !tbaa !53
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!51}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @gen_rtx_fmt_0_stat, ptr @rtx_alloc_stat, i64 310}
!36 = !{ptr @gen_rtx_fmt_ee_stat, ptr @rtx_alloc_stat, i64 4961210}
!37 = !{ptr @gen_rtx_fmt_ue_stat, ptr @rtx_alloc_stat, i64 638112}
!38 = !{ptr @gen_rtx_fmt_E_stat, ptr @rtx_alloc_stat, i64 184965}
!39 = !{ptr @gen_rtx_fmt_e_stat, ptr @rtx_alloc_stat, i64 1234065}
!40 = !{ptr @gen_rtx_fmt_iuuBieie_stat, ptr @rtx_alloc_stat, i64 157}
!41 = !{ptr @gen_rtx_fmt_iuuB00is_stat, ptr @rtx_alloc_stat, i64 164541}
!42 = !{ptr @gen_rtx_fmt_Ei_stat, ptr @rtx_alloc_stat, i64 24339}
!43 = !{ptr @gen_rtx_fmt_eee_stat, ptr @rtx_alloc_stat, i64 244211}
!44 = !{ptr @gen_rtx_fmt__stat, ptr @rtx_alloc_stat, i64 40}
!45 = !{ptr @gen_rtx_fmt_w_stat, ptr @rtx_alloc_stat, i64 2067}
!46 = !{ptr @gen_rtx_fmt_i00_stat, ptr @rtx_alloc_stat, i64 1038559}
!47 = !{ptr @gen_rtx_fmt_ei_stat, ptr @rtx_alloc_stat, i64 115290}
!48 = !{ptr @gen_rtx_fmt_e0_stat, ptr @rtx_alloc_stat, i64 856645}
!49 = !{ptr @gen_rtx_fmt_u_stat, ptr @rtx_alloc_stat, i64 575334}
!50 = !{ptr @gen_rtx_fmt_s00_stat, ptr @rtx_alloc_stat, i64 139}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 310}
!53 = !{!54, !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!"function_entry_count", i64 4961210}
!57 = !{!"function_entry_count", i64 638112}
!58 = !{!"function_entry_count", i64 184965}
!59 = !{!"function_entry_count", i64 1234065}
!60 = !{!"function_entry_count", i64 157}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!"function_entry_count", i64 164541}
!63 = !{!"function_entry_count", i64 24339}
!64 = !{!"function_entry_count", i64 244211}
!65 = !{!"function_entry_count", i64 40}
!66 = !{!"function_entry_count", i64 2067}
!67 = !{!"function_entry_count", i64 1038559}
!68 = !{!"function_entry_count", i64 115290}
!69 = !{!"function_entry_count", i64 856645}
!70 = !{!"function_entry_count", i64 575334}
!71 = !{!"function_entry_count", i64 139}
