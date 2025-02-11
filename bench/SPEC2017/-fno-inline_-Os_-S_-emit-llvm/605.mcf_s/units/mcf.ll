; ModuleID = 'mcf.c'
source_filename = "mcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }

@net = dso_local global %struct.network zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"checksum                   : %0.0f\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mcf.%d.out\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@str.18 = private unnamed_addr constant [28 x i8] c"not enough memory, exit(-1)\00", align 1
@str.19 = private unnamed_addr constant [27 x i8] c"\0AMCF SPEC CPU version 1.11\00", align 1
@str.20 = private unnamed_addr constant [51 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\00", align 1
@str.21 = private unnamed_addr constant [45 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\00", align 1
@str.22 = private unnamed_addr constant [39 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\00", align 1
@str.23 = private unnamed_addr constant [69 x i8] c"Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)\00", align 1
@str.24 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@str.25 = private unnamed_addr constant [17 x i8] c"read error, exit\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @global_opt() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %31, %0
  %2 = phi i64 [ -1, %0 ], [ %27, %31 ]
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !tbaa !6
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %5) #9
  %7 = tail call i64 @primal_net_simplex(ptr noundef nonnull @net) #10
  %8 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 28), align 8, !tbaa !13
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %8) #9
  %10 = tail call double @flow_cost(ptr noundef nonnull @net) #10
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %10) #9
  %12 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 7), align 8, !tbaa !14
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = tail call i64 @suspend_impl(ptr noundef nonnull @net, i64 noundef -1, i64 noundef 0) #10
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef -1) #11
  unreachable

19:                                               ; preds = %14
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %15) #9
  br label %26

23:                                               ; preds = %4
  %24 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 5), align 8, !tbaa !6
  %25 = tail call i64 @refreshPositions(ptr noundef nonnull @net, ptr noundef nonnull @getOriginalArcPosition, i64 noundef %24) #10
  br label %26

26:                                               ; preds = %19, %21, %23
  %27 = tail call i64 @price_out_impl(ptr noundef nonnull @net) #10
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %27) #9
  br label %31

31:                                               ; preds = %29, %26
  %32 = icmp slt i64 %27, 0
  br i1 %32, label %33, label %1, !llvm.loop !15

33:                                               ; preds = %31
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef -1) #11
  unreachable

35:                                               ; preds = %1
  %36 = tail call double @flow_cost(ptr noundef nonnull @net) #10
  store double %36, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 19), align 8, !tbaa !17
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %36) #9
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @primal_net_simplex(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @flow_cost(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @suspend_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @refreshPositions(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @getOriginalArcPosition(ptr noundef, i64 noundef) #3

; Function Attrs: optsize
declare i64 @price_out_impl(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #12
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %38, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %11 = tail call i32 @putchar(i32 10)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) @net, i8 0, i64 648, i1 false)
  store i64 10000000, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 18), align 8, !tbaa !18
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @net, ptr noundef nonnull dereferenceable(1) %13) #10
  %15 = icmp eq i32 %0, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = tail call i32 @atoi(ptr nocapture noundef %18) #13
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %19) #10
  br label %22

21:                                               ; preds = %5
  store i64 32780217678717805, ptr %3, align 16
  br label %22

22:                                               ; preds = %21, %16
  %23 = tail call i64 @read_min(ptr noundef nonnull @net) #10
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %27 = tail call i64 @getfree(ptr noundef nonnull @net) #10
  br label %38

28:                                               ; preds = %22
  %29 = load i64, ptr getelementptr inbounds (%struct.network, ptr @net, i64 0, i32 3), align 8, !tbaa !20
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %29) #9
  %31 = tail call i64 @primal_start_artificial(ptr noundef nonnull @net) #10
  %32 = tail call i64 @global_opt() #9
  %33 = call i64 @write_objective_value(ptr noundef nonnull %3, ptr noundef nonnull @net) #10
  %34 = icmp eq i64 %33, 0
  %35 = call i64 @getfree(ptr noundef nonnull @net) #10
  br i1 %34, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  br label %38

38:                                               ; preds = %28, %2, %36, %25
  %39 = phi i32 [ -1, %25 ], [ 0, %36 ], [ -1, %2 ], [ -1, %28 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #12
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @read_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @getfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @primal_start_artificial(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @write_objective_value(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !10, i64 424}
!7 = !{!"network", !8, i64 0, !8, i64 200, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !11, i64 536, !10, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!7, !10, i64 608}
!14 = !{!7, !10, i64 440}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!7, !11, i64 536}
!18 = !{!7, !10, i64 528}
!19 = !{!12, !12, i64 0}
!20 = !{!7, !10, i64 408}
