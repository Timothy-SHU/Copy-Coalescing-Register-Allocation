; ModuleID = 'src/darray.c'
source_filename = "src/darray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darray_t = type { ptr, i32, i32, i16, i16 }

@.str = private unnamed_addr constant [63 x i8] c"$Id: darray.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@darray_id = dso_local local_unnamed_addr global ptr @.str, align 8

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @darray_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef %2) #8
  store ptr null, ptr %0, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Darray_find(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %54, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !14
  %15 = zext i16 %14 to i32
  %16 = mul i32 %12, %15
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @abort() #9
  unreachable

19:                                               ; preds = %10
  br i1 %5, label %40, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !15
  %23 = tail call i16 @llvm.umax.i16(i16 %22, i16 1)
  %24 = zext i16 %23 to i32
  %25 = add i32 %24, %1
  %26 = mul i32 %25, %15
  %27 = zext i32 %26 to i64
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %20
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8, !tbaa !5
  %34 = zext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr align 1 %33, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %32, %30
  %36 = load ptr, ptr %0, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @free(ptr noundef %36) #8
  br label %39

39:                                               ; preds = %38, %35
  store ptr %28, ptr %0, align 8, !tbaa !5
  store i32 %25, ptr %3, align 4, !tbaa !12
  br label %43

40:                                               ; preds = %19
  %41 = add i32 %1, 1
  %42 = mul i32 %41, %15
  br label %43

43:                                               ; preds = %39, %40
  %44 = phi i32 [ %26, %39 ], [ %42, %40 ]
  %45 = load i32, ptr %11, align 8, !tbaa !13
  %46 = icmp ugt i32 %45, %1
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 8, !tbaa !5
  %49 = zext i32 %16 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = sub i32 %44, %16
  %52 = zext i32 %51 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %50, i8 0, i64 %52, i1 false)
  %53 = add i32 %1, 1
  store i32 %53, ptr %11, align 8, !tbaa !13
  br label %54

54:                                               ; preds = %47, %43, %6
  %55 = load ptr, ptr %0, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %57 = load i16, ptr %56, align 8, !tbaa !14
  %58 = zext i16 %57 to i32
  %59 = mul i32 %58, %1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %55, i64 %60
  br label %62

62:                                               ; preds = %20, %54
  %63 = phi ptr [ %61, %54 ], [ null, %20 ]
  ret ptr %63
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @darray_delete(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !13
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !14
  %14 = zext i16 %13 to i32
  %15 = mul i32 %14, %1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  br label %20

18:                                               ; preds = %6, %2
  %19 = tail call ptr @Darray_find(ptr noundef %0, i32 noundef %1)
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi ptr [ %17, %10 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %23
  %28 = add i32 %25, -1
  store i32 %28, ptr %24, align 8, !tbaa !13
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %21, %30 ], [ %41, %32 ]
  %34 = phi i32 [ %1, %30 ], [ %35, %32 ]
  %35 = add nuw i32 %34, 1
  %36 = load i16, ptr %31, align 8, !tbaa !14
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %38, i64 %37, i1 false)
  %39 = load i16, ptr %31, align 8, !tbaa !14
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 %40
  %42 = load i32, ptr %24, align 8, !tbaa !13
  %43 = icmp ult i32 %35, %42
  br i1 %43, label %32, label %44, !llvm.loop !16

44:                                               ; preds = %32, %27
  %45 = phi ptr [ %21, %27 ], [ %41, %32 ]
  %46 = getelementptr inbounds %struct.darray_t, ptr %0, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !14
  %48 = zext i16 %47 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 0, i64 %48, i1 false)
  br label %50

49:                                               ; preds = %23
  tail call void @abort() #9
  unreachable

50:                                               ; preds = %20, %44
  %51 = phi i32 [ 1, %44 ], [ 0, %20 ]
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

attributes #0 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 18}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!6, !10, i64 12}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !11, i64 16}
!15 = !{!6, !11, i64 18}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
