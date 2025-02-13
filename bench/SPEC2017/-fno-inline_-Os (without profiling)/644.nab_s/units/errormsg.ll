; ModuleID = 'errormsg.c'
source_filename = "errormsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@errs = internal unnamed_addr global i1 false, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s:%d %s\00", align 1
@cg_nfname = external global [0 x i8], align 1
@cg_emsg_lineno = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @errormsg(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i1 true, ptr @errs, align 4
  %3 = load ptr, ptr @stderr, align 8, !tbaa !6
  %4 = load i32, ptr @cg_emsg_lineno, align 4, !tbaa !10
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @cg_nfname, i32 noundef %4, ptr noundef %1) #5
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ...) @CG_exit(i32 noundef 1) #6
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CG_exit(...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @errormsg_s(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #7
  %5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1, ptr noundef %2) #6
  call void @errormsg(i32 noundef %0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @errormsg_2s(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #7
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1, ptr noundef %2, ptr noundef %3) #6
  call void @errormsg(i32 noundef %0, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @errormsg_d(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #7
  %5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1, i32 noundef %2) #6
  call void @errormsg(i32 noundef %0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @errors() local_unnamed_addr #4 {
  %1 = load i1, ptr @errs, align 4
  %2 = zext i1 %1 to i32
  ret i32 %2
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
