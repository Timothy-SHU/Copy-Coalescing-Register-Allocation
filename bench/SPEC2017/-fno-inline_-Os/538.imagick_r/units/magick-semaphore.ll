; ModuleID = 'magick/semaphore.c'
source_filename = "magick/semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.SemaphoreInfo = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"magick/semaphore.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActivateSemaphoreInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @AllocateSemaphoreInfo() #11
  store ptr %5, ptr %0, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AllocateSemaphoreInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call fastcc ptr @AcquireSemaphoreMemory() #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #12
  call void @GetExceptionInfo(ptr noundef nonnull %1) #13
  %5 = tail call ptr @__errno_location() #14
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #13
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 202, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #13
  %9 = call ptr @DestroyString(ptr noundef %7) #13
  call void @CatchException(ptr noundef nonnull %1) #13
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #13
  call void @MagickCoreTerminus() #13
  call void @_exit(i32 noundef 1) #15
  unreachable

11:                                               ; preds = %0
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 32) #13
  %13 = tail call fastcc i32 @GetMagickThreadId() #11
  %14 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 3
  store i64 2880220587, ptr %16, align 8, !tbaa !44
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef ptr @AcquireSemaphoreMemory() unnamed_addr #2 !PGOFuncName !45 {
  %1 = tail call noalias dereferenceable_or_null(103) ptr @malloc(i64 noundef 103) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i64
  %5 = add i64 %4, 71
  %6 = and i64 %5, -64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds ptr, ptr %7, i64 -1
  store ptr %1, ptr %8, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi ptr [ %7, %3 ], [ null, %0 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetMagickThreadId() unnamed_addr #0 !PGOFuncName !46 {
  %1 = tail call i32 @getpid() #13
  ret i32 %1
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @DestroySemaphoreInfo(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 3
  store i64 -2880220588, ptr %3, align 8, !tbaa !44
  tail call fastcc void @RelinquishSemaphoreMemory(ptr noundef %2) #11
  store ptr null, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @RelinquishSemaphoreMemory(ptr noundef readonly %0) unnamed_addr #6 !PGOFuncName !47 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds ptr, ptr %0, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free(ptr noundef %5) #13
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @LockSemaphoreInfo(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @SemaphoreComponentGenesis() local_unnamed_addr #7 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @SemaphoreComponentTerminus() local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @UnlockSemaphoreInfo(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !39, i64 8}
!41 = !{!"SemaphoreInfo", !42, i64 0, !39, i64 8, !42, i64 16, !42, i64 24}
!42 = !{!"long", !36, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!41, !42, i64 24}
!45 = !{!"semaphore.c:AcquireSemaphoreMemory"}
!46 = !{!"semaphore.c:GetMagickThreadId"}
!47 = !{!"semaphore.c:RelinquishSemaphoreMemory"}
