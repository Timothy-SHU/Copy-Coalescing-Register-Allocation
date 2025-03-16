; ModuleID = 'src/bitfiles.c'
source_filename = "src/bitfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bfile = type { ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @bfopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  store ptr %6, ptr %3, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @free(ptr noundef %3) #6
  br label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !10
  %11 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  store i8 0, ptr %11, align 1, !tbaa !11
  br label %12

12:                                               ; preds = %2, %9, %8
  %13 = phi ptr [ null, %8 ], [ %3, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bfread(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = tail call i32 @fgetc(ptr noundef %6)
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  store i8 %8, ptr %9, align 8, !tbaa !12
  store i8 8, ptr %2, align 1, !tbaa !10
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i8, ptr %2, align 1, !tbaa !10
  %12 = add i8 %11, -1
  store i8 %12, ptr %2, align 1, !tbaa !10
  %13 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !12
  %15 = sext i8 %14 to i32
  %16 = zext nneg i8 %12 to i32
  %17 = lshr i32 %15, %16
  %18 = and i32 %17, 1
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @bfwrite(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 2, !tbaa !13
  %9 = sext i8 %8 to i32
  %10 = load ptr, ptr %1, align 8, !tbaa !5
  %11 = tail call i32 @fputc(i32 noundef %9, ptr noundef %10)
  store i8 0, ptr %3, align 1, !tbaa !11
  br label %12

12:                                               ; preds = %6, %2
  %13 = load i8, ptr %3, align 1, !tbaa !11
  %14 = add i8 %13, 1
  store i8 %14, ptr %3, align 1, !tbaa !11
  %15 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !13
  %17 = shl i8 %16, 1
  %18 = trunc i32 %0 to i8
  %19 = and i8 %18, 1
  %20 = or disjoint i8 %17, %19
  store i8 %20, ptr %15, align 2, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bfclose(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call i32 @fclose(ptr noundef %2)
  tail call void @free(ptr noundef %0) #6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !8, i64 9}
!11 = !{!6, !8, i64 11}
!12 = !{!6, !8, i64 8}
!13 = !{!6, !8, i64 10}
