; ModuleID = 'src/main.c'
source_filename = "src/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@str = private unnamed_addr constant [9 x i8] c"RealOut:\00", align 1
@str.9 = private unnamed_addr constant [9 x i8] c"ImagOut:\00", align 1
@str.10 = private unnamed_addr constant [31 x i8] c"Usage: fft <waves> <length> -i\00", align 1
@str.11 = private unnamed_addr constant [27 x i8] c"-i performs an inverse fft\00", align 1
@str.12 = private unnamed_addr constant [34 x i8] c"<length> is the number of samples\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 3
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef -1) #12
  unreachable

9:                                                ; preds = %2
  %10 = icmp eq i32 %0, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds ptr, ptr %1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.4, i64 noundef 2)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %9 ]
  %19 = getelementptr inbounds ptr, ptr %1, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = tail call i64 @strtol(ptr nocapture noundef nonnull %20, ptr noundef null, i32 noundef 10) #13
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds ptr, ptr %1, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = tail call i64 @strtol(ptr nocapture noundef nonnull %24, ptr noundef null, i32 noundef 10) #13
  %26 = trunc i64 %25 to i32
  tail call void @srand(i32 noundef 1) #13
  %27 = shl i64 %21, 2
  %28 = and i64 %27, 17179869180
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #14
  %30 = tail call noalias ptr @malloc(i64 noundef %28) #14
  %31 = tail call noalias ptr @malloc(i64 noundef %28) #14
  %32 = tail call noalias ptr @malloc(i64 noundef %28) #14
  %33 = shl i64 %25, 2
  %34 = and i64 %33, 17179869180
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #14
  %36 = tail call noalias ptr @malloc(i64 noundef %34) #14
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %17
  %39 = and i64 %25, 4294967295
  br label %46

40:                                               ; preds = %46, %17
  %41 = icmp eq i32 %22, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %26, 0
  %44 = and i64 %21, 4294967295
  %45 = and i64 %25, 4294967295
  br label %58

46:                                               ; preds = %38, %46
  %47 = phi i64 [ 0, %38 ], [ %56, %46 ]
  %48 = tail call i32 @rand() #13
  %49 = srem i32 %48, 1000
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds float, ptr %35, i64 %47
  store float %50, ptr %51, align 4, !tbaa !9
  %52 = tail call i32 @rand() #13
  %53 = srem i32 %52, 1000
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds float, ptr %36, i64 %47
  store float %54, ptr %55, align 4, !tbaa !9
  %56 = add nuw nsw i64 %47, 1
  %57 = icmp eq i64 %56, %39
  br i1 %57, label %40, label %46, !llvm.loop !11

58:                                               ; preds = %42, %93
  %59 = phi i64 [ 0, %42 ], [ %94, %93 ]
  %60 = getelementptr inbounds float, ptr %29, i64 %59
  store float 0.000000e+00, ptr %60, align 4, !tbaa !9
  br i1 %43, label %93, label %61

61:                                               ; preds = %58
  %62 = trunc i64 %59 to i32
  %63 = uitofp i32 %62 to float
  %64 = trunc i64 %59 to i32
  %65 = uitofp i32 %64 to float
  %66 = getelementptr inbounds float, ptr %30, i64 %59
  br label %67

67:                                               ; preds = %61, %85
  %68 = phi i64 [ 0, %61 ], [ %91, %85 ]
  %69 = tail call i32 @rand() #13
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds float, ptr %35, i64 %68
  %73 = load float, ptr %72, align 4, !tbaa !9
  %74 = fpext float %73 to double
  %75 = getelementptr inbounds float, ptr %36, i64 %68
  %76 = load float, ptr %75, align 4, !tbaa !9
  br i1 %71, label %81, label %77

77:                                               ; preds = %67
  %78 = fmul float %76, %63
  %79 = fpext float %78 to double
  %80 = tail call double @cos(double noundef %79) #13
  br label %85

81:                                               ; preds = %67
  %82 = fmul float %76, %65
  %83 = fpext float %82 to double
  %84 = tail call double @sin(double noundef %83) #13
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi double [ %84, %81 ], [ %80, %77 ]
  %87 = load float, ptr %60, align 4, !tbaa !9
  %88 = fpext float %87 to double
  %89 = tail call double @llvm.fmuladd.f64(double %74, double %86, double %88)
  %90 = fptrunc double %89 to float
  store float %90, ptr %60, align 4, !tbaa !9
  store float 0.000000e+00, ptr %66, align 4, !tbaa !9
  %91 = add nuw nsw i64 %68, 1
  %92 = icmp eq i64 %91, %45
  br i1 %92, label %93, label %67, !llvm.loop !13

93:                                               ; preds = %85, %58
  %94 = add nuw nsw i64 %59, 1
  %95 = icmp eq i64 %94, %44
  br i1 %95, label %96, label %58, !llvm.loop !14

96:                                               ; preds = %93, %40
  %97 = tail call i32 (i32, i32, ptr, ptr, ptr, ptr, ...) @fft_float(i32 noundef %22, i32 noundef %18, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32) #13
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %99 = icmp eq i32 %22, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = and i64 %21, 4294967295
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ 0, %100 ], [ %108, %102 ]
  %104 = getelementptr inbounds float, ptr %31, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !9
  %106 = fpext float %105 to double
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %106)
  %108 = add nuw nsw i64 %103, 1
  %109 = icmp eq i64 %108, %101
  br i1 %109, label %110, label %102, !llvm.loop !15

110:                                              ; preds = %102, %96
  %111 = tail call i32 @putchar(i32 10)
  %112 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %113 = icmp eq i32 %22, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %110
  %115 = and i64 %21, 4294967295
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi i64 [ 0, %114 ], [ %122, %116 ]
  %118 = getelementptr inbounds float, ptr %32, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !9
  %120 = fpext float %119 to double
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %120)
  %122 = add nuw nsw i64 %117, 1
  %123 = icmp eq i64 %122, %115
  br i1 %123, label %124, label %116, !llvm.loop !16

124:                                              ; preds = %116, %110
  %125 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %29) #13
  tail call void @free(ptr noundef %30) #13
  tail call void @free(ptr noundef %31) #13
  tail call void @free(ptr noundef %32) #13
  tail call void @free(ptr noundef %35) #13
  tail call void @free(ptr noundef %36) #13
  tail call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

declare i32 @fft_float(...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
