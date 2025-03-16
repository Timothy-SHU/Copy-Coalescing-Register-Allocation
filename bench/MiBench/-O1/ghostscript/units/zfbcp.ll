; ModuleID = 'zfbcp.c'
source_filename = "zfbcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_BCPD_state_s = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }

@zfbcp_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zBCPE }, %struct.op_def { ptr @.str.2, ptr @zBCPD }, %struct.op_def { ptr @.str.3, ptr @zTBCPE }, %struct.op_def { ptr @.str.4, ptr @zTBCPD }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"1BCPEncode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"1BCPDecode\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"1TBCPEncode\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"1TBCPDecode\00", align 1
@s_BCPE_template = external constant %struct.stream_template_s, align 8
@s_BCPD_template = external constant %struct.stream_template_s, align 8
@s_TBCPE_template = external constant %struct.stream_template_s, align 8
@s_TBCPD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfbcp_op_defs() local_unnamed_addr #0 {
  ret ptr @zfbcp_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zBCPE(ptr noundef %0) #1 {
  %2 = tail call i32 @filter_write_simple(ptr noundef %0, ptr noundef nonnull @s_BCPE_template) #4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zBCPD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BCPD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %2, i64 0, i32 3
  store ptr @no_bcp_signal_interrupt, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %2, i64 0, i32 4
  store ptr @no_bcp_request_status, ptr %4, align 8, !tbaa !11
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !12
  %7 = icmp eq i8 %6, 2
  %8 = zext i1 %7 to i32
  %9 = call i32 @filter_read(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @s_BCPD_template, ptr noundef nonnull %2, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @zTBCPE(ptr noundef %0) #1 {
  %2 = tail call i32 @filter_write_simple(ptr noundef %0, ptr noundef nonnull @s_TBCPE_template) #4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zTBCPD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_BCPD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %2, i64 0, i32 3
  store ptr @no_bcp_signal_interrupt, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_BCPD_state_s, ptr %2, i64 0, i32 4
  store ptr @no_bcp_request_status, ptr %4, align 8, !tbaa !11
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !12
  %7 = icmp eq i8 %6, 2
  %8 = zext i1 %7 to i32
  %9 = call i32 @filter_read(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @s_TBCPD_template, ptr noundef nonnull %2, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #4
  ret i32 %9
}

declare i32 @filter_write_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @no_bcp_signal_interrupt(ptr nocapture readnone %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @no_bcp_request_status(ptr nocapture readnone %0) #0 {
  ret i32 0
}

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
!6 = !{!"stream_BCPD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 32}
!12 = !{!8, !8, i64 0}
