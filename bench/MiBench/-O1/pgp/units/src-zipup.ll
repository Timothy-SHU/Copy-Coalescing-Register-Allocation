; ModuleID = 'src/zipup.c'
source_filename = "src/zipup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ifile = internal unnamed_addr global i32 0, align 4
@level = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zipup(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  %6 = tail call i32 @fileno(ptr noundef %0) #7
  store i32 %6, ptr @ifile, align 4, !tbaa !5
  %7 = tail call i64 @lseek(i32 noundef %6, i64 noundef 0, i32 noundef 2) #7
  %8 = load i32, ptr @ifile, align 4, !tbaa !5
  %9 = tail call i64 @lseek(i32 noundef %8, i64 noundef 0, i32 noundef 0) #7
  %10 = icmp eq i64 %7, 0
  %11 = select i1 %10, i32 0, i32 8
  store i32 %11, ptr %3, align 4, !tbaa !5
  br i1 %10, label %15, label %12

12:                                               ; preds = %2
  tail call void @bi_init(ptr noundef %1) #7
  store i16 -1, ptr %4, align 2, !tbaa !9
  call void @ct_init(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %13 = load i32, ptr @level, align 4, !tbaa !5
  call void @lm_init(i32 noundef %13, ptr noundef nonnull %5) #7
  %14 = call i64 @deflate() #7
  br label %15

15:                                               ; preds = %12, %2
  call void (...) @lm_free() #7
  call void (...) @ct_free() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @bi_init(ptr noundef) local_unnamed_addr #4

declare void @ct_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @lm_init(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @deflate() local_unnamed_addr #4

declare void @lm_free(...) local_unnamed_addr #4

declare void @ct_free(...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @read_buf(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load i32, ptr @ifile, align 4, !tbaa !5
  %4 = zext i32 %1 to i64
  %5 = tail call i64 @read(i32 noundef %3, ptr noundef %0, i64 noundef %4) #7
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!10 = !{!"short", !7, i64 0}
