; ModuleID = 'tabinit.c'
source_filename = "tabinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@cos64 = internal global [16 x double] zeroinitializer, align 16
@cos32 = internal global [8 x double] zeroinitializer, align 16
@cos16 = internal global [4 x double] zeroinitializer, align 16
@cos8 = internal global [2 x double] zeroinitializer, align 16
@cos4 = internal global [1 x double] zeroinitializer, align 8
@pnts = dso_local local_unnamed_addr global [5 x ptr] [ptr @cos64, ptr @cos32, ptr @cos16, ptr @cos8, ptr @cos4], align 16
@decwin = dso_local local_unnamed_addr global [544 x double] zeroinitializer, align 16
@intwinbase = internal unnamed_addr constant [257 x i64] [i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -2, i64 -2, i64 -2, i64 -2, i64 -3, i64 -3, i64 -4, i64 -4, i64 -5, i64 -5, i64 -6, i64 -7, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -13, i64 -14, i64 -16, i64 -17, i64 -19, i64 -21, i64 -24, i64 -26, i64 -29, i64 -31, i64 -35, i64 -38, i64 -41, i64 -45, i64 -49, i64 -53, i64 -58, i64 -63, i64 -68, i64 -73, i64 -79, i64 -85, i64 -91, i64 -97, i64 -104, i64 -111, i64 -117, i64 -125, i64 -132, i64 -139, i64 -147, i64 -154, i64 -161, i64 -169, i64 -176, i64 -183, i64 -190, i64 -196, i64 -202, i64 -208, i64 -213, i64 -218, i64 -222, i64 -225, i64 -227, i64 -228, i64 -228, i64 -227, i64 -224, i64 -221, i64 -215, i64 -208, i64 -200, i64 -189, i64 -177, i64 -163, i64 -146, i64 -127, i64 -106, i64 -83, i64 -57, i64 -29, i64 2, i64 36, i64 72, i64 111, i64 153, i64 197, i64 244, i64 294, i64 347, i64 401, i64 459, i64 519, i64 581, i64 645, i64 711, i64 779, i64 848, i64 919, i64 991, i64 1064, i64 1137, i64 1210, i64 1283, i64 1356, i64 1428, i64 1498, i64 1567, i64 1634, i64 1698, i64 1759, i64 1817, i64 1870, i64 1919, i64 1962, i64 2001, i64 2032, i64 2057, i64 2075, i64 2085, i64 2087, i64 2080, i64 2063, i64 2037, i64 2000, i64 1952, i64 1893, i64 1822, i64 1739, i64 1644, i64 1535, i64 1414, i64 1280, i64 1131, i64 970, i64 794, i64 605, i64 402, i64 185, i64 -45, i64 -288, i64 -545, i64 -814, i64 -1095, i64 -1388, i64 -1692, i64 -2006, i64 -2330, i64 -2663, i64 -3004, i64 -3351, i64 -3705, i64 -4063, i64 -4425, i64 -4788, i64 -5153, i64 -5517, i64 -5879, i64 -6237, i64 -6589, i64 -6935, i64 -7271, i64 -7597, i64 -7910, i64 -8209, i64 -8491, i64 -8755, i64 -8998, i64 -9219, i64 -9416, i64 -9585, i64 -9727, i64 -9838, i64 -9916, i64 -9959, i64 -9966, i64 -9935, i64 -9863, i64 -9750, i64 -9592, i64 -9389, i64 -9139, i64 -8840, i64 -8492, i64 -8092, i64 -7640, i64 -7134, i64 -6574, i64 -5959, i64 -5288, i64 -4561, i64 -3776, i64 -2935, i64 -2037, i64 -1082, i64 -70, i64 998, i64 2122, i64 3300, i64 4533, i64 5818, i64 7154, i64 8540, i64 9975, i64 11455, i64 12980, i64 14548, i64 16155, i64 17799, i64 19478, i64 21189, i64 22929, i64 24694, i64 26482, i64 28289, i64 30112, i64 31947, i64 33791, i64 35640, i64 37489, i64 39336, i64 41176, i64 43006, i64 44821, i64 46617, i64 48390, i64 50137, i64 51853, i64 53534, i64 55178, i64 56778, i64 58333, i64 59838, i64 61289, i64 62684, i64 64019, i64 65290, i64 66494, i64 67629, i64 68692, i64 69679, i64 70590, i64 71420, i64 72169, i64 72835, i64 73415, i64 73908, i64 74313, i64 74630, i64 74856, i64 74992, i64 75038], align 16

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local void @make_decode_tables(i64 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %26
  %3 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %4 = getelementptr inbounds [5 x ptr], ptr @pnts, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 16, %6
  %8 = trunc i64 %3 to i32
  %9 = lshr i32 64, %8
  %10 = sitofp i32 %9 to double
  %11 = tail call i32 @llvm.umax.i32(i32 %7, i32 1)
  %12 = zext nneg i32 %11 to i64
  br label %13

13:                                               ; preds = %2, %13
  %14 = phi i64 [ 0, %2 ], [ %24, %13 ]
  %15 = trunc i64 %14 to i32
  %16 = sitofp i32 %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 2.000000e+00, double 1.000000e+00)
  %18 = fmul double %17, 0x400921FB54442D18
  %19 = fdiv double %18, %10
  %20 = tail call double @cos(double noundef %19) #4
  %21 = fmul double %20, 2.000000e+00
  %22 = fdiv double 1.000000e+00, %21
  %23 = getelementptr inbounds double, ptr %5, i64 %14
  store double %22, ptr %23, align 8, !tbaa !9
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %26, label %13, !llvm.loop !11

