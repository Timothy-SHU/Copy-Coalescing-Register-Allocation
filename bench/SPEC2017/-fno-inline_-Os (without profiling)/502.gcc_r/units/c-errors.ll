; ModuleID = 'c-errors.c'
source_filename = "c-errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@flag_isoc99 = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pedwarn_c99(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 6, i32 10
  call void @diagnostic_set_info(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %0, i32 noundef %8) #5
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %9, align 4, !tbaa !9
  %10 = load ptr, ptr @global_dc, align 8, !tbaa !13
  %11 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %10, ptr noundef nonnull %4) #5
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: optsize
declare void @diagnostic_set_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @diagnostic_report_diagnostic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pedwarn_c90(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 10, i32 6
  call void @diagnostic_set_info(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %0, i32 noundef %8) #5
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %9, align 4, !tbaa !9
  %10 = load ptr, ptr @global_dc, align 8, !tbaa !13
  %11 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %10, ptr noundef nonnull %4) #5
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

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
!9 = !{!10, !6, i64 60}
!10 = !{!"diagnostic_info", !11, i64 0, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 56, !6, i64 60}
!11 = !{!"", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24, !12, i64 32}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
