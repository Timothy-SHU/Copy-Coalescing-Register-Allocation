; ModuleID = 'src/bf.c'
source_filename = "src/bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [45 x i8] c"Usage: blowfish {e|d} <intput> <output> key\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@str = private unnamed_addr constant [15 x i8] c"Bad key value.\00", align 1
@str.5 = private unnamed_addr constant [36 x i8] c"key must be in hexadecimal notation\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bf_key_st, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca [40 x i8], align 16
  %6 = alloca [40 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8336, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !5
  %9 = icmp slt i32 %0, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = tail call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %11) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load i8, ptr %15, align 1, !tbaa !11
  switch i8 %16, label %18 [
    i8 101, label %21
    i8 69, label %21
    i8 100, label %17
    i8 68, label %17
  ]

17:                                               ; preds = %13, %13
  br label %21

18:                                               ; preds = %13
  %19 = load ptr, ptr @stderr, align 8, !tbaa !9
  %20 = tail call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %19) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

21:                                               ; preds = %13, %13, %17
  %22 = phi i32 [ 0, %17 ], [ 1, %13 ], [ 1, %13 ]
  %23 = getelementptr inbounds ptr, ptr %1, i64 4
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %21, %61
  %26 = phi i32 [ 0, %21 ], [ %51, %61 ]
  %27 = phi i32 [ 0, %21 ], [ %52, %61 ]
  %28 = phi ptr [ %24, %21 ], [ %34, %61 ]
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @__ctype_toupper_loc() #11
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = getelementptr inbounds i8, ptr %28, i64 1
  %35 = sext i8 %29 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = shl i32 %37, 24
  %39 = ashr exact i32 %38, 24
  %40 = add nsw i32 %39, -48
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = add nsw i32 %39, -65
  %44 = icmp ult i32 %43, 6
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  tail call void @exit(i32 noundef 1) #10
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi i32 [ -48, %31 ], [ -55, %42 ]
  %49 = shl i32 %26, 4
  %50 = add i32 %49, %48
  %51 = add i32 %50, %39
  %52 = add nuw nsw i32 %27, 1
  %53 = and i32 %27, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = trunc i32 %51 to i8
  %57 = lshr exact i32 %52, 1
  %58 = add nsw i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32 x i8], ptr %4, i64 0, i64 %59
  store i8 %56, ptr %60, align 1, !tbaa !11
  br label %61

61:                                               ; preds = %55, %47
  %62 = icmp eq i32 %52, 64
  br i1 %62, label %63, label %25, !llvm.loop !12

63:                                               ; preds = %61, %25
  %64 = phi ptr [ %34, %61 ], [ %28, %25 ]
  call void @BF_set_key(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %4) #8
  %65 = load i8, ptr %64, align 1, !tbaa !11
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #10
  unreachable

69:                                               ; preds = %63
  %70 = getelementptr inbounds ptr, ptr %1, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !9
  %72 = call noalias ptr @fopen(ptr noundef %71, ptr noundef nonnull @.str.3)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load ptr, ptr @stderr, align 8, !tbaa !9
  %76 = call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %75) #9
  call void @exit(i32 noundef 1) #10
  unreachable

77:                                               ; preds = %69
  %78 = getelementptr inbounds ptr, ptr %1, i64 3
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = call noalias ptr @fopen(ptr noundef %79, ptr noundef nonnull @.str.4)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = call i32 @feof(ptr noundef nonnull %72) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %120

85:                                               ; preds = %77
  %86 = load ptr, ptr @stderr, align 8, !tbaa !9
  %87 = call i64 @fwrite(ptr nonnull @.str, i64 44, i64 1, ptr %86) #9
  call void @exit(i32 noundef 1) #10
  unreachable

88:                                               ; preds = %82, %117
  %89 = call i32 @feof(ptr noundef nonnull %72) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %95, %91 ], [ 0, %88 ]
  %93 = call i32 @getc(ptr noundef nonnull %72)
  %94 = trunc i32 %93 to i8
  %95 = add nuw nsw i64 %92, 1
  %96 = getelementptr inbounds [40 x i8], ptr %5, i64 0, i64 %92
  store i8 %94, ptr %96, align 1, !tbaa !11
  %97 = call i32 @feof(ptr noundef nonnull %72) #8
  %98 = icmp eq i32 %97, 0
  %99 = icmp ult i64 %92, 39
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %91, label %101, !llvm.loop !14

101:                                              ; preds = %91
  %102 = trunc i64 %95 to i32
  br label %103

103:                                              ; preds = %101, %88
  %104 = phi i32 [ 0, %88 ], [ %102, %101 ]
  %105 = zext nneg i32 %104 to i64
  call void @BF_cfb64_encrypt(ptr noundef nonnull %5, ptr noundef nonnull %6, i64 noundef %105, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %22) #8
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = zext i32 %104 to i64
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ 0, %107 ], [ %115, %109 ]
  %111 = getelementptr inbounds [40 x i8], ptr %6, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !11
  %113 = zext i8 %112 to i32
  %114 = call i32 @fputc(i32 noundef %113, ptr noundef nonnull %80)
  %115 = add nuw nsw i64 %110, 1
  %116 = icmp eq i64 %115, %108
  br i1 %116, label %117, label %109, !llvm.loop !15

117:                                              ; preds = %109, %103
  %118 = call i32 @feof(ptr noundef nonnull %72) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %88, label %120, !llvm.loop !16

120:                                              ; preds = %117, %82
  %121 = call i32 @fclose(ptr noundef nonnull %72)
  %122 = call i32 @fclose(ptr noundef nonnull %80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8336, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BF_set_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

declare void @BF_cfb64_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

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
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