26:                                               ; preds = %13
  %27 = add nuw nsw i64 %3, 1
  %28 = icmp eq i64 %27, 5
  br i1 %28, label %29, label %2, !llvm.loop !13

29:                                               ; preds = %26
  %30 = sub nsw i64 0, %0
  br label %31

31:                                               ; preds = %29, %46
  %32 = phi i64 [ 0, %29 ], [ %55, %46 ]
  %33 = phi ptr [ @decwin, %29 ], [ %57, %46 ]
  %34 = phi i64 [ %30, %29 ], [ %54, %46 ]
  %35 = phi i64 [ 0, %29 ], [ %56, %46 ]
  %36 = trunc i64 %32 to i32
  %37 = icmp slt i64 %35, 4224
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = getelementptr inbounds [257 x i64], ptr @intwinbase, i64 0, i64 %32
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = sitofp i64 %40 to double
  %42 = fmul double %41, 0x3EF0000000000000
  %43 = sitofp i64 %34 to double
  %44 = fmul double %42, %43
  store double %44, ptr %33, align 8, !tbaa !9
  %45 = getelementptr inbounds double, ptr %33, i64 16
  store double %44, ptr %45, align 8, !tbaa !9
  br label %46

46:                                               ; preds = %38, %31
  %47 = and i32 %36, 31
  %48 = icmp eq i32 %47, 31
  %49 = add nsw i64 %35, -8184
  %50 = select i1 %48, i64 %49, i64 %35
  %51 = and i32 %36, 63
  %52 = icmp eq i32 %51, 63
  %53 = sub nsw i64 0, %34
  %54 = select i1 %52, i64 %53, i64 %34
  %55 = add nuw nsw i64 %32, 1
  %56 = add nsw i64 %50, 256
  %57 = getelementptr inbounds i8, ptr @decwin, i64 %56
  %58 = icmp eq i64 %55, 256
  br i1 %58, label %59, label %31, !llvm.loop !16

59:                                               ; preds = %46, %74
  %60 = phi i64 [ %84, %74 ], [ 256, %46 ]
  %61 = phi i64 [ %82, %74 ], [ %54, %46 ]
  %62 = phi i64 [ %85, %74 ], [ %56, %46 ]
  %63 = phi i32 [ %83, %74 ], [ 256, %46 ]
  %64 = icmp slt i64 %62, 4224
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = getelementptr inbounds i8, ptr @decwin, i64 %62
  %67 = getelementptr inbounds [257 x i64], ptr @intwinbase, i64 0, i64 %60
  %68 = load i64, ptr %67, align 8, !tbaa !14
  %69 = sitofp i64 %68 to double
  %70 = fmul double %69, 0x3EF0000000000000
  %71 = sitofp i64 %61 to double
  %72 = fmul double %70, %71
  store double %72, ptr %66, align 8, !tbaa !9
  %73 = getelementptr inbounds double, ptr %66, i64 16
  store double %72, ptr %73, align 8, !tbaa !9
  br label %74

74:                                               ; preds = %65, %59
  %75 = and i32 %63, 31
  %76 = icmp eq i32 %75, 31
  %77 = add nsw i64 %62, -8184
  %78 = select i1 %76, i64 %77, i64 %62
  %79 = and i32 %63, 63
  %80 = icmp eq i32 %79, 63
  %81 = sub nsw i64 0, %61
  %82 = select i1 %80, i64 %81, i64 %61
  %83 = add nuw nsw i32 %63, 1
  %84 = add nsw i64 %60, -1
  %85 = add nsw i64 %78, 256
  %86 = icmp eq i32 %83, 512
  br i1 %86, label %87, label %59, !llvm.loop !17

87:                                               ; preds = %74
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
