; ModuleID = 'blender/source/blender/blenkernel/intern/bullet.c'
source_filename = "blender/source/blender/blenkernel/intern/bullet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BulletSoftBody = type { i32, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"bulletsoftbody\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bsbNew() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 120, ptr noundef nonnull @.str) #2
  store i32 26, ptr %2, align 4, !tbaa !38
  %3 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 1
  store <2 x float> <float 5.000000e-01, float 1.000000e+00>, ptr %3, align 4, !tbaa !42
  %4 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 3
  store float 1.000000e+00, ptr %4, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 4
  store <4 x i32> <i32 0, i32 2, i32 0, i32 4>, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 8
  store <4 x float> <float 0x3FB99999A0000000, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %6, align 4, !tbaa !42
  %7 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 12
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %7, align 4, !tbaa !42
  %8 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 14
  store float 1.000000e+00, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 15
  %10 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  store <4 x float> <float 0x3FC99999A0000000, float 0x3FA99999A0000000, float 1.000000e+00, float 0x3FB99999A0000000>, ptr %10, align 4, !tbaa !42
  %11 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 24
  store <2 x float> <float 1.000000e+00, float 0x3FE6666660000000>, ptr %11, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 26
  store i32 0, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 27
  store i32 64, ptr %13, align 4, !tbaa !47
  %14 = getelementptr inbounds %struct.BulletSoftBody, ptr %2, i64 0, i32 28
  store float 0.000000e+00, ptr %14, align 4, !tbaa !48
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bsbFree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #2
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind optsize }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"BulletSoftBody", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !40, i64 104, !40, i64 108, !41, i64 112, !41, i64 116}
!40 = !{!"int", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!39, !41, i64 12}
!44 = !{!40, !40, i64 0}
!45 = !{!39, !41, i64 56}
!46 = !{!39, !40, i64 104}
!47 = !{!39, !40, i64 108}
!48 = !{!39, !41, i64 112}
