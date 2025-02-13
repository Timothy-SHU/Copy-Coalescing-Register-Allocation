; ModuleID = 'blender/source/blender/blenlib/intern/BLI_dial.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_dial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Dial = type { [2 x float], float, [2 x float], float, i32, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"dial\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_dial_initialize(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str) #8
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef %0) #9
  %5 = fmul float %1, %1
  %6 = getelementptr inbounds %struct.Dial, ptr %4, i64 0, i32 1
  store float %5, ptr %6, align 4, !tbaa !38
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !42 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  store float %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @BLI_dial_angle(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @len_squared_v2(ptr noundef nonnull %3) #9
  %5 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !38
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %2
  call fastcc void @normalize_v2(ptr noundef nonnull %3) #9
  %9 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 5
  %10 = load i8, ptr %9, align 4, !tbaa !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %13, ptr noundef nonnull %3) #9
  store i8 1, ptr %9, align 4, !tbaa !44
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 2
  %16 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %15) #9
  %17 = call fastcc float @cross_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %15) #9
  %18 = tail call float @atan2f(float noundef %17, float noundef %16) #8
  %19 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !45
  %21 = fmul float %18, %20
  %22 = fcmp olt float %21, 0.000000e+00
  %23 = tail call float @llvm.fabs.f32(float %20)
  %24 = fcmp ogt float %23, 0x3FF921FB60000000
  %25 = and i1 %22, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !46
  br label %37

29:                                               ; preds = %14
  %30 = fcmp olt float %20, 0.000000e+00
  %31 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !46
  br i1 %30, label %33, label %35

33:                                               ; preds = %29
  %34 = add nsw i32 %32, -1
  store i32 %34, ptr %31, align 4, !tbaa !46
  br label %37

35:                                               ; preds = %29
  %36 = add nsw i32 %32, 1
  store i32 %36, ptr %31, align 4, !tbaa !46
  br label %37

37:                                               ; preds = %26, %33, %35
  %38 = phi i32 [ %28, %26 ], [ %34, %33 ], [ %36, %35 ]
  store float %18, ptr %19, align 4, !tbaa !45
  %39 = sitofp i32 %38 to float
  %40 = tail call float @llvm.fmuladd.f32(float %39, float 0x401921FB60000000, float %18)
  br label %44

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !45
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi float [ %40, %37 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret float %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !47 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = load float, ptr %2, align 4, !tbaa !43
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !48 {
  %2 = load float, ptr %0, align 4, !tbaa !43
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !43
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !49 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !50 {
  %3 = load float, ptr %0, align 4, !tbaa !43
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @cross_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !51 {
  %3 = load float, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = load float, ptr %1, align 4, !tbaa !43
  %9 = fneg float %7
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %10)
  ret float %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !52 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #9
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #8
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #9
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #9
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !53 {
  %4 = load float, ptr %1, align 4, !tbaa !43
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !43
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !54 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !43
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 8}
!39 = !{!"Dial", !36, i64 0, !40, i64 8, !36, i64 12, !40, i64 20, !41, i64 24, !36, i64 28}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"BLI_dial.c:copy_v2_v2"}
!43 = !{!40, !40, i64 0}
!44 = !{!39, !36, i64 28}
!45 = !{!39, !40, i64 20}
!46 = !{!39, !41, i64 24}
!47 = !{!"BLI_dial.c:sub_v2_v2v2"}
!48 = !{!"BLI_dial.c:len_squared_v2"}
!49 = !{!"BLI_dial.c:normalize_v2"}
!50 = !{!"BLI_dial.c:dot_v2v2"}
!51 = !{!"BLI_dial.c:cross_v2v2"}
!52 = !{!"BLI_dial.c:normalize_v2_v2"}
!53 = !{!"BLI_dial.c:mul_v2_v2fl"}
!54 = !{!"BLI_dial.c:zero_v2"}
