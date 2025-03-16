; ModuleID = 'src/xgets.c'
source_filename = "src/xgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@xgets.Include_File = internal unnamed_addr global ptr @.str, align 8
@.str = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal unnamed_addr global i32 0, align 4
@xgets.F = internal global [6 x ptr] zeroinitializer, align 16
@xgets.current_F = internal unnamed_addr global ptr @xgets.F, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @xgets(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr @xgets.Include_File, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !9
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #5
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr @xgets.Include_Len, align 4, !tbaa !5
  %14 = load ptr, ptr @xgets.current_F, align 8, !tbaa !9
  store ptr %2, ptr %14, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %10, %3
  %16 = ptrtoint ptr %0 to i64
  %17 = sext i32 %1 to i64
  br label %18

18:                                               ; preds = %62, %15
  %19 = phi ptr [ %0, %15 ], [ %63, %62 ]
  %20 = ptrtoint ptr %19 to i64
  %21 = sub i64 %20, %16
  %22 = add i64 %21, 1
  %23 = icmp slt i64 %22, %17
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load ptr, ptr @xgets.current_F, align 8, !tbaa !9
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = tail call i32 @getc(ptr noundef %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = trunc i32 %27 to i8
  %31 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %30, ptr %19, align 1, !tbaa !11
  %32 = icmp eq i32 %27, 10
  br i1 %32, label %33, label %62

33:                                               ; preds = %29, %24, %18
  %34 = phi i1 [ false, %29 ], [ true, %24 ], [ false, %18 ]
  %35 = phi ptr [ %31, %29 ], [ %19, %24 ], [ %19, %18 ]
  store i8 0, ptr %35, align 1, !tbaa !11
  br i1 %34, label %36, label %46

36:                                               ; preds = %33
  %37 = load ptr, ptr @xgets.current_F, align 8, !tbaa !9
  %38 = icmp eq ptr %37, @xgets.F
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = icmp eq ptr %35, %0
  br i1 %40, label %73, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds ptr, ptr %37, i64 -1
  store ptr %42, ptr @xgets.current_F, align 8, !tbaa !9
  %43 = load ptr, ptr %37, align 8, !tbaa !9
  %44 = tail call i32 @fclose(ptr noundef %43)
  %45 = icmp eq ptr %35, %0
  br i1 %45, label %62, label %46

46:                                               ; preds = %39, %41, %33
  %47 = load i32, ptr @incfileflag, align 4, !tbaa !5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !9
  %51 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !5
  %52 = zext i32 %51 to i64
  %53 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %50, i64 noundef %52) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = load ptr, ptr @xgets.current_F, align 8, !tbaa !9
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %59, ptrtoint (ptr @xgets.F to i64)
  %61 = icmp slt i64 %60, 40
  br i1 %61, label %64, label %62

62:                                               ; preds = %55, %64, %70, %67, %29, %41
  %63 = phi ptr [ %31, %29 ], [ %35, %41 ], [ %0, %67 ], [ %0, %70 ], [ %0, %64 ], [ %0, %55 ]
  br label %18, !llvm.loop !12

64:                                               ; preds = %55
  %65 = load i8, ptr %57, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %62, label %67

67:                                               ; preds = %64
  %68 = tail call noalias ptr @fopen(ptr noundef nonnull %57, ptr noundef nonnull @.str.2)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %62, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @xgets.current_F, align 8, !tbaa !9
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %72, ptr @xgets.current_F, align 8, !tbaa !9
  store ptr %68, ptr %72, align 8, !tbaa !9
  br label %62

73:                                               ; preds = %49, %46, %39
  %74 = phi ptr [ null, %39 ], [ %0, %46 ], [ %0, %49 ]
  ret ptr %74
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
