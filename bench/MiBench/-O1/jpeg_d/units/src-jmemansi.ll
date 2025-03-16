; ModuleID = 'src/jmemansi.c'
source_filename = "src/jmemansi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @jpeg_get_small(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @jpeg_free_small(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  tail call void @free(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @jpeg_get_large(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #10
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @jpeg_free_large(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  tail call void @free(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @jpeg_mem_available(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 11
  %8 = load i64, ptr %7, align 8, !tbaa !11
  %9 = sub nsw i64 %8, %3
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_open_backing_store(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = tail call noalias ptr @tmpfile()
  %5 = getelementptr inbounds %struct.backing_store_struct, ptr %1, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !14
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 62, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %10, i8 0, i64 80, i1 false)
  %11 = load ptr, ptr %0, align 8, !tbaa !16
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %12(ptr noundef nonnull %0) #11
  br label %13

13:                                               ; preds = %7, %3
  store ptr @read_backing_store, ptr %1, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.backing_store_struct, ptr %1, i64 0, i32 1
  store ptr @write_backing_store, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.backing_store_struct, ptr %1, i64 0, i32 2
  store ptr @close_backing_store, ptr %15, align 8, !tbaa !22
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @tmpfile() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @read_backing_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i64 noundef %3, i64 noundef %4) #5 {
  %6 = getelementptr inbounds %struct.backing_store_struct, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = tail call i32 @fseek(ptr noundef %7, i64 noundef %3, i32 noundef 0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 64, ptr %12, align 8, !tbaa !17
  %13 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %13(ptr noundef nonnull %0) #11
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 8, !tbaa !14
  %16 = tail call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %4, ptr noundef %15)
  %17 = icmp eq i64 %16, %4
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 63, ptr %20, align 8, !tbaa !17
  %21 = load ptr, ptr %19, align 8, !tbaa !19
  tail call void %21(ptr noundef nonnull %0) #11
  br label %22

22:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_backing_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i64 noundef %3, i64 noundef %4) #5 {
  %6 = getelementptr inbounds %struct.backing_store_struct, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = tail call i32 @fseek(ptr noundef %7, i64 noundef %3, i32 noundef 0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 64, ptr %12, align 8, !tbaa !17
  %13 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void %13(ptr noundef nonnull %0) #11
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 8, !tbaa !14
  %16 = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %4, ptr noundef %15)
  %17 = icmp eq i64 %16, %4
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 65, ptr %20, align 8, !tbaa !17
  %21 = load ptr, ptr %19, align 8, !tbaa !19
  tail call void %21(ptr noundef nonnull %0) #11
  br label %22

22:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @close_backing_store(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.backing_store_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = tail call i32 @fclose(ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @jpeg_mem_init(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  ret i64 1000000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @jpeg_mem_term(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_common_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !13, i64 88}
!12 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !13, i64 88}
!13 = !{!"long", !8, i64 0}
!14 = !{!15, !7, i64 24}
!15 = !{!"backing_store_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32}
!16 = !{!6, !7, i64 0}
!17 = !{!18, !10, i64 40}
!18 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !13, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!19 = !{!18, !7, i64 0}
!20 = !{!15, !7, i64 0}
!21 = !{!15, !7, i64 8}
!22 = !{!15, !7, i64 16}
