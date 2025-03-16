; ModuleID = 'src/basicmath_large.c'
source_filename = "src/basicmath_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.11 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@str.12 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [3 x double], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.int_sqrt, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %6 = load i32, ptr %2, align 4, !tbaa !5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %0, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %0 ]
  %10 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !9
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %11)
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %2, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !11

17:                                               ; preds = %8, %0
  %18 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %20 = load i32, ptr %2, align 4, !tbaa !5
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17, %22
  %23 = phi i64 [ %27, %22 ], [ 0, %17 ]
  %24 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !9
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %25)
  %27 = add nuw nsw i64 %23, 1
  %28 = load i32, ptr %2, align 4, !tbaa !5
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %22, label %31, !llvm.loop !13

31:                                               ; preds = %22, %17
  %32 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %34 = load i32, ptr %2, align 4, !tbaa !5
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31, %36
  %37 = phi i64 [ %41, %36 ], [ 0, %31 ]
  %38 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !9
  %40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %39)
  %41 = add nuw nsw i64 %37, 1
  %42 = load i32, ptr %2, align 4, !tbaa !5
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %36, label %45, !llvm.loop !14

45:                                               ; preds = %36, %31
  %46 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %48 = load i32, ptr %2, align 4, !tbaa !5
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45, %50
  %51 = phi i64 [ %55, %50 ], [ 0, %45 ]
  %52 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !9
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %53)
  %55 = add nuw nsw i64 %51, 1
  %56 = load i32, ptr %2, align 4, !tbaa !5
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %50, label %59, !llvm.loop !15

59:                                               ; preds = %50, %45
  %60 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %62 = load i32, ptr %2, align 4, !tbaa !5
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %69, %64 ], [ 0, %59 ]
  %66 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !9
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %67)
  %69 = add nuw nsw i64 %65, 1
  %70 = load i32, ptr %2, align 4, !tbaa !5
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %64, label %73, !llvm.loop !16

73:                                               ; preds = %64, %59
  %74 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %76 = load i32, ptr %2, align 4, !tbaa !5
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73, %78
  %79 = phi i64 [ %83, %78 ], [ 0, %73 ]
  %80 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !9
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %81)
  %83 = add nuw nsw i64 %79, 1
  %84 = load i32, ptr %2, align 4, !tbaa !5
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %78, label %87, !llvm.loop !17

87:                                               ; preds = %78, %73
  %88 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %90 = load i32, ptr %2, align 4, !tbaa !5
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87, %92
  %93 = phi i64 [ %97, %92 ], [ 0, %87 ]
  %94 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !9
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %95)
  %97 = add nuw nsw i64 %93, 1
  %98 = load i32, ptr %2, align 4, !tbaa !5
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %92, label %101, !llvm.loop !18

101:                                              ; preds = %92, %87
  %102 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %104 = load i32, ptr %2, align 4, !tbaa !5
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101, %106
  %107 = phi i64 [ %111, %106 ], [ 0, %101 ]
  %108 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !9
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %109)
  %111 = add nuw nsw i64 %107, 1
  %112 = load i32, ptr %2, align 4, !tbaa !5
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %106, label %115, !llvm.loop !19

115:                                              ; preds = %106, %101
  %116 = call i32 @putchar(i32 10)
  br label %117

117:                                              ; preds = %115, %148
  %118 = phi i32 [ 1, %115 ], [ %149, %148 ]
  %119 = sitofp i32 %118 to double
  br label %120

120:                                              ; preds = %117, %145
  %121 = phi double [ 1.000000e+01, %117 ], [ %146, %145 ]
  br label %122

122:                                              ; preds = %120, %142
  %123 = phi double [ 5.000000e+00, %120 ], [ %143, %142 ]
  br label %124

124:                                              ; preds = %122, %138
  %125 = phi double [ -1.000000e+00, %122 ], [ %140, %138 ]
  call void @SolveCubic(double noundef %119, double noundef %121, double noundef %123, double noundef %125, ptr noundef nonnull %2, ptr noundef nonnull %1) #5
  %126 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %127 = load i32, ptr %2, align 4, !tbaa !5
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124, %129
  %130 = phi i64 [ %134, %129 ], [ 0, %124 ]
  %131 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !9
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %132)
  %134 = add nuw nsw i64 %130, 1
  %135 = load i32, ptr %2, align 4, !tbaa !5
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %129, label %138, !llvm.loop !20

138:                                              ; preds = %129, %124
  %139 = call i32 @putchar(i32 10)
  %140 = fadd double %125, -4.510000e-01
  %141 = fcmp ogt double %140, -5.000000e+00
  br i1 %141, label %124, label %142, !llvm.loop !21

142:                                              ; preds = %138
  %143 = fadd double %123, 6.100000e-01
  %144 = fcmp olt double %143, 1.500000e+01
  br i1 %144, label %122, label %145, !llvm.loop !22

145:                                              ; preds = %142
  %146 = fadd double %121, -2.500000e-01
  %147 = fcmp ogt double %146, 0.000000e+00
  br i1 %147, label %120, label %148, !llvm.loop !23

148:                                              ; preds = %145
  %149 = add nuw nsw i32 %118, 1
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %117, !llvm.loop !24

151:                                              ; preds = %148
  %152 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %153

153:                                              ; preds = %151, %153
  %154 = phi i64 [ 0, %151 ], [ %158, %153 ]
  call void @usqrt(i64 noundef %154, ptr noundef nonnull %3) #5
  %155 = load i32, ptr %3, align 4, !tbaa !25
  %156 = trunc i64 %154 to i32
  %157 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %156, i32 noundef %155)
  %158 = add nuw nsw i64 %154, 2
  %159 = icmp ult i64 %154, 99998
  br i1 %159, label %153, label %160, !llvm.loop !27

160:                                              ; preds = %153
  %161 = call i32 @putchar(i32 10)
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ 1072497001, %160 ], [ %166, %162 ]
  call void @usqrt(i64 noundef %163, ptr noundef nonnull %3) #5
  %164 = load i32, ptr %3, align 4, !tbaa !25
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %163, i32 noundef %164)
  %166 = add nuw nsw i64 %163, 1
  %167 = icmp eq i64 %166, 1072513385
  br i1 %167, label %168, label %162, !llvm.loop !28

168:                                              ; preds = %162
  %169 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %170

170:                                              ; preds = %168, %170
  %171 = phi double [ 0.000000e+00, %168 ], [ %175, %170 ]
  %172 = fmul double %171, 0x400921FB54442D18
  %173 = fdiv double %172, 1.800000e+02
  %174 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %171, double noundef %173)
  %175 = fadd double %171, 1.000000e-03
  %176 = fcmp ugt double %175, 3.600000e+02
  br i1 %176, label %177, label %170, !llvm.loop !29

177:                                              ; preds = %170
  %178 = call i32 @putchar(i32 10)
  br label %179

179:                                              ; preds = %177, %179
  %180 = phi double [ 0.000000e+00, %177 ], [ %184, %179 ]
  %181 = fmul double %180, 1.800000e+02
  %182 = fdiv double %181, 0x400921FB54442D18
  %183 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %180, double noundef %182)
  %184 = fadd double %180, 0x3F41DF46A2529D39
  %185 = fcmp ugt double %184, 0x401921FB97600B9B
  br i1 %185, label %186, label %179, !llvm.loop !30

186:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @SolveCubic(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @usqrt(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!26, !6, i64 0}
!26 = !{!"int_sqrt", !6, i64 0, !6, i64 4}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
