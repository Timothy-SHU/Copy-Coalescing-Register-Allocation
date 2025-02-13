; ModuleID = 'sff.c'
source_filename = "sff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ntpr = dso_local local_unnamed_addr global i32 100, align 4
@gb = dso_local local_unnamed_addr global i32 0, align 4
@blocksize = dso_local local_unnamed_addr global i32 8, align 4
@ntpr_md = dso_local local_unnamed_addr global i32 100, align 4
@dim = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"getx: can't open file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%6d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%20.15f%20.15f%20.15f\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%20.15f%20.15f%20.15f%20.15f\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"getxv: can't open file %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d %lf\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"no velocities were found\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%6d%15.5f\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%12.7f%12.7f%12.7f%12.7f%12.7f%12.7f\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"%12.7f%12.7f%12.7f\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\0AFirst derivative timing summary:\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"   constraints %10.2f\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"   bonds       %10.2f\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"   angles      %10.2f\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"   torsions    %10.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"   pairlist    %10.2f\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"   nonbonds    %10.2f\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"   gen. Born   %10.2f\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"   mme         %10.2f\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"   Total       %10.2f\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"   reduction   %10.2f\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"   molec. dyn. %10.2f\0A\0A\00", align 1
@mme_init.nold = internal unnamed_addr global i32 0, align 4
@prm = internal unnamed_addr global ptr null, align 8
@x0 = internal unnamed_addr global ptr null, align 8
@binposfp = internal unnamed_addr global ptr null, align 8
@frozen = internal unnamed_addr global ptr null, align 8
@constrained = internal unnamed_addr global ptr null, align 8
@nconstrained = internal unnamed_addr global i32 0, align 4
@.str.52 = private unnamed_addr constant [26 x i8] c"constrained all %d atoms\0A\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"constrained %d atoms using expression %s\0A\00", align 1
@gbalpha = internal unnamed_addr global double 0.000000e+00, align 8
@gbbeta = internal unnamed_addr global double 0.000000e+00, align 8
@gbgamma = internal unnamed_addr global double 0.000000e+00, align 8
@pairlistnp = internal unnamed_addr global ptr null, align 8
@upairsnp = internal unnamed_addr global ptr null, align 8
@lpairsnp = internal unnamed_addr global ptr null, align 8
@.str.54 = private unnamed_addr constant [48 x i8] c"Error allocating pairlistnp array in mme_init!\0A\00", align 1
@pairlist2np = internal unnamed_addr global ptr null, align 8
@upairs2np = internal unnamed_addr global ptr null, align 8
@lpairs2np = internal unnamed_addr global ptr null, align 8
@.str.55 = private unnamed_addr constant [49 x i8] c"Error allocating pairlist2np array in mme_init!\0A\00", align 1
@pairlist = internal unnamed_addr global ptr null, align 8
@nb_pairs = internal unnamed_addr global i32 -1, align 4
@upairs = internal unnamed_addr global ptr null, align 8
@lpairs = internal unnamed_addr global ptr null, align 8
@.str.56 = private unnamed_addr constant [46 x i8] c"Error allocating pairlist array in mme_init!\0A\00", align 1
@nfrozen = internal unnamed_addr global i32 0, align 4
@.str.57 = private unnamed_addr constant [56 x i8] c"freezing %d atoms using expression %s for moving atoms\0A\00", align 1
@N14pearlist = internal unnamed_addr global ptr null, align 8
@.str.58 = private unnamed_addr constant [49 x i8] c"Error allocating N14pearlist array in mme_init!\0A\00", align 1
@IexclAt = internal unnamed_addr global ptr null, align 8
@.str.59 = private unnamed_addr constant [45 x i8] c"Error allocating IexclAt array in mme_init!\0A\00", align 1
@tdiagd = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdiag = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tlevel = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tnewton = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tcholesky = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tconjgrad = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdgeev = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tmmetwo = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tmmeone = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@chknm = internal unnamed_addr global ptr null, align 8
@.str.60 = private unnamed_addr constant [18 x i8] c"\09checkpoint:  %s\0A\00", align 1
@md.xold = internal unnamed_addr global ptr null, align 8
@md.accel = internal unnamed_addr global ptr null, align 8
@md.minv = internal unnamed_addr global ptr null, align 8
@md.nold = internal unnamed_addr global i32 0, align 4
@.str.61 = private unnamed_addr constant [35 x i8] c"unable to allocate space for minv\0A\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"unable to allocate space for xold\0A\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"unable to allocate space for accel\0A\00", align 1
@max_step = internal unnamed_addr global i32 -1, align 4
@t = internal unnamed_addr global double 0.000000e+00, align 8
@tnmode = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@mme34.grad = internal unnamed_addr global ptr null, align 8
@.str.65 = private unnamed_addr constant [21 x i8] c"      iter    Total\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"ff:%6d %9.2f\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"     bond:  %15.9f\0A\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"    angle:  %15.9f\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c" dihedral:  %15.9f\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"    enb14:  %15.9f\0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"    eel14:  %15.9f\0A\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"      enb:  %15.9f\0A\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"      eel:  %15.9f\0A\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"      egb:  %15.9f\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"    econs:  %15.9f\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"    esurf:  %15.9f\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"    Total:  %15.9f\0A\00", align 1
@egb.reff = internal unnamed_addr global ptr null, align 8
@egb.sumdeijda = internal unnamed_addr global ptr null, align 8
@egb.psi = internal unnamed_addr global ptr null, align 8
@egb.reqack = internal unnamed_addr global ptr null, align 8
@egb.iexw = internal unnamed_addr global ptr null, align 8
@.str.80 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 1, taskid = %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 3, taskid = %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 5, taskid = %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"bad value for Pn: %d %d %d %d %8.3f\0A\00", align 1
@.str.85 = private unnamed_addr constant [51 x i8] c"NULL pair list entry in nbond loop 1, taskid = %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @seconds() local_unnamed_addr #0 {
  ret double 1.000000e-01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @myroc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = sdiv i32 %0, %1
  %8 = srem i32 %7, %2
  %9 = icmp eq i32 %8, %3
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %4, %6
  %12 = phi i32 [ %10, %6 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_nr_debug() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_blocksize() local_unnamed_addr #1 {
  %1 = load i32, ptr @blocksize, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_mytaskid() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @get_numtasks() local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mpierror(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @exit(i32 noundef 1) #24
  unreachable

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reducerror(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @mpierror(i32 noundef %0) #25
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @mpifinalize() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @mpiinit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 {
  store i32 0, ptr %2, align 4, !tbaa !5
  store i32 1, ptr %3, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxyz(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @getxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxyzw(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [82 x i8], align 16
  %6 = alloca [21 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #26
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %7, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr @stdin, align 8, !tbaa !9
  br label %29

14:                                               ; preds = %9
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdin, align 8, !tbaa !9
  br label %29

19:                                               ; preds = %14
  %20 = tail call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %24 = load ptr, ptr %0, align 8, !tbaa !9
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef %24) #28
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = tail call i32 @reducerror(i32 noundef %27) #25
  br label %29

29:                                               ; preds = %26, %17, %12
  %30 = phi ptr [ %20, %26 ], [ %18, %17 ], [ %13, %12 ]
  %31 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #29
  %32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef %1) #29
  %33 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #29
  %34 = load i32, ptr %1, align 4, !tbaa !5
  %35 = mul nsw i32 %34, %3
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = getelementptr inbounds [21 x i8], ptr %6, i64 0, i64 20
  %39 = add nsw i32 %3, -1
  br label %40

40:                                               ; preds = %37, %60
  %41 = phi i32 [ %34, %37 ], [ %61, %60 ]
  %42 = phi i64 [ 0, %37 ], [ %62, %60 ]
  %43 = phi i32 [ %35, %37 ], [ %63, %60 ]
  %44 = trunc i64 %42 to i32
  %45 = srem i32 %44, %3
  %46 = mul nsw i32 %45, 20
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %5, i64 %47
  %49 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %48, i64 noundef 20) #29
  store i8 0, ptr %38, align 4, !tbaa !11
  %50 = call double @atof(ptr noundef nonnull %6) #27
  %51 = getelementptr inbounds double, ptr %2, i64 %42
  store double %50, ptr %51, align 8, !tbaa !12
  %52 = icmp eq i32 %45, %39
  %53 = add nsw i32 %43, -1
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %42, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #29
  %59 = load i32, ptr %1, align 4, !tbaa !5
  br label %60

60:                                               ; preds = %40, %57
  %61 = phi i32 [ %41, %40 ], [ %59, %57 ]
  %62 = add nuw nsw i64 %42, 1
  %63 = mul nsw i32 %61, %3
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %40, label %66, !llvm.loop !14

66:                                               ; preds = %60, %29
  %67 = load ptr, ptr @stdin, align 8, !tbaa !9
  %68 = icmp eq ptr %30, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 @fclose(ptr noundef %30) #25
  br label %71

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %5) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxyz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @putxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxyzw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str) #27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  br label %16

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen(ptr noundef %5, ptr noundef nonnull @.str.4) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !9
  %15 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %14) #29
  br label %51

16:                                               ; preds = %10, %8
  %17 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %18 = load i32, ptr %1, align 4, !tbaa !5
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %18) #25
  %20 = load i32, ptr %1, align 4, !tbaa !5
  %21 = mul nsw i32 %20, %3
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = icmp eq i32 %3, 3
  %25 = sext i32 %3 to i64
  br label %26

26:                                               ; preds = %23, %40
  %27 = phi i64 [ 0, %23 ], [ %41, %40 ]
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !12
  %30 = getelementptr double, ptr %28, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !12
  %32 = getelementptr double, ptr %28, i64 2
  %33 = load double, ptr %32, align 8, !tbaa !12
  br i1 %24, label %34, label %36

34:                                               ; preds = %26
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, double noundef %29, double noundef %31, double noundef %33) #25
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr double, ptr %28, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !12
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.8, double noundef %29, double noundef %31, double noundef %33, double noundef %38) #25
  br label %40

40:                                               ; preds = %34, %36
  %41 = add i64 %27, %25
  %42 = load i32, ptr %1, align 4, !tbaa !5
  %43 = mul nsw i32 %42, %3
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %26, label %46, !llvm.loop !16

46:                                               ; preds = %40, %16
  %47 = load ptr, ptr @stdout, align 8, !tbaa !9
  %48 = icmp eq ptr %17, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @fclose(ptr noundef %17) #25
  br label %51

51:                                               ; preds = %13, %49, %46
  %52 = phi i32 [ 0, %49 ], [ 0, %46 ], [ -1, %13 ]
  %53 = tail call i32 @reducerror(i32 noundef %52) #25
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @strindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 0
  br label %8

8:                                                ; preds = %5, %24
  %9 = phi i64 [ 0, %5 ], [ %25, %24 ]
  br i1 %7, label %24, label %10

10:                                               ; preds = %8, %17
  %11 = phi i64 [ %18, %17 ], [ %9, %8 ]
  %12 = phi i64 [ %19, %17 ], [ 0, %8 ]
  %13 = phi i8 [ %21, %17 ], [ %6, %8 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, %13
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = add nuw i64 %11, 1
  %19 = add nuw i64 %12, 1
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !17

23:                                               ; preds = %17
  br i1 %7, label %24, label %29

24:                                               ; preds = %10, %8, %23
  %25 = add nuw i64 %9, 1
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %8, !llvm.loop !18

29:                                               ; preds = %23
  %30 = trunc i64 %9 to i32
  br label %31

31:                                               ; preds = %24, %29, %2
  %32 = phi i32 [ -1, %2 ], [ %30, %29 ], [ -1, %24 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ggets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca [82 x i8], align 16
  %7 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %7) #26
  %8 = load ptr, ptr %0, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1, !tbaa !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stdin, align 8, !tbaa !9
  br label %30

15:                                               ; preds = %10
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str) #27
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdin, align 8, !tbaa !9
  br label %30

20:                                               ; preds = %15
  %21 = tail call noalias ptr @fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.1) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !9
  %25 = load ptr, ptr %0, align 8, !tbaa !9
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %25) #28
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi i32 [ -1, %23 ], [ 0, %20 ]
  %29 = tail call i32 @reducerror(i32 noundef %28) #25
  br label %30

30:                                               ; preds = %27, %18, %13
  %31 = phi ptr [ %21, %27 ], [ %19, %18 ], [ %14, %13 ]
  %32 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %33 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  store double 0.000000e+00, ptr %2, align 8, !tbaa !12
  %34 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull %2) #29
  %35 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %36 = load i32, ptr %1, align 4, !tbaa !5
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %30
  %39 = mul nsw i32 %36, 3
  %40 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 12
  br label %41

41:                                               ; preds = %38, %61
  %42 = phi i32 [ %36, %38 ], [ %62, %61 ]
  %43 = phi i64 [ 0, %38 ], [ %63, %61 ]
  %44 = phi i32 [ %39, %38 ], [ %64, %61 ]
  %45 = trunc i64 %43 to i32
  %46 = urem i32 %45, 6
  %47 = mul nuw nsw i32 %46, 12
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %6, i64 %48
  %50 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %49, i64 noundef 12) #29
  store i8 0, ptr %40, align 1, !tbaa !11
  %51 = call double @atof(ptr noundef nonnull %7) #27
  %52 = getelementptr inbounds double, ptr %3, i64 %43
  store double %51, ptr %52, align 8, !tbaa !12
  %53 = icmp eq i32 %46, 5
  %54 = add nsw i32 %44, -1
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %43, %55
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %60 = load i32, ptr %1, align 4, !tbaa !5
  br label %61

61:                                               ; preds = %41, %58
  %62 = phi i32 [ %42, %41 ], [ %60, %58 ]
  %63 = add nuw nsw i64 %43, 1
  %64 = mul nsw i32 %62, 3
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %41, label %67, !llvm.loop !19

67:                                               ; preds = %61, %30
  %68 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %69 = icmp eq ptr %68, null
  %70 = load i32, ptr %1, align 4, !tbaa !5
  %71 = icmp sgt i32 %70, 0
  br i1 %69, label %75, label %72

72:                                               ; preds = %67
  br i1 %71, label %73, label %105

73:                                               ; preds = %72
  %74 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 12
  br label %81

75:                                               ; preds = %67
  br i1 %71, label %76, label %102

76:                                               ; preds = %75
  %77 = mul i32 %70, 3
  %78 = call i32 @llvm.smax.i32(i32 %77, i32 1)
  %79 = zext nneg i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %80, i1 false), !tbaa !12
  br label %102

81:                                               ; preds = %73, %96
  %82 = phi i32 [ %70, %73 ], [ %97, %96 ]
  %83 = phi i64 [ 0, %73 ], [ %98, %96 ]
  %84 = trunc i64 %83 to i32
  %85 = urem i32 %84, 6
  %86 = mul nuw nsw i32 %85, 12
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %6, i64 %87
  %89 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %88, i64 noundef 12) #29
  store i8 0, ptr %74, align 1, !tbaa !11
  %90 = call double @atof(ptr noundef nonnull %7) #27
  %91 = getelementptr inbounds double, ptr %4, i64 %83
  store double %90, ptr %91, align 8, !tbaa !12
  %92 = icmp eq i32 %85, 5
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #29
  %95 = load i32, ptr %1, align 4, !tbaa !5
  br label %96

96:                                               ; preds = %81, %93
  %97 = phi i32 [ %82, %81 ], [ %95, %93 ]
  %98 = add nuw nsw i64 %83, 1
  %99 = mul nsw i32 %97, 3
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %81, label %105, !llvm.loop !20

102:                                              ; preds = %76, %75
  %103 = load ptr, ptr @nabout, align 8, !tbaa !9
  %104 = call i64 @fwrite(ptr nonnull @.str.11, i64 25, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %96, %72, %102
  %106 = load ptr, ptr @stdin, align 8, !tbaa !9
  %107 = icmp eq ptr %31, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 @fclose(ptr noundef %31) #25
  br label %110

110:                                              ; preds = %108, %105
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %6) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr @stdout, align 8, !tbaa !9
  br label %18

12:                                               ; preds = %6
  %13 = tail call noalias ptr @fopen(ptr noundef %7, ptr noundef nonnull @.str.4) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !9
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %16) #29
  br label %94

18:                                               ; preds = %12, %10
  %19 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !9
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef %20) #25
  %22 = load i32, ptr %2, align 4, !tbaa !5
  %23 = load double, ptr %3, align 8, !tbaa !12
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %22, double noundef %23) #25
  %25 = load i32, ptr %2, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %18
  %28 = mul nsw i32 %25, 3
  br label %31

29:                                               ; preds = %54
  %30 = icmp sgt i32 %56, 0
  br i1 %30, label %60, label %89

31:                                               ; preds = %27, %54
  %32 = phi i64 [ %55, %54 ], [ 0, %27 ]
  %33 = phi i32 [ %57, %54 ], [ %28, %27 ]
  %34 = add nuw nsw i64 %32, 3
  %35 = sext i32 %33 to i64
  %36 = icmp slt i64 %34, %35
  %37 = getelementptr inbounds double, ptr %4, i64 %32
  %38 = load double, ptr %37, align 8, !tbaa !12
  %39 = or disjoint i64 %32, 1
  %40 = getelementptr inbounds double, ptr %4, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !12
  %42 = getelementptr double, ptr %37, i64 2
  %43 = load double, ptr %42, align 8, !tbaa !12
  br i1 %36, label %44, label %52

44:                                               ; preds = %31
  %45 = getelementptr inbounds double, ptr %4, i64 %34
  %46 = load double, ptr %45, align 8, !tbaa !12
  %47 = getelementptr double, ptr %37, i64 4
  %48 = load double, ptr %47, align 8, !tbaa !12
  %49 = getelementptr double, ptr %37, i64 5
  %50 = load double, ptr %49, align 8, !tbaa !12
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %38, double noundef %41, double noundef %43, double noundef %46, double noundef %48, double noundef %50) #25
  br label %54

52:                                               ; preds = %31
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %38, double noundef %41, double noundef %43) #25
  br label %54

54:                                               ; preds = %44, %52
  %55 = add nuw i64 %32, 6
  %56 = load i32, ptr %2, align 4, !tbaa !5
  %57 = mul nsw i32 %56, 3
  %58 = trunc i64 %55 to i32
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %31, label %29, !llvm.loop !21

60:                                               ; preds = %29, %83
  %61 = phi i64 [ %84, %83 ], [ 0, %29 ]
  %62 = phi i32 [ %86, %83 ], [ %57, %29 ]
  %63 = add nuw nsw i64 %61, 3
  %64 = sext i32 %62 to i64
  %65 = icmp slt i64 %63, %64
  %66 = getelementptr inbounds double, ptr %5, i64 %61
  %67 = load double, ptr %66, align 8, !tbaa !12
  %68 = or disjoint i64 %61, 1
  %69 = getelementptr inbounds double, ptr %5, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !12
  %71 = getelementptr double, ptr %66, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !12
  br i1 %65, label %73, label %81

73:                                               ; preds = %60
  %74 = getelementptr inbounds double, ptr %5, i64 %63
  %75 = load double, ptr %74, align 8, !tbaa !12
  %76 = getelementptr double, ptr %66, i64 4
  %77 = load double, ptr %76, align 8, !tbaa !12
  %78 = getelementptr double, ptr %66, i64 5
  %79 = load double, ptr %78, align 8, !tbaa !12
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %67, double noundef %70, double noundef %72, double noundef %75, double noundef %77, double noundef %79) #25
  br label %83

81:                                               ; preds = %60
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %67, double noundef %70, double noundef %72) #25
  br label %83

83:                                               ; preds = %73, %81
  %84 = add nuw i64 %61, 6
  %85 = load i32, ptr %2, align 4, !tbaa !5
  %86 = mul nsw i32 %85, 3
  %87 = trunc i64 %84 to i32
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %60, label %89, !llvm.loop !22

89:                                               ; preds = %83, %18, %29
  %90 = load ptr, ptr @stdout, align 8, !tbaa !9
  %91 = icmp eq ptr %19, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @fclose(ptr noundef %19) #25
  br label %94

94:                                               ; preds = %15, %92, %89
  %95 = phi i32 [ 0, %92 ], [ 0, %89 ], [ -1, %15 ]
  %96 = tail call i32 @reducerror(i32 noundef %95) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @checkpoint(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %1, ptr %5, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ %3, %4 ]
  %11 = add nuw nsw i32 %9, 1
  %12 = udiv i32 %10, 10
  %13 = icmp ult i32 %10, 10
  br i1 %13, label %14, label %8, !llvm.loop !23

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %9, 2
  %16 = zext nneg i32 %15 to i64
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #30
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %3) #29
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 @strindex(ptr noundef %0, ptr noundef nonnull @.str.3) #25
  %22 = icmp slt i32 %21, 0
  %23 = add nsw i32 %11, %20
  br i1 %22, label %24, label %36

24:                                               ; preds = %14
  %25 = add nsw i32 %23, 1
  %26 = sext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #30
  %28 = shl i64 %19, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call ptr @strncpy(ptr noundef %27, ptr noundef %0, i64 noundef %29) #29
  %31 = getelementptr inbounds i8, ptr %27, i64 %29
  %32 = zext nneg i32 %11 to i64
  %33 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %32) #29
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds i8, ptr %27, i64 %34
  br label %57

36:                                               ; preds = %14
  %37 = add i32 %9, %20
  %38 = sext i32 %37 to i64
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #30
  %40 = zext nneg i32 %21 to i64
  %41 = tail call ptr @strncpy(ptr noundef %39, ptr noundef %0, i64 noundef %40) #29
  %42 = getelementptr inbounds i8, ptr %39, i64 %40
  %43 = zext nneg i32 %11 to i64
  %44 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %43) #29
  %45 = add nuw nsw i32 %21, %11
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %39, i64 %46
  %48 = getelementptr i8, ptr %0, i64 %40
  %49 = getelementptr i8, ptr %48, i64 2
  %50 = sub i32 %20, %21
  %51 = add i32 %50, -2
  %52 = sext i32 %51 to i64
  %53 = tail call ptr @strncpy(ptr noundef nonnull %47, ptr noundef %49, i64 noundef %52) #29
  %54 = sext i32 %23 to i64
  %55 = getelementptr i8, ptr %39, i64 %54
  %56 = getelementptr i8, ptr %55, i64 -2
  br label %57

57:                                               ; preds = %36, %24
  %58 = phi ptr [ %56, %36 ], [ %35, %24 ]
  %59 = phi ptr [ %39, %36 ], [ %27, %24 ]
  store i8 0, ptr %58, align 1, !tbaa !11
  store ptr %59, ptr %6, align 8
  %60 = call i32 @putxyz(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %2) #25
  tail call void @free(ptr noundef nonnull %59) #29
  tail call void @free(ptr noundef %17) #29
  br label %61

61:                                               ; preds = %4, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @mme_timer() local_unnamed_addr #14 {
  %1 = load ptr, ptr @nabout, align 8, !tbaa !9
  %2 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 34, i64 1, ptr %1)
  %3 = load ptr, ptr @nabout, align 8, !tbaa !9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, double noundef 0.000000e+00) #25
  %5 = load ptr, ptr @nabout, align 8, !tbaa !9
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.18, double noundef 0.000000e+00) #25
  %7 = load ptr, ptr @nabout, align 8, !tbaa !9
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.19, double noundef 0.000000e+00) #25
  %9 = load ptr, ptr @nabout, align 8, !tbaa !9
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #25
  %11 = load ptr, ptr @nabout, align 8, !tbaa !9
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.21, double noundef 0.000000e+00) #25
  %13 = load ptr, ptr @nabout, align 8, !tbaa !9
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.22, double noundef 0.000000e+00) #25
  %15 = load ptr, ptr @nabout, align 8, !tbaa !9
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.23, double noundef 0.000000e+00) #25
  %17 = load ptr, ptr @nabout, align 8, !tbaa !9
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.24, double noundef 0.000000e+00) #25
  %19 = load ptr, ptr @nabout, align 8, !tbaa !9
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.25, double noundef 0.000000e+00) #25
  %21 = load ptr, ptr @nabout, align 8, !tbaa !9
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.26, double noundef 0.000000e+00) #25
  %23 = load ptr, ptr @nabout, align 8, !tbaa !9
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.27, double noundef 0.000000e+00) #25
  %25 = load ptr, ptr @nabout, align 8, !tbaa !9
  %26 = tail call i32 @fflush(ptr noundef %25) #25
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mme_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i1 false, ptr @dim, align 4
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  store ptr %8, ptr @prm, align 8, !tbaa !9
  store ptr %3, ptr @x0, align 8, !tbaa !9
  store ptr %4, ptr @binposfp, align 8, !tbaa !9
  %9 = load ptr, ptr @frozen, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.parm, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !26
  tail call void @free_ivector(ptr noundef %9, i32 noundef 0, i32 noundef %11) #29
  %12 = load ptr, ptr @constrained, align 8, !tbaa !9
  %13 = load ptr, ptr @prm, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !26
  tail call void @free_ivector(ptr noundef %12, i32 noundef 0, i32 noundef %15) #29
  %16 = load ptr, ptr @prm, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.parm, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !26
  %19 = tail call ptr @ivector(i32 noundef 0, i32 noundef %18) #29
  store ptr %19, ptr @frozen, align 8, !tbaa !9
  %20 = load ptr, ptr @prm, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.parm, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !26
  %23 = tail call ptr @ivector(i32 noundef 0, i32 noundef %22) #29
  store ptr %23, ptr @constrained, align 8, !tbaa !9
  %24 = load ptr, ptr @binposfp, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = tail call i32 @writebinposhdr(ptr noundef nonnull %24) #29
  %28 = load ptr, ptr @constrained, align 8, !tbaa !9
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi ptr [ %28, %26 ], [ %23, %5 ]
  %31 = tail call i32 @set_cons_mask(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %30) #29
  store i32 %31, ptr @nconstrained, align 4, !tbaa !5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %2, null
  %35 = load ptr, ptr @nabout, align 8, !tbaa !9
  br i1 %34, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.52, i32 noundef %31) #25
  br label %40

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.53, i32 noundef %31, ptr noundef nonnull %2) #25
  br label %40

40:                                               ; preds = %36, %38, %29
  %41 = load i32, ptr @gb, align 4, !tbaa !5
  switch i32 %41, label %47 [
    i32 2, label %43
    i32 5, label %42
  ]

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %40, %42
  %44 = phi double [ 1.000000e+00, %42 ], [ 8.000000e-01, %40 ]
  %45 = phi double [ 8.000000e-01, %42 ], [ 0.000000e+00, %40 ]
  %46 = phi double [ 4.850000e+00, %42 ], [ 0x400745E353F7CED9, %40 ]
  store double %44, ptr @gbalpha, align 8, !tbaa !12
  store double %45, ptr @gbbeta, align 8, !tbaa !12
  store double %46, ptr @gbgamma, align 8, !tbaa !12
  br label %47

47:                                               ; preds = %43, %40
  %48 = load ptr, ptr @pairlistnp, align 8, !tbaa !9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %50 ]
  %55 = load ptr, ptr @pairlistnp, align 8, !tbaa !9
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %57, i32 noundef 0, i32 noundef 1) #29
  %58 = add nuw nsw i64 %54, 1
  %59 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %53, label %62, !llvm.loop !28

62:                                               ; preds = %53
  %63 = trunc i64 %58 to i32
  %64 = load ptr, ptr @pairlistnp, align 8, !tbaa !9
  br label %65

65:                                               ; preds = %62, %50
  %66 = phi ptr [ %48, %50 ], [ %64, %62 ]
  %67 = phi i32 [ 0, %50 ], [ %63, %62 ]
  store i32 %67, ptr %6, align 4, !tbaa !5
  tail call void @free(ptr noundef %66) #29
  br label %68

68:                                               ; preds = %65, %47
  %69 = load ptr, ptr @upairsnp, align 8, !tbaa !9
  %70 = load ptr, ptr @prm, align 8, !tbaa !9
  %71 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !26
  tail call void @free_ivector(ptr noundef %69, i32 noundef 0, i32 noundef %72) #29
  %73 = load ptr, ptr @lpairsnp, align 8, !tbaa !9
  %74 = load ptr, ptr @prm, align 8, !tbaa !9
  %75 = getelementptr inbounds %struct.parm, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !26
  tail call void @free_ivector(ptr noundef %73, i32 noundef 0, i32 noundef %76) #29
  %77 = load ptr, ptr @prm, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.parm, ptr %77, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !26
  %80 = tail call ptr @ivector(i32 noundef 0, i32 noundef %79) #29
  store ptr %80, ptr @upairsnp, align 8, !tbaa !9
  %81 = load ptr, ptr @prm, align 8, !tbaa !9
  %82 = getelementptr inbounds %struct.parm, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !26
  %84 = tail call ptr @ivector(i32 noundef 0, i32 noundef %83) #29
  store ptr %84, ptr @lpairsnp, align 8, !tbaa !9
  %85 = load ptr, ptr @prm, align 8, !tbaa !9
  %86 = getelementptr inbounds %struct.parm, ptr %85, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !26
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 3
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #30
  store ptr %90, ptr @pairlistnp, align 8, !tbaa !9
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %68
  %93 = load ptr, ptr @nabout, align 8, !tbaa !9
  %94 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 47, i64 1, ptr %93)
  %95 = load ptr, ptr @nabout, align 8, !tbaa !9
  %96 = tail call i32 @fflush(ptr noundef %95) #25
  %97 = tail call i32 @mpierror(i32 noundef -1) #25
  %98 = load ptr, ptr @prm, align 8, !tbaa !9
  %99 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !26
  br label %101

101:                                              ; preds = %92, %68
  %102 = phi i32 [ %100, %92 ], [ %87, %68 ]
  %103 = phi ptr [ %98, %92 ], [ %85, %68 ]
  %104 = getelementptr inbounds %struct.parm, ptr %103, i64 0, i32 4
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load ptr, ptr @pairlistnp, align 8, !tbaa !9
  %108 = load ptr, ptr @upairsnp, align 8, !tbaa !9
  %109 = load ptr, ptr @lpairsnp, align 8, !tbaa !9
  br label %110

110:                                              ; preds = %106, %110
  %111 = phi i64 [ 0, %106 ], [ %115, %110 ]
  %112 = getelementptr inbounds ptr, ptr %107, i64 %111
  store ptr null, ptr %112, align 8, !tbaa !9
  %113 = getelementptr inbounds i32, ptr %108, i64 %111
  store i32 0, ptr %113, align 4, !tbaa !5
  %114 = getelementptr inbounds i32, ptr %109, i64 %111
  store i32 0, ptr %114, align 4, !tbaa !5
  %115 = add nuw nsw i64 %111, 1
  %116 = load i32, ptr %104, align 8, !tbaa !26
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %110, label %119, !llvm.loop !29

119:                                              ; preds = %110
  %120 = trunc i64 %115 to i32
  br label %121

121:                                              ; preds = %119, %101
  %122 = phi i32 [ %102, %101 ], [ %116, %119 ]
  %123 = phi i32 [ 0, %101 ], [ %120, %119 ]
  store i32 %123, ptr %6, align 4, !tbaa !5
  %124 = load ptr, ptr @pairlist2np, align 8, !tbaa !9
  %125 = icmp eq ptr %124, null
  br i1 %125, label %148, label %126

126:                                              ; preds = %121
  %127 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %134, %129 ], [ 0, %126 ]
  %131 = load ptr, ptr @pairlist2np, align 8, !tbaa !9
  %132 = getelementptr inbounds ptr, ptr %131, i64 %130
  %133 = load ptr, ptr %132, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %133, i32 noundef 0, i32 noundef 1) #29
  %134 = add nuw nsw i64 %130, 1
  %135 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %129, label %138, !llvm.loop !30

138:                                              ; preds = %129
  %139 = trunc i64 %134 to i32
  %140 = load ptr, ptr @pairlist2np, align 8, !tbaa !9
  %141 = load ptr, ptr @prm, align 8, !tbaa !9
  br label %142

142:                                              ; preds = %138, %126
  %143 = phi ptr [ %103, %126 ], [ %141, %138 ]
  %144 = phi ptr [ %124, %126 ], [ %140, %138 ]
  %145 = phi i32 [ 0, %126 ], [ %139, %138 ]
  store i32 %145, ptr %6, align 4, !tbaa !5
  tail call void @free(ptr noundef %144) #29
  %146 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !26
  br label %148

148:                                              ; preds = %142, %121
  %149 = phi i32 [ %147, %142 ], [ %122, %121 ]
  %150 = load ptr, ptr @upairs2np, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %150, i32 noundef 0, i32 noundef %149) #29
  %151 = load ptr, ptr @lpairs2np, align 8, !tbaa !9
  %152 = load ptr, ptr @prm, align 8, !tbaa !9
  %153 = getelementptr inbounds %struct.parm, ptr %152, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !26
  tail call void @free_ivector(ptr noundef %151, i32 noundef 0, i32 noundef %154) #29
  %155 = load ptr, ptr @prm, align 8, !tbaa !9
  %156 = getelementptr inbounds %struct.parm, ptr %155, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !26
  %158 = tail call ptr @ivector(i32 noundef 0, i32 noundef %157) #29
  store ptr %158, ptr @upairs2np, align 8, !tbaa !9
  %159 = load ptr, ptr @prm, align 8, !tbaa !9
  %160 = getelementptr inbounds %struct.parm, ptr %159, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !26
  %162 = tail call ptr @ivector(i32 noundef 0, i32 noundef %161) #29
  store ptr %162, ptr @lpairs2np, align 8, !tbaa !9
  %163 = load ptr, ptr @prm, align 8, !tbaa !9
  %164 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !26
  %166 = sext i32 %165 to i64
  %167 = shl nsw i64 %166, 3
  %168 = tail call noalias ptr @malloc(i64 noundef %167) #30
  store ptr %168, ptr @pairlist2np, align 8, !tbaa !9
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %148
  %171 = load ptr, ptr @nabout, align 8, !tbaa !9
  %172 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 48, i64 1, ptr %171)
  %173 = load ptr, ptr @nabout, align 8, !tbaa !9
  %174 = tail call i32 @fflush(ptr noundef %173) #25
  %175 = tail call i32 @mpierror(i32 noundef -1) #25
  %176 = load ptr, ptr @prm, align 8, !tbaa !9
  %177 = getelementptr inbounds %struct.parm, ptr %176, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !26
  br label %179

179:                                              ; preds = %170, %148
  %180 = phi i32 [ %178, %170 ], [ %165, %148 ]
  %181 = phi ptr [ %176, %170 ], [ %163, %148 ]
  %182 = getelementptr inbounds %struct.parm, ptr %181, i64 0, i32 4
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %179
  %185 = load ptr, ptr @pairlist2np, align 8, !tbaa !9
  %186 = load ptr, ptr @upairs2np, align 8, !tbaa !9
  %187 = load ptr, ptr @lpairs2np, align 8, !tbaa !9
  br label %188

188:                                              ; preds = %184, %188
  %189 = phi i64 [ 0, %184 ], [ %193, %188 ]
  %190 = getelementptr inbounds ptr, ptr %185, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !9
  %191 = getelementptr inbounds i32, ptr %186, i64 %189
  store i32 0, ptr %191, align 4, !tbaa !5
  %192 = getelementptr inbounds i32, ptr %187, i64 %189
  store i32 0, ptr %192, align 4, !tbaa !5
  %193 = add nuw nsw i64 %189, 1
  %194 = load i32, ptr %182, align 8, !tbaa !26
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %188, label %197, !llvm.loop !31

197:                                              ; preds = %188, %179
  %198 = phi i32 [ %180, %179 ], [ %194, %188 ]
  %199 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %200 = icmp eq ptr %199, null
  br i1 %200, label %223, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %201, %204
  %205 = phi i64 [ %209, %204 ], [ 0, %201 ]
  %206 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %207 = getelementptr inbounds ptr, ptr %206, i64 %205
  %208 = load ptr, ptr %207, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %208, i32 noundef 0, i32 noundef 1) #29
  %209 = add nuw nsw i64 %205, 1
  %210 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %204, label %213, !llvm.loop !32

213:                                              ; preds = %204
  %214 = trunc i64 %209 to i32
  %215 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %216 = load ptr, ptr @prm, align 8, !tbaa !9
  br label %217

217:                                              ; preds = %213, %201
  %218 = phi ptr [ %181, %201 ], [ %216, %213 ]
  %219 = phi ptr [ %199, %201 ], [ %215, %213 ]
  %220 = phi i32 [ 0, %201 ], [ %214, %213 ]
  store i32 %220, ptr %6, align 4, !tbaa !5
  tail call void @free(ptr noundef %219) #29
  %221 = getelementptr inbounds %struct.parm, ptr %218, i64 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !26
  br label %223

223:                                              ; preds = %217, %197
  %224 = phi i32 [ %222, %217 ], [ %198, %197 ]
  store i32 -1, ptr @nb_pairs, align 4, !tbaa !5
  %225 = load ptr, ptr @upairs, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %225, i32 noundef 0, i32 noundef %224) #29
  %226 = load ptr, ptr @lpairs, align 8, !tbaa !9
  %227 = load ptr, ptr @prm, align 8, !tbaa !9
  %228 = getelementptr inbounds %struct.parm, ptr %227, i64 0, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !26
  tail call void @free_ivector(ptr noundef %226, i32 noundef 0, i32 noundef %229) #29
  %230 = load ptr, ptr @prm, align 8, !tbaa !9
  %231 = getelementptr inbounds %struct.parm, ptr %230, i64 0, i32 4
  %232 = load i32, ptr %231, align 8, !tbaa !26
  %233 = tail call ptr @ivector(i32 noundef 0, i32 noundef %232) #29
  store ptr %233, ptr @upairs, align 8, !tbaa !9
  %234 = load ptr, ptr @prm, align 8, !tbaa !9
  %235 = getelementptr inbounds %struct.parm, ptr %234, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !26
  %237 = tail call ptr @ivector(i32 noundef 0, i32 noundef %236) #29
  store ptr %237, ptr @lpairs, align 8, !tbaa !9
  %238 = load ptr, ptr @prm, align 8, !tbaa !9
  %239 = getelementptr inbounds %struct.parm, ptr %238, i64 0, i32 4
  %240 = load i32, ptr %239, align 8, !tbaa !26
  %241 = sext i32 %240 to i64
  %242 = shl nsw i64 %241, 3
  %243 = tail call noalias ptr @malloc(i64 noundef %242) #30
  store ptr %243, ptr @pairlist, align 8, !tbaa !9
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %254

245:                                              ; preds = %223
  %246 = load ptr, ptr @nabout, align 8, !tbaa !9
  %247 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 45, i64 1, ptr %246)
  %248 = load ptr, ptr @nabout, align 8, !tbaa !9
  %249 = tail call i32 @fflush(ptr noundef %248) #25
  %250 = tail call i32 @mpierror(i32 noundef -1) #25
  %251 = load ptr, ptr @prm, align 8, !tbaa !9
  %252 = getelementptr inbounds %struct.parm, ptr %251, i64 0, i32 4
  %253 = load i32, ptr %252, align 8, !tbaa !26
  br label %254

254:                                              ; preds = %245, %223
  %255 = phi i32 [ %253, %245 ], [ %240, %223 ]
  %256 = phi ptr [ %251, %245 ], [ %238, %223 ]
  %257 = getelementptr inbounds %struct.parm, ptr %256, i64 0, i32 4
  %258 = icmp sgt i32 %255, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %254
  %260 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %261 = load ptr, ptr @upairs, align 8, !tbaa !9
  %262 = load ptr, ptr @lpairs, align 8, !tbaa !9
  br label %263

263:                                              ; preds = %259, %263
  %264 = phi i64 [ 0, %259 ], [ %268, %263 ]
  %265 = getelementptr inbounds ptr, ptr %260, i64 %264
  store ptr null, ptr %265, align 8, !tbaa !9
  %266 = getelementptr inbounds i32, ptr %261, i64 %264
  store i32 0, ptr %266, align 4, !tbaa !5
  %267 = getelementptr inbounds i32, ptr %262, i64 %264
  store i32 0, ptr %267, align 4, !tbaa !5
  %268 = add nuw nsw i64 %264, 1
  %269 = load i32, ptr %257, align 8, !tbaa !26
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %263, label %272, !llvm.loop !33

272:                                              ; preds = %263, %254
  %273 = load ptr, ptr @frozen, align 8, !tbaa !9
  %274 = tail call i32 @set_belly_mask(ptr noundef %0, ptr noundef %1, ptr noundef %273) #29
  store i32 %274, ptr @nfrozen, align 4, !tbaa !5
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = load ptr, ptr @nabout, align 8, !tbaa !9
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.57, i32 noundef %274, ptr noundef %1) #25
  br label %279

279:                                              ; preds = %276, %272
  %280 = load ptr, ptr @N14pearlist, align 8, !tbaa !9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %300, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %282, %285
  %286 = phi i64 [ %290, %285 ], [ 0, %282 ]
  %287 = load ptr, ptr @N14pearlist, align 8, !tbaa !9
  %288 = getelementptr inbounds ptr, ptr %287, i64 %286
  %289 = load ptr, ptr %288, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %289, i32 noundef 0, i32 noundef 1) #29
  %290 = add nuw nsw i64 %286, 1
  %291 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %290, %292
  br i1 %293, label %285, label %294, !llvm.loop !34

294:                                              ; preds = %285
  %295 = trunc i64 %290 to i32
  %296 = load ptr, ptr @N14pearlist, align 8, !tbaa !9
  br label %297

297:                                              ; preds = %294, %282
  %298 = phi ptr [ %280, %282 ], [ %296, %294 ]
  %299 = phi i32 [ 0, %282 ], [ %295, %294 ]
  store i32 %299, ptr %6, align 4, !tbaa !5
  tail call void @free(ptr noundef %298) #29
  br label %300

300:                                              ; preds = %297, %279
  %301 = load ptr, ptr @prm, align 8, !tbaa !9
  %302 = getelementptr inbounds %struct.parm, ptr %301, i64 0, i32 4
  %303 = load i32, ptr %302, align 8, !tbaa !26
  %304 = sext i32 %303 to i64
  %305 = shl nsw i64 %304, 3
  %306 = tail call noalias ptr @malloc(i64 noundef %305) #30
  store ptr %306, ptr @N14pearlist, align 8, !tbaa !9
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %317

308:                                              ; preds = %300
  %309 = load ptr, ptr @nabout, align 8, !tbaa !9
  %310 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 48, i64 1, ptr %309)
  %311 = load ptr, ptr @nabout, align 8, !tbaa !9
  %312 = tail call i32 @fflush(ptr noundef %311) #25
  %313 = tail call i32 @mpierror(i32 noundef -1) #25
  %314 = load ptr, ptr @prm, align 8, !tbaa !9
  %315 = getelementptr inbounds %struct.parm, ptr %314, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !26
  br label %317

317:                                              ; preds = %308, %300
  %318 = phi i32 [ %316, %308 ], [ %303, %300 ]
  %319 = phi ptr [ %314, %308 ], [ %301, %300 ]
  %320 = icmp sgt i32 %318, 0
  br i1 %320, label %321, label %370

321:                                              ; preds = %317
  %322 = load ptr, ptr @N14pearlist, align 8, !tbaa !9
  br label %323

323:                                              ; preds = %321, %361
  %324 = phi ptr [ %319, %321 ], [ %362, %361 ]
  %325 = phi ptr [ %322, %321 ], [ %363, %361 ]
  %326 = phi i64 [ 0, %321 ], [ %365, %361 ]
  %327 = phi i32 [ 0, %321 ], [ %364, %361 ]
  %328 = getelementptr inbounds ptr, ptr %325, i64 %326
  store ptr null, ptr %328, align 8, !tbaa !9
  %329 = getelementptr inbounds %struct.parm, ptr %324, i64 0, i32 91
  %330 = load ptr, ptr %329, align 8, !tbaa !35
  %331 = getelementptr inbounds i32, ptr %330, i64 %326
  %332 = load i32, ptr %331, align 4, !tbaa !5
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %361

334:                                              ; preds = %323
  %335 = tail call ptr @ivector(i32 noundef 0, i32 noundef %332) #29
  %336 = load ptr, ptr @N14pearlist, align 8, !tbaa !9
  %337 = getelementptr inbounds ptr, ptr %336, i64 %326
  store ptr %335, ptr %337, align 8, !tbaa !9
  %338 = load ptr, ptr @prm, align 8, !tbaa !9
  %339 = getelementptr inbounds %struct.parm, ptr %338, i64 0, i32 91
  %340 = load ptr, ptr %339, align 8, !tbaa !35
  %341 = getelementptr inbounds i32, ptr %340, i64 %326
  %342 = load i32, ptr %341, align 4, !tbaa !5
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.parm, ptr %338, i64 0, i32 92
  %346 = load ptr, ptr %345, align 8, !tbaa !36
  %347 = sext i32 %327 to i64
  %348 = getelementptr i32, ptr %346, i64 %347
  br label %349

349:                                              ; preds = %344, %349
  %350 = phi i64 [ 0, %344 ], [ %354, %349 ]
  %351 = getelementptr i32, ptr %348, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !5
  %353 = getelementptr inbounds i32, ptr %335, i64 %350
  store i32 %352, ptr %353, align 4, !tbaa !5
  %354 = add nuw nsw i64 %350, 1
  %355 = load i32, ptr %341, align 4, !tbaa !5
  %356 = sext i32 %355 to i64
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %349, label %358, !llvm.loop !37

358:                                              ; preds = %349, %334
  %359 = phi i32 [ %342, %334 ], [ %355, %349 ]
  %360 = add nsw i32 %359, %327
  br label %361

361:                                              ; preds = %323, %358
  %362 = phi ptr [ %338, %358 ], [ %324, %323 ]
  %363 = phi ptr [ %336, %358 ], [ %325, %323 ]
  %364 = phi i32 [ %360, %358 ], [ %327, %323 ]
  %365 = add nuw nsw i64 %326, 1
  %366 = getelementptr inbounds %struct.parm, ptr %362, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !26
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %365, %368
  br i1 %369, label %323, label %370, !llvm.loop !38

370:                                              ; preds = %361, %317
  %371 = phi ptr [ %319, %317 ], [ %362, %361 ]
  %372 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  %373 = icmp eq ptr %372, null
  br i1 %373, label %394, label %374

374:                                              ; preds = %370
  %375 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %390

377:                                              ; preds = %374, %377
  %378 = phi i64 [ %382, %377 ], [ 0, %374 ]
  %379 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  %380 = getelementptr inbounds ptr, ptr %379, i64 %378
  %381 = load ptr, ptr %380, align 8, !tbaa !9
  tail call void @free_ivector(ptr noundef %381, i32 noundef 0, i32 noundef 1) #29
  %382 = add nuw nsw i64 %378, 1
  %383 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %384 = sext i32 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %377, label %386, !llvm.loop !39

386:                                              ; preds = %377
  %387 = trunc i64 %382 to i32
  %388 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  %389 = load ptr, ptr @prm, align 8, !tbaa !9
  br label %390

390:                                              ; preds = %386, %374
  %391 = phi ptr [ %371, %374 ], [ %389, %386 ]
  %392 = phi ptr [ %372, %374 ], [ %388, %386 ]
  %393 = phi i32 [ 0, %374 ], [ %387, %386 ]
  store i32 %393, ptr %6, align 4, !tbaa !5
  tail call void @free(ptr noundef %392) #29
  br label %394

394:                                              ; preds = %390, %370
  %395 = phi ptr [ %391, %390 ], [ %371, %370 ]
  %396 = getelementptr inbounds %struct.parm, ptr %395, i64 0, i32 4
  %397 = load i32, ptr %396, align 8, !tbaa !26
  %398 = sext i32 %397 to i64
  %399 = shl nsw i64 %398, 3
  %400 = tail call noalias ptr @malloc(i64 noundef %399) #30
  store ptr %400, ptr @IexclAt, align 8, !tbaa !9
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %411

402:                                              ; preds = %394
  %403 = load ptr, ptr @nabout, align 8, !tbaa !9
  %404 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 44, i64 1, ptr %403)
  %405 = load ptr, ptr @nabout, align 8, !tbaa !9
  %406 = tail call i32 @fflush(ptr noundef %405) #25
  %407 = tail call i32 @mpierror(i32 noundef -1) #25
  %408 = load ptr, ptr @prm, align 8, !tbaa !9
  %409 = getelementptr inbounds %struct.parm, ptr %408, i64 0, i32 4
  %410 = load i32, ptr %409, align 8, !tbaa !26
  br label %411

411:                                              ; preds = %402, %394
  %412 = phi i32 [ %410, %402 ], [ %397, %394 ]
  %413 = phi ptr [ %408, %402 ], [ %395, %394 ]
  %414 = icmp sgt i32 %412, 0
  br i1 %414, label %415, label %462

415:                                              ; preds = %411
  %416 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  br label %417

417:                                              ; preds = %415, %452
  %418 = phi ptr [ %413, %415 ], [ %453, %452 ]
  %419 = phi ptr [ %416, %415 ], [ %455, %452 ]
  %420 = phi i64 [ 0, %415 ], [ %457, %452 ]
  %421 = phi i32 [ 0, %415 ], [ %456, %452 ]
  %422 = getelementptr inbounds ptr, ptr %419, i64 %420
  store ptr null, ptr %422, align 8, !tbaa !9
  %423 = getelementptr inbounds %struct.parm, ptr %418, i64 0, i32 60
  %424 = load ptr, ptr %423, align 8, !tbaa !40
  %425 = getelementptr inbounds i32, ptr %424, i64 %420
  %426 = load i32, ptr %425, align 4, !tbaa !5
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %452

428:                                              ; preds = %417
  %429 = tail call ptr @ivector(i32 noundef 0, i32 noundef %426) #29
  %430 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  %431 = getelementptr inbounds ptr, ptr %430, i64 %420
  store ptr %429, ptr %431, align 8, !tbaa !9
  %432 = load ptr, ptr @prm, align 8, !tbaa !9
  %433 = getelementptr inbounds %struct.parm, ptr %432, i64 0, i32 60
  %434 = load ptr, ptr %433, align 8, !tbaa !40
  %435 = getelementptr inbounds i32, ptr %434, i64 %420
  %436 = load i32, ptr %435, align 4, !tbaa !5
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %452

438:                                              ; preds = %428
  %439 = getelementptr inbounds %struct.parm, ptr %432, i64 0, i32 63
  %440 = load ptr, ptr %439, align 8, !tbaa !41
  %441 = sext i32 %421 to i64
  %442 = getelementptr i32, ptr %440, i64 %441
  br label %443

443:                                              ; preds = %438, %443
  %444 = phi i64 [ 0, %438 ], [ %448, %443 ]
  %445 = getelementptr i32, ptr %442, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !5
  %447 = getelementptr inbounds i32, ptr %429, i64 %444
  store i32 %446, ptr %447, align 4, !tbaa !5
  %448 = add nuw nsw i64 %444, 1
  %449 = load i32, ptr %435, align 4, !tbaa !5
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %443, label %452, !llvm.loop !42

452:                                              ; preds = %443, %428, %417
  %453 = phi ptr [ %432, %428 ], [ %418, %417 ], [ %432, %443 ]
  %454 = phi i32 [ %436, %428 ], [ %426, %417 ], [ %449, %443 ]
  %455 = phi ptr [ %430, %428 ], [ %419, %417 ], [ %430, %443 ]
  %456 = add nsw i32 %454, %421
  %457 = add nuw nsw i64 %420, 1
  %458 = getelementptr inbounds %struct.parm, ptr %453, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !26
  %460 = sext i32 %459 to i64
  %461 = icmp slt i64 %457, %460
  br i1 %461, label %417, label %462, !llvm.loop !43

462:                                              ; preds = %452, %411
  %463 = phi ptr [ %413, %411 ], [ %453, %452 ]
  %464 = phi i32 [ %412, %411 ], [ %459, %452 ]
  store double 0.000000e+00, ptr @tdiagd, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tdiag, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tlevel, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tnewton, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tcholesky, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tdgeev, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tmmetwo, align 8, !tbaa !12
  store double 0.000000e+00, ptr @tmmeone, align 8, !tbaa !12
  store i32 -3, ptr %6, align 4, !tbaa !5
  %465 = load i32, ptr @mme_init.nold, align 4, !tbaa !5
  %466 = icmp sgt i32 %464, %465
  br i1 %466, label %467, label %470

467:                                              ; preds = %462
  %468 = call fastcc double @mme34(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %6) #25
  %469 = load ptr, ptr @prm, align 8, !tbaa !9
  br label %470

470:                                              ; preds = %467, %462
  %471 = phi ptr [ %469, %467 ], [ %463, %462 ]
  %472 = getelementptr inbounds %struct.parm, ptr %471, i64 0, i32 4
  %473 = load i32, ptr %472, align 8, !tbaa !26
  store i32 %473, ptr @mme_init.nold, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  ret i32 0
}

; Function Attrs: optsize
declare ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare i32 @writebinposhdr(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @set_cons_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @set_belly_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @mme34(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [20 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #26
  %11 = load ptr, ptr @prm, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = sext i32 %13 to i64
  %15 = load i32, ptr %2, align 4, !tbaa !5
  switch i32 %15, label %42 [
    i32 -3, label %16
    i32 0, label %34
  ]

16:                                               ; preds = %3
  %17 = load ptr, ptr @lpairs, align 8, !tbaa !9
  %18 = load ptr, ptr @upairs, align 8, !tbaa !9
  %19 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %20 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 52
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 51
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 37
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = call fastcc double @egb(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %0, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1) #25
  %28 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %357, label %30

30:                                               ; preds = %16
  %31 = load i1, ptr @dim, align 4
  %32 = select i1 %31, i64 4, i64 3
  %33 = mul nsw i64 %32, %14
  tail call void @free_vector(ptr noundef nonnull %28, i64 noundef 0, i64 noundef %33) #29
  store ptr null, ptr @mme34.grad, align 8, !tbaa !9
  br label %357

34:                                               ; preds = %3
  %35 = load ptr, ptr @nabout, align 8, !tbaa !9
  %36 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 20, i64 1, ptr %35)
  %37 = load ptr, ptr @nabout, align 8, !tbaa !9
  %38 = tail call i32 @fflush(ptr noundef %37) #25
  %39 = load i32, ptr %2, align 4, !tbaa !5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !12
  br label %42

42:                                               ; preds = %3, %41, %34
  %43 = phi i32 [ 0, %41 ], [ %39, %34 ], [ %15, %3 ]
  %44 = load ptr, ptr @chknm, align 8, !tbaa !9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = icmp sgt i32 %43, 0
  %48 = urem i32 %43, 10000
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr @prm, align 8, !tbaa !9
  %53 = getelementptr inbounds %struct.parm, ptr %52, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !26
  tail call void @checkpoint(ptr noundef nonnull %44, i32 noundef %54, ptr noundef %0, i32 noundef %43) #25
  br label %55

55:                                               ; preds = %51, %46, %42
  %56 = load i32, ptr @nb_pairs, align 4, !tbaa !5
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %2, align 4, !tbaa !5
  %60 = icmp sgt i32 %59, 0
  %61 = urem i32 %59, 10
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58, %55
  %65 = load ptr, ptr @lpairs, align 8, !tbaa !9
  %66 = load ptr, ptr @upairs, align 8, !tbaa !9
  %67 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %68 = load ptr, ptr @prm, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct.parm, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !26
  %71 = load i1, ptr @dim, align 4
  %72 = select i1 %71, i32 4, i32 3
  %73 = load ptr, ptr @frozen, align 8, !tbaa !9
  %74 = tail call i32 @nblist(ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %0, i32 noundef 0, i32 noundef 1, double noundef 2.000000e+01, i32 noundef %70, i32 noundef %72, ptr noundef %73) #29
  store i32 %74, ptr @nb_pairs, align 4, !tbaa !5
  br label %75

75:                                               ; preds = %64, %58
  %76 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i1, ptr @dim, align 4
  %80 = select i1 %79, i64 4, i64 3
  %81 = mul nsw i64 %80, %14
  %82 = tail call ptr @vector(i64 noundef 0, i64 noundef %81) #29
  store ptr %82, ptr @mme34.grad, align 8, !tbaa !9
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi ptr [ %82, %78 ], [ %76, %75 ]
  %85 = load i1, ptr @dim, align 4
  %86 = select i1 %85, i32 4, i32 3
  %87 = load ptr, ptr @prm, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !26
  %90 = mul nsw i32 %89, %86
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = zext nneg i32 %90 to i64
  %94 = shl nuw nsw i64 %93, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %84, i8 0, i64 %94, i1 false), !tbaa !12
  br label %95

95:                                               ; preds = %92, %83
  %96 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 66
  %99 = load ptr, ptr %98, align 8, !tbaa !48
  %100 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 67
  %101 = load ptr, ptr %100, align 8, !tbaa !49
  %102 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 68
  %103 = load ptr, ptr %102, align 8, !tbaa !50
  %104 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 39
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  %106 = getelementptr inbounds %struct.parm, ptr %87, i64 0, i32 40
  %107 = load ptr, ptr %106, align 8, !tbaa !52
  %108 = tail call fastcc double @ebond(i32 noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105, ptr noundef %107, ptr noundef %0, ptr noundef %84) #25
  %109 = load ptr, ptr @prm, align 8, !tbaa !9
  %110 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 7
  %111 = load i32, ptr %110, align 4, !tbaa !53
  %112 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 69
  %113 = load ptr, ptr %112, align 8, !tbaa !54
  %114 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 70
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 71
  %117 = load ptr, ptr %116, align 8, !tbaa !56
  %118 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 39
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = getelementptr inbounds %struct.parm, ptr %109, i64 0, i32 40
  %121 = load ptr, ptr %120, align 8, !tbaa !52
  %122 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %123 = tail call fastcc double @ebond(i32 noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %0, ptr noundef %122) #25
  %124 = fadd double %108, %123
  %125 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 3
  store double %124, ptr %125, align 8, !tbaa !12
  %126 = load ptr, ptr @prm, align 8, !tbaa !9
  %127 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 8
  %128 = load i32, ptr %127, align 8, !tbaa !57
  %129 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 72
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 73
  %132 = load ptr, ptr %131, align 8, !tbaa !59
  %133 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 74
  %134 = load ptr, ptr %133, align 8, !tbaa !60
  %135 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 75
  %136 = load ptr, ptr %135, align 8, !tbaa !61
  %137 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 41
  %138 = load ptr, ptr %137, align 8, !tbaa !62
  %139 = getelementptr inbounds %struct.parm, ptr %126, i64 0, i32 42
  %140 = load ptr, ptr %139, align 8, !tbaa !63
  %141 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %142 = tail call fastcc double @eangl(i32 noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %134, ptr noundef %136, ptr noundef %138, ptr noundef %140, ptr noundef %0, ptr noundef %141) #25
  %143 = load ptr, ptr @prm, align 8, !tbaa !9
  %144 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 17
  %145 = load i32, ptr %144, align 4, !tbaa !64
  %146 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 76
  %147 = load ptr, ptr %146, align 8, !tbaa !65
  %148 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 77
  %149 = load ptr, ptr %148, align 8, !tbaa !66
  %150 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 78
  %151 = load ptr, ptr %150, align 8, !tbaa !67
  %152 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 79
  %153 = load ptr, ptr %152, align 8, !tbaa !68
  %154 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 41
  %155 = load ptr, ptr %154, align 8, !tbaa !62
  %156 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 42
  %157 = load ptr, ptr %156, align 8, !tbaa !63
  %158 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %159 = tail call fastcc double @eangl(i32 noundef %145, ptr noundef %147, ptr noundef %149, ptr noundef %151, ptr noundef %153, ptr noundef %155, ptr noundef %157, ptr noundef %0, ptr noundef %158) #25
  %160 = fadd double %142, %159
  %161 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 4
  store double %160, ptr %161, align 16, !tbaa !12
  %162 = load ptr, ptr @prm, align 8, !tbaa !9
  %163 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 10
  %164 = load i32, ptr %163, align 8, !tbaa !69
  %165 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 80
  %166 = load ptr, ptr %165, align 8, !tbaa !70
  %167 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 81
  %168 = load ptr, ptr %167, align 8, !tbaa !71
  %169 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 82
  %170 = load ptr, ptr %169, align 8, !tbaa !72
  %171 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 83
  %172 = load ptr, ptr %171, align 8, !tbaa !73
  %173 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 84
  %174 = load ptr, ptr %173, align 8, !tbaa !74
  %175 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 43
  %176 = load ptr, ptr %175, align 8, !tbaa !75
  %177 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 44
  %178 = load ptr, ptr %177, align 8, !tbaa !76
  %179 = getelementptr inbounds %struct.parm, ptr %162, i64 0, i32 45
  %180 = load ptr, ptr %179, align 8, !tbaa !77
  %181 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %182 = tail call fastcc double @ephi(i32 noundef %164, ptr noundef %166, ptr noundef %168, ptr noundef %170, ptr noundef %172, ptr noundef %174, ptr noundef %176, ptr noundef %178, ptr noundef %180, ptr noundef %0, ptr noundef %181) #25
  %183 = load ptr, ptr @prm, align 8, !tbaa !9
  %184 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 11
  %185 = load i32, ptr %184, align 4, !tbaa !78
  %186 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 85
  %187 = load ptr, ptr %186, align 8, !tbaa !79
  %188 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 86
  %189 = load ptr, ptr %188, align 8, !tbaa !80
  %190 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 87
  %191 = load ptr, ptr %190, align 8, !tbaa !81
  %192 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 88
  %193 = load ptr, ptr %192, align 8, !tbaa !82
  %194 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 89
  %195 = load ptr, ptr %194, align 8, !tbaa !83
  %196 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 43
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  %198 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 44
  %199 = load ptr, ptr %198, align 8, !tbaa !76
  %200 = getelementptr inbounds %struct.parm, ptr %183, i64 0, i32 45
  %201 = load ptr, ptr %200, align 8, !tbaa !77
  %202 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %203 = tail call fastcc double @ephi(i32 noundef %185, ptr noundef %187, ptr noundef %189, ptr noundef %191, ptr noundef %193, ptr noundef %195, ptr noundef %197, ptr noundef %199, ptr noundef %201, ptr noundef %0, ptr noundef %202) #25
  %204 = fadd double %182, %203
  %205 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 5
  store double %204, ptr %205, align 8, !tbaa !12
  %206 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 6
  store double 0.000000e+00, ptr %206, align 16, !tbaa !12
  %207 = load ptr, ptr @lpairs, align 8, !tbaa !9
  %208 = load ptr, ptr @prm, align 8, !tbaa !9
  %209 = getelementptr inbounds %struct.parm, ptr %208, i64 0, i32 91
  %210 = load ptr, ptr %209, align 8, !tbaa !35
  %211 = load ptr, ptr @N14pearlist, align 8, !tbaa !9
  %212 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  call fastcc void @nbond(ptr noundef %207, ptr noundef %210, ptr noundef %211, i32 noundef 1, ptr noundef %0, ptr noundef %212, ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef 2.000000e+00, double noundef 1.200000e+00) #25
  %213 = load double, ptr %6, align 8, !tbaa !12
  %214 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 7
  store double %213, ptr %214, align 8, !tbaa !12
  %215 = load double, ptr %7, align 8, !tbaa !12
  %216 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 8
  store double %215, ptr %216, align 16, !tbaa !12
  %217 = load i32, ptr @nconstrained, align 4, !tbaa !5
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %95
  %220 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %221 = tail call fastcc double @econs(ptr noundef %0, ptr noundef %220) #25
  br label %222

222:                                              ; preds = %95, %219
  %223 = phi double [ %221, %219 ], [ 0.000000e+00, %95 ]
  %224 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 9
  store double %223, ptr %224, align 8, !tbaa !12
  %225 = load i32, ptr @gb, align 4, !tbaa !5
  %226 = icmp eq i32 %225, 0
  %227 = load ptr, ptr @lpairs, align 8, !tbaa !9
  %228 = load ptr, ptr @upairs, align 8, !tbaa !9
  %229 = load ptr, ptr @pairlist, align 8, !tbaa !9
  %230 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  br i1 %226, label %242, label %231

231:                                              ; preds = %222
  %232 = load ptr, ptr @prm, align 8, !tbaa !9
  %233 = getelementptr inbounds %struct.parm, ptr %232, i64 0, i32 52
  %234 = load ptr, ptr %233, align 8, !tbaa !44
  %235 = getelementptr inbounds %struct.parm, ptr %232, i64 0, i32 51
  %236 = load ptr, ptr %235, align 8, !tbaa !45
  %237 = getelementptr inbounds %struct.parm, ptr %232, i64 0, i32 37
  %238 = load ptr, ptr %237, align 8, !tbaa !46
  %239 = call fastcc double @egb(ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %0, ptr noundef %230, ptr noundef %234, ptr noundef %236, ptr noundef %238, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #25
  %240 = load double, ptr %8, align 8, !tbaa !12
  %241 = load double, ptr %9, align 8, !tbaa !12
  br label %243

242:                                              ; preds = %222
  call fastcc void @nbond(ptr noundef %227, ptr noundef %228, ptr noundef %229, i32 noundef 0, ptr noundef %0, ptr noundef %230, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 1.000000e+00, double noundef 1.000000e+00) #25
  br label %243

243:                                              ; preds = %242, %231
  %244 = phi double [ 0.000000e+00, %242 ], [ %239, %231 ]
  %245 = phi double [ 0.000000e+00, %242 ], [ %240, %231 ]
  %246 = phi double [ 0.000000e+00, %242 ], [ %241, %231 ]
  %247 = load double, ptr %5, align 8, !tbaa !12
  %248 = load double, ptr %4, align 8, !tbaa !12
  %249 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 1
  store double %248, ptr %249, align 8
  %250 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 2
  store double %247, ptr %250, align 16
  %251 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 10
  store double %244, ptr %251, align 16
  %252 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 11
  store double %245, ptr %252, align 8
  %253 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 12
  store double %246, ptr %253, align 16
  %254 = load i1, ptr @dim, align 4
  %255 = select i1 %254, i32 4, i32 3
  %256 = load ptr, ptr @prm, align 8, !tbaa !9
  %257 = getelementptr inbounds %struct.parm, ptr %256, i64 0, i32 4
  %258 = load i32, ptr %257, align 8, !tbaa !26
  %259 = mul nsw i32 %258, %255
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %243
  %262 = load ptr, ptr @mme34.grad, align 8, !tbaa !9
  %263 = zext nneg i32 %259 to i64
  br label %270

264:                                              ; preds = %270, %243
  %265 = icmp sgt i32 %258, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %264
  %267 = load ptr, ptr @frozen, align 8, !tbaa !9
  %268 = zext nneg i32 %255 to i64
  %269 = zext nneg i32 %258 to i64
  br label %280

270:                                              ; preds = %261, %270
  %271 = phi i64 [ 0, %261 ], [ %275, %270 ]
  %272 = getelementptr inbounds double, ptr %262, i64 %271
  %273 = load double, ptr %272, align 8, !tbaa !12
  %274 = getelementptr inbounds double, ptr %1, i64 %271
  store double %273, ptr %274, align 8, !tbaa !12
  %275 = add nuw nsw i64 %271, 1
  %276 = icmp eq i64 %275, %263
  br i1 %276, label %264, label %270, !llvm.loop !84

277:                                              ; preds = %293, %264
  br i1 %260, label %278, label %304

278:                                              ; preds = %277
  %279 = zext nneg i32 %259 to i64
  br label %296

280:                                              ; preds = %266, %293
  %281 = phi i64 [ 0, %266 ], [ %294, %293 ]
  %282 = getelementptr inbounds i32, ptr %267, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !5
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %280
  %286 = mul nuw nsw i64 %281, %268
  %287 = getelementptr double, ptr %1, i64 %286
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %287, i8 0, i64 24, i1 false)
  br i1 %254, label %288, label %293

288:                                              ; preds = %285
  %289 = shl i64 %281, 2
  %290 = and i64 %289, 4294967292
  %291 = or disjoint i64 %290, 3
  %292 = getelementptr inbounds double, ptr %1, i64 %291
  store double 0.000000e+00, ptr %292, align 8, !tbaa !12
  br label %293

293:                                              ; preds = %280, %288, %285
  %294 = add nuw nsw i64 %281, 1
  %295 = icmp eq i64 %294, %269
  br i1 %295, label %277, label %280, !llvm.loop !85

296:                                              ; preds = %278, %296
  %297 = phi i64 [ 0, %278 ], [ %302, %296 ]
  %298 = phi double [ 0.000000e+00, %278 ], [ %301, %296 ]
  %299 = getelementptr inbounds double, ptr %1, i64 %297
  %300 = load double, ptr %299, align 8, !tbaa !12
  %301 = tail call double @llvm.fmuladd.f64(double %300, double %300, double %298)
  %302 = add nuw nsw i64 %297, 1
  %303 = icmp eq i64 %302, %279
  br i1 %303, label %304, label %296, !llvm.loop !86

304:                                              ; preds = %296, %277
  %305 = phi double [ 0.000000e+00, %277 ], [ %301, %296 ]
  %306 = sitofp i32 %259 to double
  %307 = fdiv double %305, %306
  %308 = tail call double @sqrt(double noundef %307) #29
  br label %309

309:                                              ; preds = %304, %309
  %310 = phi i64 [ 1, %304 ], [ %315, %309 ]
  %311 = phi double [ 0.000000e+00, %304 ], [ %314, %309 ]
  %312 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 %310
  %313 = load double, ptr %312, align 8, !tbaa !12
  %314 = fadd double %313, %311
  %315 = add nuw nsw i64 %310, 1
  %316 = icmp eq i64 %315, 13
  br i1 %316, label %317, label %309, !llvm.loop !87

317:                                              ; preds = %309
  %318 = load i32, ptr %2, align 4, !tbaa !5
  %319 = icmp sgt i32 %318, -1
  br i1 %319, label %320, label %331

320:                                              ; preds = %317
  %321 = icmp eq i32 %318, 0
  %322 = load i32, ptr @max_step, align 4
  %323 = icmp eq i32 %318, %322
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %357

325:                                              ; preds = %320
  %326 = load ptr, ptr @nabout, align 8, !tbaa !9
  %327 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef nonnull @.str.66, i32 noundef %318, double noundef %314) #25
  %328 = load ptr, ptr @nabout, align 8, !tbaa !9
  %329 = tail call i32 @fflush(ptr noundef %328) #25
  %330 = load i32, ptr %2, align 4, !tbaa !5
  br label %331

331:                                              ; preds = %325, %317
  %332 = phi i32 [ %318, %317 ], [ %330, %325 ]
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %334, label %357

334:                                              ; preds = %331
  %335 = load ptr, ptr @nabout, align 8, !tbaa !9
  %336 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef nonnull @.str.67, double noundef %124) #25
  %337 = load ptr, ptr @nabout, align 8, !tbaa !9
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.68, double noundef %160) #25
  %339 = load ptr, ptr @nabout, align 8, !tbaa !9
  %340 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.69, double noundef %204) #25
  %341 = load ptr, ptr @nabout, align 8, !tbaa !9
  %342 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef nonnull @.str.70, double noundef %213) #25
  %343 = load ptr, ptr @nabout, align 8, !tbaa !9
  %344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef nonnull @.str.71, double noundef %215) #25
  %345 = load ptr, ptr @nabout, align 8, !tbaa !9
  %346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.72, double noundef %248) #25
  %347 = load ptr, ptr @nabout, align 8, !tbaa !9
  %348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.73, double noundef %247) #25
  %349 = load ptr, ptr @nabout, align 8, !tbaa !9
  %350 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %349, ptr noundef nonnull @.str.74, double noundef %244) #25
  %351 = load ptr, ptr @nabout, align 8, !tbaa !9
  %352 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef nonnull @.str.75, double noundef %223) #25
  %353 = load ptr, ptr @nabout, align 8, !tbaa !9
  %354 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %353, ptr noundef nonnull @.str.76, double noundef %245) #25
  %355 = load ptr, ptr @nabout, align 8, !tbaa !9
  %356 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %355, ptr noundef nonnull @.str.77, double noundef %314) #25
  br label %357

357:                                              ; preds = %320, %334, %331, %30, %16
  %358 = phi double [ 0.000000e+00, %16 ], [ 0.000000e+00, %30 ], [ %314, %331 ], [ %314, %334 ], [ %314, %320 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret double %358
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @mme(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  store i1 false, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @mme4(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  store i1 true, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret double %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @mm_set_checkpoint(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc ptr @spec_strdup(ptr noundef %2) #25
  store ptr %3, ptr @chknm, align 8, !tbaa !9
  %4 = load ptr, ptr @nabout, align 8, !tbaa !9
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.60, ptr noundef %5) #25
  %7 = load ptr, ptr @nabout, align 8, !tbaa !9
  %8 = tail call i32 @fflush(ptr noundef %7) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #29
  br label %8

8:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @md(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #26
  %10 = load ptr, ptr @md.minv, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr @md.nold, align 4
  %13 = icmp slt i32 %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  tail call void @free(ptr noundef %10) #29
  %16 = sext i32 %0 to i64
  %17 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 8) #31
  store ptr %17, ptr @md.minv, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr @stderr, align 8, !tbaa !9
  %21 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 34, i64 1, ptr %20) #32
  %22 = load ptr, ptr @stderr, align 8, !tbaa !9
  %23 = tail call i32 @fflush(ptr noundef %22) #25
  %24 = tail call i32 @mpierror(i32 noundef -1) #25
  %25 = load i32, ptr @md.nold, align 4
  br label %26

26:                                               ; preds = %6, %15, %19
  %27 = phi i32 [ %12, %6 ], [ %12, %15 ], [ %25, %19 ]
  %28 = load ptr, ptr @md.xold, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  %30 = icmp slt i32 %27, %0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #29
  %33 = sext i32 %0 to i64
  %34 = tail call noalias ptr @calloc(i64 noundef %33, i64 noundef 8) #31
  store ptr %34, ptr @md.xold, align 8, !tbaa !9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !9
  %38 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 34, i64 1, ptr %37) #32
  %39 = load ptr, ptr @stderr, align 8, !tbaa !9
  %40 = tail call i32 @fflush(ptr noundef %39) #25
  %41 = tail call i32 @mpierror(i32 noundef -1) #25
  %42 = load i32, ptr @md.nold, align 4
  br label %43

43:                                               ; preds = %36, %32, %26
  %44 = phi i32 [ %42, %36 ], [ %27, %32 ], [ %27, %26 ]
  %45 = load ptr, ptr @md.accel, align 8, !tbaa !9
  %46 = icmp eq ptr %45, null
  %47 = icmp slt i32 %44, %0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  tail call void @free(ptr noundef %45) #29
  %50 = sext i32 %0 to i64
  %51 = tail call noalias ptr @calloc(i64 noundef %50, i64 noundef 8) #31
  store ptr %51, ptr @md.accel, align 8, !tbaa !9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load ptr, ptr @stderr, align 8, !tbaa !9
  %55 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 35, i64 1, ptr %54) #32
  %56 = load ptr, ptr @stderr, align 8, !tbaa !9
  %57 = tail call i32 @fflush(ptr noundef %56) #25
  %58 = tail call i32 @mpierror(i32 noundef -1) #25
  br label %59

59:                                               ; preds = %43, %49, %53
  store i32 %0, ptr @md.nold, align 4, !tbaa !5
  %60 = load i32, ptr @nfrozen, align 4, !tbaa !5
  %61 = mul i32 %60, -3
  %62 = add i32 %61, %0
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 0x3F50477081F334C0
  %65 = fmul double %64, 1.000000e+02
  store double 0.000000e+00, ptr %8, align 8, !tbaa !12
  %66 = load ptr, ptr @prm, align 8, !tbaa !9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %59
  %69 = icmp sgt i32 %0, 0
  br i1 %69, label %70, label %138

70:                                               ; preds = %68
  %71 = load ptr, ptr @md.minv, align 8, !tbaa !9
  %72 = zext nneg i32 %0 to i64
  %73 = add nuw nsw i64 %72, 1
  %74 = and i64 %73, 4294967294
  %75 = add nsw i64 %72, -1
  %76 = insertelement <2 x i64> poison, i64 %75, i64 0
  %77 = shufflevector <2 x i64> %76, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %78

78:                                               ; preds = %90, %70
  %79 = phi i64 [ 0, %70 ], [ %91, %90 ]
  %80 = phi <2 x i64> [ <i64 0, i64 1>, %70 ], [ %92, %90 ]
  %81 = icmp ule <2 x i64> %80, %77
  %82 = extractelement <2 x i1> %81, i64 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds double, ptr %71, i64 %79
  store double 1.000000e-01, ptr %84, align 8, !tbaa !12
  br label %85

85:                                               ; preds = %83, %78
  %86 = extractelement <2 x i1> %81, i64 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or disjoint i64 %79, 1
  %89 = getelementptr inbounds double, ptr %71, i64 %88
  store double 1.000000e-01, ptr %89, align 8, !tbaa !12
  br label %90

90:                                               ; preds = %87, %85
  %91 = add i64 %79, 2
  %92 = add <2 x i64> %80, <i64 2, i64 2>
  %93 = icmp eq i64 %91, %74
  br i1 %93, label %96, label %78, !llvm.loop !88

94:                                               ; preds = %59
  %95 = load ptr, ptr @md.minv, align 8, !tbaa !9
  tail call fastcc void @get_masses(ptr noundef %95) #25
  br label %96

96:                                               ; preds = %90, %94
  %97 = icmp sgt i32 %0, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %96
  %99 = zext nneg i32 %0 to i64
  %100 = load ptr, ptr @frozen, align 8, !tbaa !9
  %101 = load i1, ptr @dim, align 4
  br label %102

102:                                              ; preds = %98, %132
  %103 = phi i1 [ %101, %98 ], [ %133, %132 ]
  %104 = phi ptr [ %100, %98 ], [ %134, %132 ]
  %105 = phi i64 [ 0, %98 ], [ %136, %132 ]
  %106 = phi double [ 0.000000e+00, %98 ], [ %135, %132 ]
  %107 = select i1 %103, i32 4, i32 3
  %108 = trunc i64 %105 to i32
  %109 = udiv i32 %108, %107
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %104, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !5
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %102
  %115 = getelementptr inbounds double, ptr %4, i64 %105
  store double 0.000000e+00, ptr %115, align 8, !tbaa !12
  br label %132

116:                                              ; preds = %102
  %117 = load ptr, ptr @md.minv, align 8, !tbaa !9
  %118 = getelementptr inbounds double, ptr %117, i64 %105
  %119 = load double, ptr %118, align 8, !tbaa !12
  %120 = fmul double %119, 0x3FB96F9FCB0C026C
  %121 = call double @sqrt(double noundef %120) #29
  store double %121, ptr %7, align 8, !tbaa !12
  %122 = call double @gauss(ptr noundef nonnull %8, ptr noundef nonnull %7) #29
  %123 = getelementptr inbounds double, ptr %4, i64 %105
  store double %122, ptr %123, align 8, !tbaa !12
  %124 = fmul double %122, %122
  %125 = load ptr, ptr @md.minv, align 8, !tbaa !9
  %126 = getelementptr inbounds double, ptr %125, i64 %105
  %127 = load double, ptr %126, align 8, !tbaa !12
  %128 = fdiv double %124, %127
  %129 = fadd double %106, %128
  %130 = load ptr, ptr @frozen, align 8, !tbaa !9
  %131 = load i1, ptr @dim, align 4
  br label %132

132:                                              ; preds = %114, %116
  %133 = phi i1 [ %103, %114 ], [ %131, %116 ]
  %134 = phi ptr [ %104, %114 ], [ %130, %116 ]
  %135 = phi double [ %106, %114 ], [ %129, %116 ]
  %136 = add nuw nsw i64 %105, 1
  %137 = icmp eq i64 %136, %99
  br i1 %137, label %140, label %102, !llvm.loop !91

138:                                              ; preds = %96, %68
  store i32 0, ptr %9, align 4, !tbaa !5
  %139 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br label %158

140:                                              ; preds = %132
  store i32 0, ptr %9, align 4, !tbaa !5
  %141 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br i1 %97, label %142, label %158

142:                                              ; preds = %140
  %143 = load ptr, ptr @md.minv, align 8, !tbaa !9
  %144 = load ptr, ptr @md.accel, align 8, !tbaa !9
  %145 = zext nneg i32 %0 to i64
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %156, %146 ]
  %148 = getelementptr inbounds double, ptr %3, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !12
  %150 = fneg double %149
  %151 = getelementptr inbounds double, ptr %143, i64 %147
  %152 = load double, ptr %151, align 8, !tbaa !12
  %153 = fmul double %152, %150
  %154 = fmul double %153, 0x3F84F227D028A1DF
  %155 = getelementptr inbounds double, ptr %144, i64 %147
  store double %154, ptr %155, align 8, !tbaa !12
  %156 = add nuw nsw i64 %147, 1
  %157 = icmp eq i64 %156, %145
  br i1 %157, label %158, label %146, !llvm.loop !92

158:                                              ; preds = %146, %138, %140
  %159 = phi double [ 0.000000e+00, %138 ], [ %135, %140 ], [ %135, %146 ]
  %160 = phi i1 [ false, %138 ], [ false, %140 ], [ %97, %146 ]
  store i32 %1, ptr @max_step, align 4, !tbaa !5
  store i32 1, ptr %9, align 4, !tbaa !5
  %161 = icmp slt i32 %1, 1
  br i1 %161, label %252, label %162

162:                                              ; preds = %158
  %163 = zext nneg i32 %0 to i64
  %164 = zext nneg i32 %0 to i64
  %165 = zext nneg i32 %0 to i64
  %166 = zext nneg i32 %0 to i64
  br label %167

167:                                              ; preds = %162, %245
  %168 = phi double [ %159, %162 ], [ %246, %245 ]
  %169 = fmul double %168, 5.000000e-01
  %170 = fcmp ogt double %169, 1.000000e-02
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = fdiv double %65, %169
  %173 = fadd double %172, -1.000000e+00
  %174 = call double @llvm.fmuladd.f64(double %173, double 2.500000e-03, double 1.000000e+00)
  %175 = call double @sqrt(double noundef %174) #29
  br label %176

176:                                              ; preds = %167, %171
  %177 = phi double [ %175, %171 ], [ 1.000000e+00, %167 ]
  br i1 %160, label %178, label %207

178:                                              ; preds = %176
  %179 = load ptr, ptr @md.xold, align 8, !tbaa !9
  br label %183

180:                                              ; preds = %183
  br i1 %160, label %181, label %207

181:                                              ; preds = %180
  %182 = load ptr, ptr @md.accel, align 8, !tbaa !9
  br label %190

183:                                              ; preds = %178, %183
  %184 = phi i64 [ 0, %178 ], [ %188, %183 ]
  %185 = getelementptr inbounds double, ptr %2, i64 %184
  %186 = load double, ptr %185, align 8, !tbaa !12
  %187 = getelementptr inbounds double, ptr %179, i64 %184
  store double %186, ptr %187, align 8, !tbaa !12
  %188 = add nuw nsw i64 %184, 1
  %189 = icmp eq i64 %188, %163
  br i1 %189, label %180, label %183, !llvm.loop !93

190:                                              ; preds = %181, %190
  %191 = phi i64 [ 0, %181 ], [ %205, %190 ]
  %192 = getelementptr inbounds double, ptr %4, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !12
  %194 = getelementptr inbounds double, ptr %182, i64 %191
  %195 = load double, ptr %194, align 8, !tbaa !12
  %196 = fadd double %193, %195
  %197 = fmul double %177, %196
  %198 = fcmp ogt double %197, 1.000000e+01
  %199 = select i1 %198, double 1.000000e+01, double %197
  %200 = fcmp olt double %199, -1.000000e+01
  %201 = select i1 %200, double -1.000000e+01, double %199
  store double %201, ptr %192, align 8, !tbaa !12
  %202 = getelementptr inbounds double, ptr %2, i64 %191
  %203 = load double, ptr %202, align 8, !tbaa !12
  %204 = call double @llvm.fmuladd.f64(double %201, double 0x3F94F227D028A1DF, double %203)
  store double %204, ptr %202, align 8, !tbaa !12
  %205 = add nuw nsw i64 %191, 1
  %206 = icmp eq i64 %205, %164
  br i1 %206, label %209, label %190, !llvm.loop !94

207:                                              ; preds = %180, %176
  %208 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br label %245

209:                                              ; preds = %190
  %210 = call double %5(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %9) #29
  br i1 %160, label %211, label %245

211:                                              ; preds = %209
  %212 = load ptr, ptr @md.minv, align 8, !tbaa !9
  %213 = load ptr, ptr @md.accel, align 8, !tbaa !9
  br label %217

214:                                              ; preds = %217
  br i1 %160, label %215, label %245

215:                                              ; preds = %214
  %216 = load ptr, ptr @md.minv, align 8, !tbaa !9
  br label %233

217:                                              ; preds = %211, %217
  %218 = phi i64 [ 0, %211 ], [ %231, %217 ]
  %219 = getelementptr inbounds double, ptr %3, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !12
  %221 = fneg double %220
  %222 = getelementptr inbounds double, ptr %212, i64 %218
  %223 = load double, ptr %222, align 8, !tbaa !12
  %224 = fmul double %223, %221
  %225 = fmul double %224, 0x3F84F227D028A1DF
  %226 = getelementptr inbounds double, ptr %213, i64 %218
  store double %225, ptr %226, align 8, !tbaa !12
  %227 = getelementptr inbounds double, ptr %4, i64 %218
  %228 = load double, ptr %227, align 8, !tbaa !12
  %229 = fadd double %225, %228
  %230 = fmul double %177, %229
  store double %230, ptr %227, align 8, !tbaa !12
  %231 = add nuw nsw i64 %218, 1
  %232 = icmp eq i64 %231, %165
  br i1 %232, label %214, label %217, !llvm.loop !95

233:                                              ; preds = %215, %233
  %234 = phi i64 [ 0, %215 ], [ %243, %233 ]
  %235 = phi double [ 0.000000e+00, %215 ], [ %242, %233 ]
  %236 = getelementptr inbounds double, ptr %4, i64 %234
  %237 = load double, ptr %236, align 8, !tbaa !12
  %238 = fmul double %237, %237
  %239 = getelementptr inbounds double, ptr %216, i64 %234
  %240 = load double, ptr %239, align 8, !tbaa !12
  %241 = fdiv double %238, %240
  %242 = fadd double %235, %241
  %243 = add nuw nsw i64 %234, 1
  %244 = icmp eq i64 %243, %166
  br i1 %244, label %245, label %233, !llvm.loop !96

245:                                              ; preds = %233, %209, %207, %214
  %246 = phi double [ 0.000000e+00, %214 ], [ 0.000000e+00, %207 ], [ 0.000000e+00, %209 ], [ %242, %233 ]
  %247 = load double, ptr @t, align 8, !tbaa !12
  %248 = fadd double %247, 1.000000e-03
  store double %248, ptr @t, align 8, !tbaa !12
  %249 = load i32, ptr %9, align 4, !tbaa !5
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %9, align 4, !tbaa !5
  %251 = icmp slt i32 %249, %1
  br i1 %251, label %167, label %252, !llvm.loop !97

252:                                              ; preds = %245, %158
  store i32 -3, ptr %9, align 4, !tbaa !5
  %253 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_masses(ptr nocapture noundef writeonly %0) unnamed_addr #19 {
  %2 = load ptr, ptr @prm, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 38
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = load i1, ptr @dim, align 4
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %6, %23
  %12 = phi i64 [ 0, %6 ], [ %26, %23 ]
  %13 = phi i32 [ 0, %6 ], [ %25, %23 ]
  %14 = getelementptr inbounds double, ptr %8, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !12
  %16 = fdiv double 1.000000e+00, %15
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  store double %16, ptr %18, align 8, !tbaa !12
  %19 = getelementptr double, ptr %18, i64 1
  store double %16, ptr %19, align 8, !tbaa !12
  %20 = getelementptr double, ptr %18, i64 2
  store double %16, ptr %20, align 8, !tbaa !12
  br i1 %9, label %21, label %23

21:                                               ; preds = %11
  %22 = getelementptr double, ptr %18, i64 3
  store double %16, ptr %22, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ 4, %21 ], [ 3, %11 ]
  %25 = add nuw nsw i32 %24, %13
  %26 = add nuw nsw i64 %12, 1
  %27 = icmp eq i64 %26, %10
  br i1 %27, label %28, label %11, !llvm.loop !99

28:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare double @gauss(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @egb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, i32 noundef %12) unnamed_addr #2 {
  %14 = load ptr, ptr @prm, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.parm, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !26
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @egb.reff, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free_vector(ptr noundef nonnull %20, i64 noundef 0, i64 noundef %17) #29
  store ptr null, ptr @egb.reff, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @egb.iexw, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = add i32 %16, 1
  tail call void @free_ivector(ptr noundef nonnull %24, i32 noundef -1, i32 noundef %27) #29
  store ptr null, ptr @egb.iexw, align 8, !tbaa !9
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @free_vector(ptr noundef nonnull %29, i64 noundef 0, i64 noundef %17) #29
  store ptr null, ptr @egb.sumdeijda, align 8, !tbaa !9
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr @egb.psi, align 8, !tbaa !9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @free_vector(ptr noundef nonnull %33, i64 noundef 0, i64 noundef %17) #29
  store ptr null, ptr @egb.psi, align 8, !tbaa !9
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr @egb.reqack, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %870, label %39

39:                                               ; preds = %36
  tail call void @free_ivector(ptr noundef nonnull %37, i32 noundef 0, i32 noundef 1) #29
  store ptr null, ptr @egb.reqack, align 8, !tbaa !9
  br label %870

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.parm, ptr %14, i64 0, i32 58
  %42 = load double, ptr %41, align 8, !tbaa !100
  %43 = fadd double %42, 2.000000e+01
  %44 = fmul double %43, %43
  %45 = load ptr, ptr @egb.reff, align 8, !tbaa !9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #29
  store ptr %48, ptr @egb.reff, align 8, !tbaa !9
  br label %49

49:                                               ; preds = %47, %40
  %50 = load ptr, ptr @egb.iexw, align 8, !tbaa !9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = add i32 %16, 1
  %54 = tail call ptr @ivector(i32 noundef -1, i32 noundef %53) #29
  store ptr %54, ptr @egb.iexw, align 8, !tbaa !9
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #29
  store ptr %59, ptr @egb.sumdeijda, align 8, !tbaa !9
  br label %60

60:                                               ; preds = %58, %55
  %61 = load ptr, ptr @egb.psi, align 8, !tbaa !9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, ptr @gb, align 4
  switch i32 %64, label %67 [
    i32 5, label %65
    i32 2, label %65
  ]

65:                                               ; preds = %63, %63
  %66 = tail call ptr @vector(i64 noundef 0, i64 noundef %17) #29
  store ptr %66, ptr @egb.psi, align 8, !tbaa !9
  br label %67

67:                                               ; preds = %63, %65, %60
  %68 = load ptr, ptr @egb.reqack, align 8, !tbaa !9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call ptr @ivector(i32 noundef 0, i32 noundef 1) #29
  store ptr %71, ptr @egb.reqack, align 8, !tbaa !9
  br label %72

72:                                               ; preds = %67, %70
  %73 = load ptr, ptr @prm, align 8, !tbaa !9
  %74 = getelementptr inbounds %struct.parm, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !26
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.parm, ptr %73, i64 0, i32 4
  store double 0.000000e+00, ptr %10, align 8, !tbaa !12
  br label %293

79:                                               ; preds = %72, %279
  %80 = phi i64 [ %280, %279 ], [ 0, %72 ]
  %81 = phi double [ %96, %279 ], [ 0.000000e+00, %72 ]
  %82 = phi double [ %249, %279 ], [ undef, %72 ]
  %83 = load i1, ptr @dim, align 4
  %84 = select i1 %83, i64 4, i64 3
  %85 = mul nuw nsw i64 %84, %80
  %86 = getelementptr inbounds double, ptr %3, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !12
  %88 = getelementptr double, ptr %86, i64 1
  %89 = load double, ptr %88, align 8, !tbaa !12
  %90 = getelementptr double, ptr %86, i64 2
  %91 = load double, ptr %90, align 8, !tbaa !12
  br i1 %83, label %92, label %95

92:                                               ; preds = %79
  %93 = getelementptr double, ptr %86, i64 3
  %94 = load double, ptr %93, align 8, !tbaa !12
  br label %95

95:                                               ; preds = %92, %79
  %96 = phi double [ %94, %92 ], [ %81, %79 ]
  %97 = getelementptr inbounds double, ptr %6, i64 %80
  %98 = load double, ptr %97, align 8, !tbaa !12
  %99 = fadd double %98, 0xBFB70A3D70A3D70A
  %100 = fdiv double 1.000000e+00, %99
  %101 = getelementptr inbounds i32, ptr %0, i64 %80
  %102 = getelementptr inbounds i32, ptr %1, i64 %80
  %103 = load i32, ptr %101, align 4, !tbaa !5
  %104 = load i32, ptr %102, align 4, !tbaa !5
  %105 = add nsw i32 %104, %103
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %247

107:                                              ; preds = %95
  %108 = getelementptr inbounds ptr, ptr %2, i64 %80
  %109 = fmul double %100, 5.000000e-01
  br label %110

110:                                              ; preds = %107, %239
  %111 = phi i64 [ 0, %107 ], [ %241, %239 ]
  %112 = phi double [ %82, %107 ], [ %149, %239 ]
  %113 = phi double [ 0.000000e+00, %107 ], [ %240, %239 ]
  %114 = load ptr, ptr %108, align 8, !tbaa !9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load ptr, ptr @nabout, align 8, !tbaa !9
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.80, i32 noundef 0) #25
  %119 = load ptr, ptr @nabout, align 8, !tbaa !9
  %120 = tail call i32 @fflush(ptr noundef %119) #25
  %121 = load ptr, ptr %108, align 8, !tbaa !9
  br label %122

122:                                              ; preds = %116, %110
  %123 = phi ptr [ %121, %116 ], [ %114, %110 ]
  %124 = getelementptr inbounds i32, ptr %123, i64 %111
  %125 = load i32, ptr %124, align 4, !tbaa !5
  %126 = load i1, ptr @dim, align 4
  %127 = select i1 %126, i32 4, i32 3
  %128 = mul nsw i32 %127, %125
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, ptr %3, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !12
  %132 = fsub double %87, %131
  %133 = getelementptr double, ptr %130, i64 1
  %134 = load double, ptr %133, align 8, !tbaa !12
  %135 = fsub double %89, %134
  %136 = getelementptr double, ptr %130, i64 2
  %137 = load double, ptr %136, align 8, !tbaa !12
  %138 = fsub double %91, %137
  %139 = fmul double %135, %135
  %140 = tail call double @llvm.fmuladd.f64(double %132, double %132, double %139)
  %141 = tail call double @llvm.fmuladd.f64(double %138, double %138, double %140)
  br i1 %126, label %142, label %147

142:                                              ; preds = %122
  %143 = getelementptr double, ptr %130, i64 3
  %144 = load double, ptr %143, align 8, !tbaa !12
  %145 = fsub double %96, %144
  %146 = tail call double @llvm.fmuladd.f64(double %145, double %145, double %141)
  br label %147

147:                                              ; preds = %142, %122
  %148 = phi double [ %146, %142 ], [ %141, %122 ]
  %149 = phi double [ %145, %142 ], [ %112, %122 ]
  %150 = fcmp ogt double %148, %44
  br i1 %150, label %239, label %151

151:                                              ; preds = %147
  %152 = tail call double @sqrt(double noundef %148) #29
  %153 = fdiv double 1.000000e+00, %152
  %154 = fmul double %148, %153
  %155 = sext i32 %125 to i64
  %156 = getelementptr inbounds double, ptr %5, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !12
  %158 = getelementptr inbounds double, ptr %6, i64 %155
  %159 = load double, ptr %158, align 8, !tbaa !12
  %160 = fadd double %159, 0xBFB70A3D70A3D70A
  %161 = fmul double %157, %160
  %162 = fmul double %161, %161
  %163 = fadd double %161, 2.000000e+01
  %164 = fcmp ogt double %154, %163
  br i1 %164, label %239, label %165

165:                                              ; preds = %151
  %166 = fsub double 2.000000e+01, %161
  %167 = fcmp ogt double %154, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = fsub double %154, %161
  %170 = fdiv double 1.000000e+00, %169
  %171 = fmul double %154, 2.000000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %171, double %170, double 1.000000e+00)
  %173 = tail call double @llvm.fmuladd.f64(double %154, double -8.000000e+01, double %148)
  %174 = fsub double %173, %162
  %175 = tail call double @llvm.fmuladd.f64(double %174, double 0x3F647AE147AE147C, double %172)
  %176 = fmul double %169, 5.000000e-02
  %177 = tail call double @log(double noundef %176) #29
  %178 = tail call double @llvm.fmuladd.f64(double %177, double 2.000000e+00, double %175)
  %179 = fmul double %153, -1.250000e-01
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %178, double %113)
  br label %239

181:                                              ; preds = %165
  %182 = fmul double %161, 4.000000e+00
  %183 = fcmp ogt double %154, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %181
  %185 = fmul double %153, %153
  %186 = fmul double %185, %162
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 0x3FDD1745D1745D17, double 0x3FDC71C71C71C71C)
  %188 = tail call double @llvm.fmuladd.f64(double %186, double %187, double 0x3FDB6DB6DB6DB6DB)
  %189 = tail call double @llvm.fmuladd.f64(double %186, double %188, double 4.000000e-01)
  %190 = tail call double @llvm.fmuladd.f64(double %186, double %189, double 0x3FD5555555555555)
  %191 = fneg double %161
  %192 = fmul double %186, %191
  %193 = fmul double %185, %192
  %194 = tail call double @llvm.fmuladd.f64(double %193, double %190, double %113)
  br label %239

195:                                              ; preds = %181
  %196 = fadd double %99, %161
  %197 = fcmp ogt double %154, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = fsub double %148, %162
  %200 = fdiv double %161, %199
  %201 = fmul double %153, 5.000000e-01
  %202 = fsub double %154, %161
  %203 = fadd double %154, %161
  %204 = fdiv double %202, %203
  %205 = tail call double @log(double noundef %204) #29
  %206 = tail call double @llvm.fmuladd.f64(double %201, double %205, double %200)
  %207 = tail call double @llvm.fmuladd.f64(double %206, double -5.000000e-01, double %113)
  br label %239

208:                                              ; preds = %195
  %209 = fsub double %99, %161
  %210 = tail call double @llvm.fabs.f64(double %209)
  %211 = fcmp ogt double %154, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = fmul double %109, %153
  %214 = tail call double @llvm.fmuladd.f64(double %99, double %99, double %148)
  %215 = fsub double %214, %162
  %216 = fmul double %213, %215
  %217 = fadd double %154, %161
  %218 = fdiv double 1.000000e+00, %217
  %219 = fsub double 2.000000e+00, %216
  %220 = fneg double %218
  %221 = tail call double @llvm.fmuladd.f64(double %100, double %219, double %220)
  %222 = fmul double %99, %218
  %223 = tail call double @log(double noundef %222) #29
  %224 = tail call double @llvm.fmuladd.f64(double %153, double %223, double %221)
  %225 = tail call double @llvm.fmuladd.f64(double %224, double -2.500000e-01, double %113)
  br label %239

226:                                              ; preds = %208
  %227 = fcmp olt double %99, %161
  br i1 %227, label %228, label %239

228:                                              ; preds = %226
  %229 = fsub double %148, %162
  %230 = fdiv double %161, %229
  %231 = tail call double @llvm.fmuladd.f64(double %100, double 2.000000e+00, double %230)
  %232 = fmul double %153, 5.000000e-01
  %233 = fsub double %161, %154
  %234 = fadd double %154, %161
  %235 = fdiv double %233, %234
  %236 = tail call double @log(double noundef %235) #29
  %237 = tail call double @llvm.fmuladd.f64(double %232, double %236, double %231)
  %238 = tail call double @llvm.fmuladd.f64(double %237, double -5.000000e-01, double %113)
  br label %239

239:                                              ; preds = %168, %198, %226, %228, %212, %184, %151, %147
  %240 = phi double [ %113, %147 ], [ %113, %151 ], [ %180, %168 ], [ %194, %184 ], [ %207, %198 ], [ %225, %212 ], [ %238, %228 ], [ %113, %226 ]
  %241 = add nuw nsw i64 %111, 1
  %242 = load i32, ptr %101, align 4, !tbaa !5
  %243 = load i32, ptr %102, align 4, !tbaa !5
  %244 = add nsw i32 %243, %242
  %245 = sext i32 %244 to i64
  %246 = icmp slt i64 %241, %245
  br i1 %246, label %110, label %247, !llvm.loop !101

247:                                              ; preds = %239, %95
  %248 = phi double [ 0.000000e+00, %95 ], [ %240, %239 ]
  %249 = phi double [ %82, %95 ], [ %149, %239 ]
  %250 = load i32, ptr @gb, align 4, !tbaa !5
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = fadd double %100, %248
  %254 = fdiv double 1.000000e+00, %253
  %255 = load ptr, ptr @egb.reff, align 8, !tbaa !9
  %256 = getelementptr inbounds double, ptr %255, i64 %80
  store double %254, ptr %256, align 8, !tbaa !12
  %257 = fcmp olt double %254, 0.000000e+00
  br i1 %257, label %258, label %279

258:                                              ; preds = %252
  store double 3.000000e+01, ptr %256, align 8, !tbaa !12
  br label %279

259:                                              ; preds = %247
  %260 = fneg double %99
  %261 = fmul double %248, %260
  %262 = load ptr, ptr @egb.psi, align 8, !tbaa !9
  %263 = getelementptr inbounds double, ptr %262, i64 %80
  store double %261, ptr %263, align 8, !tbaa !12
  %264 = load double, ptr @gbalpha, align 8, !tbaa !12
  %265 = load double, ptr @gbbeta, align 8, !tbaa !12
  %266 = fneg double %265
  %267 = tail call double @llvm.fmuladd.f64(double %266, double %261, double %264)
  %268 = load double, ptr @gbgamma, align 8, !tbaa !12
  %269 = fmul double %261, %268
  %270 = tail call double @llvm.fmuladd.f64(double %269, double %261, double %267)
  %271 = fmul double %261, %270
  %272 = tail call double @tanh(double noundef %271) #29
  %273 = load double, ptr %97, align 8, !tbaa !12
  %274 = fdiv double %272, %273
  %275 = fsub double %100, %274
  %276 = fdiv double 1.000000e+00, %275
  %277 = load ptr, ptr @egb.reff, align 8, !tbaa !9
  %278 = getelementptr inbounds double, ptr %277, i64 %80
  store double %276, ptr %278, align 8, !tbaa !12
  br label %279

279:                                              ; preds = %259, %258, %252
  %280 = add nuw nsw i64 %80, 1
  %281 = load ptr, ptr @prm, align 8, !tbaa !9
  %282 = getelementptr inbounds %struct.parm, ptr %281, i64 0, i32 4
  %283 = load i32, ptr %282, align 8, !tbaa !26
  %284 = sext i32 %283 to i64
  %285 = icmp slt i64 %280, %284
  br i1 %285, label %79, label %286, !llvm.loop !102

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.parm, ptr %281, i64 0, i32 4
  store double 0.000000e+00, ptr %10, align 8, !tbaa !12
  %288 = icmp sgt i32 %283, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !9
  %291 = zext nneg i32 %283 to i64
  %292 = shl nuw nsw i64 %291, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %290, i8 0, i64 %292, i1 false), !tbaa !12
  br label %299

293:                                              ; preds = %77, %286
  %294 = phi ptr [ %78, %77 ], [ %287, %286 ]
  %295 = phi i32 [ %75, %77 ], [ %283, %286 ]
  %296 = phi double [ 0.000000e+00, %77 ], [ %96, %286 ]
  %297 = phi double [ undef, %77 ], [ %249, %286 ]
  %298 = icmp sgt i32 %295, -1
  br i1 %298, label %299, label %866

299:                                              ; preds = %289, %293
  %300 = phi double [ %249, %289 ], [ %297, %293 ]
  %301 = phi double [ %96, %289 ], [ %296, %293 ]
  %302 = phi ptr [ %287, %289 ], [ %294, %293 ]
  %303 = load ptr, ptr @egb.iexw, align 8, !tbaa !9
  br label %306

304:                                              ; preds = %306
  %305 = icmp sgt i32 %310, 0
  br i1 %305, label %315, label %866

306:                                              ; preds = %299, %306
  %307 = phi i64 [ -1, %299 ], [ %309, %306 ]
  %308 = getelementptr inbounds i32, ptr %303, i64 %307
  store i32 -1, ptr %308, align 4, !tbaa !5
  %309 = add nsw i64 %307, 1
  %310 = load i32, ptr %302, align 8, !tbaa !26
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %309, %311
  br i1 %312, label %306, label %304, !llvm.loop !103

313:                                              ; preds = %583
  %314 = icmp sgt i32 %592, 0
  br i1 %314, label %595, label %866

315:                                              ; preds = %304, %583
  %316 = phi i64 [ %589, %583 ], [ 0, %304 ]
  %317 = phi double [ %588, %583 ], [ 0.000000e+00, %304 ]
  %318 = phi double [ %587, %583 ], [ 0.000000e+00, %304 ]
  %319 = phi double [ %586, %583 ], [ 0.000000e+00, %304 ]
  %320 = phi double [ %585, %583 ], [ %301, %304 ]
  %321 = phi double [ %584, %583 ], [ %300, %304 ]
  %322 = load ptr, ptr @egb.reff, align 8, !tbaa !9
  %323 = getelementptr inbounds double, ptr %322, i64 %316
  %324 = load double, ptr %323, align 8, !tbaa !12
  %325 = getelementptr inbounds double, ptr %7, i64 %316
  %326 = load double, ptr %325, align 8, !tbaa !12
  %327 = load ptr, ptr @frozen, align 8, !tbaa !9
  %328 = getelementptr inbounds i32, ptr %327, i64 %316
  %329 = load i32, ptr %328, align 4, !tbaa !5
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %349

331:                                              ; preds = %315
  %332 = fmul double %324, -0.000000e+00
  %333 = tail call double @exp(double noundef %332) #29
  %334 = fdiv double %333, 7.850000e+01
  %335 = fsub double 1.000000e+00, %334
  %336 = fmul double %326, 5.000000e-01
  %337 = fmul double %326, %336
  %338 = fmul double %337, %335
  %339 = fdiv double %338, %324
  %340 = fsub double %317, %339
  %341 = fmul double %337, -0.000000e+00
  %342 = fmul double %334, %341
  %343 = tail call double @llvm.fmuladd.f64(double %342, double %324, double %338)
  %344 = fadd double %343, 0.000000e+00
  %345 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !9
  %346 = getelementptr inbounds double, ptr %345, i64 %316
  %347 = load double, ptr %346, align 8, !tbaa !12
  %348 = fadd double %347, %344
  store double %348, ptr %346, align 8, !tbaa !12
  br label %349

349:                                              ; preds = %331, %315
  %350 = phi double [ %317, %315 ], [ %340, %331 ]
  %351 = getelementptr inbounds i32, ptr %1, i64 %316
  %352 = load i32, ptr %351, align 4, !tbaa !5
  %353 = icmp slt i32 %352, 1
  br i1 %353, label %583, label %354

354:                                              ; preds = %349
  %355 = load i1, ptr @dim, align 4
  %356 = select i1 %355, i32 4, i32 3
  %357 = trunc i64 %316 to i32
  %358 = mul nuw nsw i32 %356, %357
  %359 = zext nneg i32 %358 to i64
  %360 = getelementptr inbounds double, ptr %3, i64 %359
  %361 = load <2 x double>, ptr %360, align 8, !tbaa !12
  %362 = add nuw nsw i32 %358, 2
  %363 = zext nneg i32 %362 to i64
  %364 = getelementptr inbounds double, ptr %3, i64 %363
  %365 = load double, ptr %364, align 8, !tbaa !12
  br i1 %355, label %366, label %369

366:                                              ; preds = %354
  %367 = getelementptr double, ptr %360, i64 3
  %368 = load double, ptr %367, align 8, !tbaa !12
  br label %369

369:                                              ; preds = %366, %354
  %370 = phi double [ %368, %366 ], [ %320, %354 ]
  %371 = load ptr, ptr @prm, align 8, !tbaa !9
  %372 = getelementptr inbounds %struct.parm, ptr %371, i64 0, i32 5
  %373 = load i32, ptr %372, align 4, !tbaa !104
  %374 = getelementptr inbounds %struct.parm, ptr %371, i64 0, i32 59
  %375 = load ptr, ptr %374, align 8, !tbaa !105
  %376 = getelementptr inbounds i32, ptr %375, i64 %316
  %377 = load i32, ptr %376, align 4, !tbaa !5
  %378 = add nsw i32 %377, -1
  %379 = mul nsw i32 %378, %373
  %380 = getelementptr inbounds %struct.parm, ptr %371, i64 0, i32 60
  %381 = load ptr, ptr %380, align 8, !tbaa !40
  %382 = getelementptr inbounds i32, ptr %381, i64 %316
  %383 = load i32, ptr %382, align 4, !tbaa !5
  %384 = icmp sgt i32 %383, 0
  br i1 %384, label %385, label %401

385:                                              ; preds = %369
  %386 = load ptr, ptr @egb.iexw, align 8, !tbaa !9
  %387 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  %388 = getelementptr inbounds ptr, ptr %387, i64 %316
  %389 = load ptr, ptr %388, align 8, !tbaa !9
  %390 = getelementptr i32, ptr %386, i64 -1
  br label %391

391:                                              ; preds = %385, %391
  %392 = phi i64 [ 0, %385 ], [ %397, %391 ]
  %393 = getelementptr inbounds i32, ptr %389, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !5
  %395 = sext i32 %394 to i64
  %396 = getelementptr i32, ptr %390, i64 %395
  store i32 %357, ptr %396, align 4, !tbaa !5
  %397 = add nuw nsw i64 %392, 1
  %398 = load i32, ptr %382, align 4, !tbaa !5
  %399 = sext i32 %398 to i64
  %400 = icmp slt i64 %397, %399
  br i1 %400, label %391, label %401, !llvm.loop !106

401:                                              ; preds = %391, %369
  %402 = getelementptr inbounds i32, ptr %0, i64 %316
  %403 = load i32, ptr %402, align 4, !tbaa !5
  %404 = getelementptr inbounds ptr, ptr %2, i64 %316
  %405 = sext i32 %403 to i64
  br label %406

406:                                              ; preds = %401, %566
  %407 = phi i1 [ %355, %401 ], [ %552, %566 ]
  %408 = phi i64 [ %405, %401 ], [ %567, %566 ]
  %409 = phi double [ %350, %401 ], [ %475, %566 ]
  %410 = phi double [ %318, %401 ], [ %545, %566 ]
  %411 = phi double [ %319, %401 ], [ %544, %566 ]
  %412 = phi double [ 0.000000e+00, %401 ], [ %551, %566 ]
  %413 = phi double [ 0.000000e+00, %401 ], [ %555, %566 ]
  %414 = phi double [ %321, %401 ], [ %453, %566 ]
  %415 = phi <2 x double> [ zeroinitializer, %401 ], [ %550, %566 ]
  %416 = load ptr, ptr %404, align 8, !tbaa !9
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %425

418:                                              ; preds = %406
  %419 = load ptr, ptr @nabout, align 8, !tbaa !9
  %420 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.82, i32 noundef 0) #25
  %421 = load ptr, ptr @nabout, align 8, !tbaa !9
  %422 = tail call i32 @fflush(ptr noundef %421) #25
  %423 = load ptr, ptr %404, align 8, !tbaa !9
  %424 = load i1, ptr @dim, align 4
  br label %425

425:                                              ; preds = %418, %406
  %426 = phi i1 [ %424, %418 ], [ %407, %406 ]
  %427 = phi ptr [ %423, %418 ], [ %416, %406 ]
  %428 = getelementptr inbounds i32, ptr %427, i64 %408
  %429 = load i32, ptr %428, align 4, !tbaa !5
  %430 = select i1 %426, i32 4, i32 3
  %431 = mul nsw i32 %430, %429
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds double, ptr %3, i64 %432
  %434 = load <2 x double>, ptr %433, align 8, !tbaa !12
  %435 = fsub <2 x double> %361, %434
  %436 = add nsw i32 %431, 2
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds double, ptr %3, i64 %437
  %439 = load double, ptr %438, align 8, !tbaa !12
  %440 = fsub double %365, %439
  %441 = fmul <2 x double> %435, %435
  %442 = extractelement <2 x double> %441, i64 1
  %443 = extractelement <2 x double> %435, i64 0
  %444 = tail call double @llvm.fmuladd.f64(double %443, double %443, double %442)
  %445 = tail call double @llvm.fmuladd.f64(double %440, double %440, double %444)
  br i1 %426, label %446, label %451

446:                                              ; preds = %425
  %447 = getelementptr double, ptr %433, i64 3
  %448 = load double, ptr %447, align 8, !tbaa !12
  %449 = fsub double %370, %448
  %450 = tail call double @llvm.fmuladd.f64(double %449, double %449, double %445)
  br label %451

451:                                              ; preds = %446, %425
  %452 = phi double [ %450, %446 ], [ %445, %425 ]
  %453 = phi double [ %449, %446 ], [ %414, %425 ]
  %454 = sext i32 %429 to i64
  %455 = getelementptr inbounds double, ptr %7, i64 %454
  %456 = load double, ptr %455, align 8, !tbaa !12
  %457 = fmul double %326, %456
  %458 = load ptr, ptr @egb.reff, align 8, !tbaa !9
  %459 = getelementptr inbounds double, ptr %458, i64 %454
  %460 = load double, ptr %459, align 8, !tbaa !12
  %461 = fmul double %324, %460
  %462 = fneg double %452
  %463 = fmul double %461, 4.000000e+00
  %464 = fdiv double %462, %463
  %465 = tail call double @exp(double noundef %464) #29
  %466 = tail call double @llvm.fmuladd.f64(double %461, double %465, double %452)
  %467 = tail call double @sqrt(double noundef %466) #29
  %468 = fdiv double 1.000000e+00, %467
  %469 = fdiv double -0.000000e+00, %468
  %470 = tail call double @exp(double noundef %469) #29
  %471 = fdiv double %470, 7.850000e+01
  %472 = fsub double 1.000000e+00, %471
  %473 = fneg double %457
  %474 = fmul double %472, %473
  %475 = tail call double @llvm.fmuladd.f64(double %474, double %468, double %409)
  %476 = fmul double %468, %468
  %477 = fmul double %468, %476
  %478 = fmul double %457, %477
  %479 = tail call double @llvm.fmuladd.f64(double %469, double %471, double %472)
  %480 = fmul double %478, %479
  %481 = tail call double @llvm.fmuladd.f64(double %465, double -2.500000e-01, double 1.000000e+00)
  %482 = fmul double %481, %480
  %483 = fmul double %465, 5.000000e-01
  %484 = fmul double %483, %480
  %485 = tail call double @llvm.fmuladd.f64(double %452, double 2.500000e-01, double %461)
  %486 = fmul double %485, %484
  %487 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !9
  %488 = getelementptr inbounds double, ptr %487, i64 %316
  %489 = load double, ptr %488, align 8, !tbaa !12
  %490 = tail call double @llvm.fmuladd.f64(double %324, double %486, double %489)
  store double %490, ptr %488, align 8, !tbaa !12
  %491 = getelementptr inbounds double, ptr %487, i64 %454
  %492 = load double, ptr %491, align 8, !tbaa !12
  %493 = tail call double @llvm.fmuladd.f64(double %460, double %486, double %492)
  store double %493, ptr %491, align 8, !tbaa !12
  %494 = load ptr, ptr @egb.iexw, align 8, !tbaa !9
  %495 = getelementptr inbounds i32, ptr %494, i64 %454
  %496 = load i32, ptr %495, align 4, !tbaa !5
  %497 = zext i32 %496 to i64
  %498 = icmp eq i64 %316, %497
  br i1 %498, label %542, label %499

499:                                              ; preds = %451
  %500 = tail call double @sqrt(double noundef %452) #29
  %501 = fdiv double 1.000000e+00, %500
  %502 = fmul double %501, %501
  %503 = fmul double %457, %501
  %504 = fadd double %410, %503
  %505 = fneg double %503
  %506 = tail call double @llvm.fmuladd.f64(double %505, double %502, double %482)
  %507 = load ptr, ptr @prm, align 8, !tbaa !9
  %508 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 61
  %509 = load ptr, ptr %508, align 8, !tbaa !107
  %510 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 59
  %511 = load ptr, ptr %510, align 8, !tbaa !105
  %512 = getelementptr inbounds i32, ptr %511, i64 %454
  %513 = load i32, ptr %512, align 4, !tbaa !5
  %514 = add nsw i32 %513, %379
  %515 = sext i32 %514 to i64
  %516 = getelementptr i32, ptr %509, i64 %515
  %517 = getelementptr i32, ptr %516, i64 -1
  %518 = load i32, ptr %517, align 4, !tbaa !5
  %519 = icmp sgt i32 %518, 0
  br i1 %519, label %520, label %542

520:                                              ; preds = %499
  %521 = add nsw i32 %518, -1
  %522 = fmul double %502, %502
  %523 = fmul double %502, %522
  %524 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 48
  %525 = load ptr, ptr %524, align 8, !tbaa !108
  %526 = zext nneg i32 %521 to i64
  %527 = getelementptr inbounds double, ptr %525, i64 %526
  %528 = load double, ptr %527, align 8, !tbaa !12
  %529 = fmul double %523, %528
  %530 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 47
  %531 = load ptr, ptr %530, align 8, !tbaa !109
  %532 = getelementptr inbounds double, ptr %531, i64 %526
  %533 = load double, ptr %532, align 8, !tbaa !12
  %534 = fmul double %523, %533
  %535 = fmul double %523, %534
  %536 = fsub double %535, %529
  %537 = fadd double %411, %536
  %538 = fmul double %529, -6.000000e+00
  %539 = tail call double @llvm.fmuladd.f64(double %535, double 1.200000e+01, double %538)
  %540 = fneg double %539
  %541 = tail call double @llvm.fmuladd.f64(double %540, double %502, double %506)
  br label %542

542:                                              ; preds = %499, %520, %451
  %543 = phi double [ %541, %520 ], [ %506, %499 ], [ %482, %451 ]
  %544 = phi double [ %537, %520 ], [ %411, %499 ], [ %411, %451 ]
  %545 = phi double [ %504, %520 ], [ %504, %499 ], [ %410, %451 ]
  %546 = insertelement <2 x double> poison, double %543, i64 0
  %547 = shufflevector <2 x double> %546, <2 x double> poison, <2 x i32> zeroinitializer
  %548 = fmul <2 x double> %435, %547
  %549 = fmul double %440, %543
  %550 = fadd <2 x double> %415, %548
  %551 = fadd double %412, %549
  %552 = load i1, ptr @dim, align 4
  %553 = fmul double %453, %543
  %554 = select i1 %552, double %553, double -0.000000e+00
  %555 = fadd double %413, %554
  %556 = getelementptr inbounds double, ptr %4, i64 %432
  %557 = load <2 x double>, ptr %556, align 8, !tbaa !12
  %558 = fsub <2 x double> %557, %548
  store <2 x double> %558, ptr %556, align 8, !tbaa !12
  %559 = getelementptr inbounds double, ptr %4, i64 %437
  %560 = load double, ptr %559, align 8, !tbaa !12
  %561 = fsub double %560, %549
  store double %561, ptr %559, align 8, !tbaa !12
  br i1 %552, label %562, label %566

562:                                              ; preds = %542
  %563 = getelementptr double, ptr %556, i64 3
  %564 = load double, ptr %563, align 8, !tbaa !12
  %565 = fsub double %564, %553
  store double %565, ptr %563, align 8, !tbaa !12
  br label %566

566:                                              ; preds = %542, %562
  %567 = add nsw i64 %408, 1
  %568 = load i32, ptr %402, align 4, !tbaa !5
  %569 = add nsw i32 %568, %352
  %570 = sext i32 %569 to i64
  %571 = icmp slt i64 %567, %570
  br i1 %571, label %406, label %572, !llvm.loop !110

572:                                              ; preds = %566
  %573 = getelementptr inbounds double, ptr %4, i64 %359
  %574 = load <2 x double>, ptr %573, align 8, !tbaa !12
  %575 = fadd <2 x double> %550, %574
  store <2 x double> %575, ptr %573, align 8, !tbaa !12
  %576 = getelementptr inbounds double, ptr %4, i64 %363
  %577 = load double, ptr %576, align 8, !tbaa !12
  %578 = fadd double %551, %577
  store double %578, ptr %576, align 8, !tbaa !12
  br i1 %552, label %579, label %583

579:                                              ; preds = %572
  %580 = getelementptr double, ptr %573, i64 3
  %581 = load double, ptr %580, align 8, !tbaa !12
  %582 = fadd double %555, %581
  store double %582, ptr %580, align 8, !tbaa !12
  br label %583

583:                                              ; preds = %572, %579, %349
  %584 = phi double [ %321, %349 ], [ %453, %579 ], [ %453, %572 ]
  %585 = phi double [ %320, %349 ], [ %370, %579 ], [ %370, %572 ]
  %586 = phi double [ %319, %349 ], [ %544, %579 ], [ %544, %572 ]
  %587 = phi double [ %318, %349 ], [ %545, %579 ], [ %545, %572 ]
  %588 = phi double [ %350, %349 ], [ %475, %579 ], [ %475, %572 ]
  %589 = add nuw nsw i64 %316, 1
  %590 = load ptr, ptr @prm, align 8, !tbaa !9
  %591 = getelementptr inbounds %struct.parm, ptr %590, i64 0, i32 4
  %592 = load i32, ptr %591, align 8, !tbaa !26
  %593 = sext i32 %592 to i64
  %594 = icmp slt i64 %589, %593
  br i1 %594, label %315, label %313, !llvm.loop !111

595:                                              ; preds = %313, %857
  %596 = phi i64 [ %860, %857 ], [ 0, %313 ]
  %597 = phi double [ %859, %857 ], [ %585, %313 ]
  %598 = phi double [ %858, %857 ], [ %584, %313 ]
  %599 = getelementptr inbounds i32, ptr %0, i64 %596
  %600 = load i32, ptr %599, align 4, !tbaa !5
  %601 = getelementptr inbounds i32, ptr %1, i64 %596
  %602 = load i32, ptr %601, align 4, !tbaa !5
  %603 = add i32 %602, %600
  %604 = load ptr, ptr @frozen, align 8, !tbaa !9
  %605 = getelementptr inbounds i32, ptr %604, i64 %596
  %606 = load i32, ptr %605, align 4, !tbaa !5
  %607 = icmp ne i32 %606, 0
  %608 = icmp slt i32 %603, 1
  %609 = select i1 %607, i1 true, i1 %608
  br i1 %609, label %857, label %610

610:                                              ; preds = %595
  %611 = load i1, ptr @dim, align 4
  %612 = select i1 %611, i32 4, i32 3
  %613 = trunc i64 %596 to i32
  %614 = mul nuw nsw i32 %612, %613
  %615 = zext nneg i32 %614 to i64
  %616 = getelementptr inbounds double, ptr %3, i64 %615
  %617 = load <2 x double>, ptr %616, align 8, !tbaa !12
  %618 = add nuw nsw i32 %614, 2
  %619 = zext nneg i32 %618 to i64
  %620 = getelementptr inbounds double, ptr %3, i64 %619
  %621 = load double, ptr %620, align 8, !tbaa !12
  br i1 %611, label %622, label %625

622:                                              ; preds = %610
  %623 = getelementptr double, ptr %616, i64 3
  %624 = load double, ptr %623, align 8, !tbaa !12
  br label %625

625:                                              ; preds = %622, %610
  %626 = phi double [ %624, %622 ], [ %597, %610 ]
  %627 = getelementptr inbounds double, ptr %6, i64 %596
  %628 = load double, ptr %627, align 8, !tbaa !12
  %629 = fadd double %628, 0xBFB70A3D70A3D70A
  %630 = fdiv double 1.000000e+00, %629
  %631 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !9
  %632 = getelementptr inbounds double, ptr %631, i64 %596
  %633 = load double, ptr %632, align 8, !tbaa !12
  %634 = load i32, ptr @gb, align 4, !tbaa !5
  %635 = icmp sgt i32 %634, 1
  br i1 %635, label %636, label %667

636:                                              ; preds = %625
  %637 = load double, ptr @gbalpha, align 8, !tbaa !12
  %638 = load double, ptr @gbbeta, align 8, !tbaa !12
  %639 = load ptr, ptr @egb.psi, align 8, !tbaa !9
  %640 = getelementptr inbounds double, ptr %639, i64 %596
  %641 = load double, ptr %640, align 8, !tbaa !12
  %642 = fneg double %638
  %643 = tail call double @llvm.fmuladd.f64(double %642, double %641, double %637)
  %644 = load double, ptr @gbgamma, align 8, !tbaa !12
  %645 = fmul double %641, %644
  %646 = tail call double @llvm.fmuladd.f64(double %645, double %641, double %643)
  %647 = fmul double %641, %646
  %648 = tail call double @tanh(double noundef %647) #29
  %649 = load double, ptr @gbalpha, align 8, !tbaa !12
  %650 = load double, ptr @gbbeta, align 8, !tbaa !12
  %651 = load ptr, ptr @egb.psi, align 8, !tbaa !9
  %652 = getelementptr inbounds double, ptr %651, i64 %596
  %653 = load double, ptr %652, align 8, !tbaa !12
  %654 = fmul double %650, -2.000000e+00
  %655 = tail call double @llvm.fmuladd.f64(double %654, double %653, double %649)
  %656 = load double, ptr @gbgamma, align 8, !tbaa !12
  %657 = fmul double %656, 3.000000e+00
  %658 = fmul double %653, %657
  %659 = tail call double @llvm.fmuladd.f64(double %658, double %653, double %655)
  %660 = fneg double %648
  %661 = tail call double @llvm.fmuladd.f64(double %660, double %648, double 1.000000e+00)
  %662 = fmul double %661, %659
  %663 = fmul double %629, %662
  %664 = load double, ptr %627, align 8, !tbaa !12
  %665 = fdiv double %663, %664
  %666 = fmul double %633, %665
  br label %667

667:                                              ; preds = %625, %636
  %668 = phi double [ %666, %636 ], [ %633, %625 ]
  %669 = getelementptr inbounds ptr, ptr %2, i64 %596
  %670 = fneg double %629
  %671 = zext nneg i32 %603 to i64
  br label %672

672:                                              ; preds = %667, %836
  %673 = phi i64 [ 0, %667 ], [ %840, %836 ]
  %674 = phi double [ 0.000000e+00, %667 ], [ %838, %836 ]
  %675 = phi double [ 0.000000e+00, %667 ], [ %837, %836 ]
  %676 = phi double [ %598, %667 ], [ %714, %836 ]
  %677 = phi <2 x double> [ zeroinitializer, %667 ], [ %839, %836 ]
  %678 = load ptr, ptr %669, align 8, !tbaa !9
  %679 = icmp eq ptr %678, null
  br i1 %679, label %680, label %686

680:                                              ; preds = %672
  %681 = load ptr, ptr @nabout, align 8, !tbaa !9
  %682 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %681, ptr noundef nonnull @.str.83, i32 noundef 0) #25
  %683 = load ptr, ptr @nabout, align 8, !tbaa !9
  %684 = tail call i32 @fflush(ptr noundef %683) #25
  %685 = load ptr, ptr %669, align 8, !tbaa !9
  br label %686

686:                                              ; preds = %680, %672
  %687 = phi ptr [ %685, %680 ], [ %678, %672 ]
  %688 = getelementptr inbounds i32, ptr %687, i64 %673
  %689 = load i32, ptr %688, align 4, !tbaa !5
  %690 = load i1, ptr @dim, align 4
  %691 = select i1 %690, i32 4, i32 3
  %692 = mul nsw i32 %691, %689
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds double, ptr %3, i64 %693
  %695 = load <2 x double>, ptr %694, align 8, !tbaa !12
  %696 = fsub <2 x double> %617, %695
  %697 = add nsw i32 %692, 2
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds double, ptr %3, i64 %698
  %700 = load double, ptr %699, align 8, !tbaa !12
  %701 = fsub double %621, %700
  %702 = fmul <2 x double> %696, %696
  %703 = extractelement <2 x double> %702, i64 1
  %704 = extractelement <2 x double> %696, i64 0
  %705 = tail call double @llvm.fmuladd.f64(double %704, double %704, double %703)
  %706 = tail call double @llvm.fmuladd.f64(double %701, double %701, double %705)
  br i1 %690, label %707, label %712

707:                                              ; preds = %686
  %708 = getelementptr double, ptr %694, i64 3
  %709 = load double, ptr %708, align 8, !tbaa !12
  %710 = fsub double %626, %709
  %711 = tail call double @llvm.fmuladd.f64(double %710, double %710, double %706)
  br label %712

712:                                              ; preds = %707, %686
  %713 = phi double [ %711, %707 ], [ %706, %686 ]
  %714 = phi double [ %710, %707 ], [ %676, %686 ]
  %715 = fcmp ogt double %713, %44
  br i1 %715, label %836, label %716

716:                                              ; preds = %712
  %717 = tail call double @sqrt(double noundef %713) #29
  %718 = fdiv double 1.000000e+00, %717
  %719 = fmul double %718, %718
  %720 = fmul double %713, %718
  %721 = sext i32 %689 to i64
  %722 = getelementptr inbounds double, ptr %5, i64 %721
  %723 = load double, ptr %722, align 8, !tbaa !12
  %724 = getelementptr inbounds double, ptr %6, i64 %721
  %725 = load double, ptr %724, align 8, !tbaa !12
  %726 = fadd double %725, 0xBFB70A3D70A3D70A
  %727 = fmul double %723, %726
  %728 = fmul double %727, %727
  %729 = fadd double %727, 2.000000e+01
  %730 = fcmp ogt double %720, %729
  br i1 %730, label %836, label %731

731:                                              ; preds = %716
  %732 = fsub double 2.000000e+01, %727
  %733 = fcmp ogt double %720, %732
  br i1 %733, label %734, label %746

734:                                              ; preds = %731
  %735 = fsub double %720, %727
  %736 = fdiv double 1.000000e+00, %735
  %737 = fmul double %718, %719
  %738 = fmul double %737, 1.250000e-01
  %739 = fadd double %713, %728
  %740 = tail call double @llvm.fmuladd.f64(double %736, double %736, double 0xBF647AE147AE147C)
  %741 = fmul double %736, 2.000000e+01
  %742 = tail call double @log(double noundef %741) #29
  %743 = fmul double %742, -2.000000e+00
  %744 = tail call double @llvm.fmuladd.f64(double %739, double %740, double %743)
  %745 = fmul double %738, %744
  br label %815

746:                                              ; preds = %731
  %747 = fmul double %727, 4.000000e+00
  %748 = fcmp ogt double %720, %747
  br i1 %748, label %749, label %759

749:                                              ; preds = %746
  %750 = fmul double %719, %728
  %751 = tail call double @llvm.fmuladd.f64(double %750, double 0x4015D1745D1745D1, double 0x4011C71C71C71C72)
  %752 = tail call double @llvm.fmuladd.f64(double %750, double %751, double 0x400B6DB6DB6DB6DB)
  %753 = tail call double @llvm.fmuladd.f64(double %750, double %752, double 2.400000e+00)
  %754 = tail call double @llvm.fmuladd.f64(double %750, double %753, double 0x3FF5555555555555)
  %755 = fmul double %727, %750
  %756 = fmul double %719, %755
  %757 = fmul double %719, %756
  %758 = fmul double %757, %754
  br label %815

759:                                              ; preds = %746
  %760 = fadd double %629, %727
  %761 = fcmp ogt double %720, %760
  br i1 %761, label %762, label %775

762:                                              ; preds = %759
  %763 = fsub double %713, %728
  %764 = fdiv double 1.000000e+00, %763
  %765 = fmul double %727, %764
  %766 = tail call double @llvm.fmuladd.f64(double %719, double -5.000000e-01, double %764)
  %767 = fmul double %718, 2.500000e-01
  %768 = fmul double %767, %719
  %769 = fsub double %720, %727
  %770 = fadd double %720, %727
  %771 = fdiv double %769, %770
  %772 = tail call double @log(double noundef %771) #29
  %773 = fmul double %768, %772
  %774 = tail call double @llvm.fmuladd.f64(double %765, double %766, double %773)
  br label %815

775:                                              ; preds = %759
  %776 = fsub double %629, %727
  %777 = tail call double @llvm.fabs.f64(double %776)
  %778 = fcmp ogt double %720, %777
  br i1 %778, label %779, label %797

779:                                              ; preds = %775
  %780 = fadd double %720, %727
  %781 = fdiv double 1.000000e+00, %780
  %782 = fmul double %718, %719
  %783 = tail call double @llvm.fmuladd.f64(double %670, double %629, double %713)
  %784 = fadd double %783, %728
  %785 = fmul double %784, -5.000000e-01
  %786 = fmul double %782, %785
  %787 = fmul double %630, %786
  %788 = fmul double %718, %781
  %789 = fsub double %781, %718
  %790 = fmul double %788, %789
  %791 = tail call double @llvm.fmuladd.f64(double %787, double %630, double %790)
  %792 = fmul double %629, %781
  %793 = tail call double @log(double noundef %792) #29
  %794 = fneg double %782
  %795 = tail call double @llvm.fmuladd.f64(double %794, double %793, double %791)
  %796 = fmul double %795, -2.500000e-01
  br label %815

797:                                              ; preds = %775
  %798 = fcmp olt double %629, %727
  br i1 %798, label %799, label %815

799:                                              ; preds = %797
  %800 = fsub double %713, %728
  %801 = fdiv double 1.000000e+00, %800
  %802 = fmul double %719, %727
  %803 = fmul double %727, -2.000000e+00
  %804 = fmul double %803, %801
  %805 = fmul double %801, %804
  %806 = tail call double @llvm.fmuladd.f64(double %802, double %801, double %805)
  %807 = fsub double %727, %720
  %808 = fadd double %720, %727
  %809 = fdiv double %807, %808
  %810 = tail call double @log(double noundef %809) #29
  %811 = fmul double %719, -5.000000e-01
  %812 = fmul double %718, %811
  %813 = tail call double @llvm.fmuladd.f64(double %812, double %810, double %806)
  %814 = fmul double %813, -5.000000e-01
  br label %815

815:                                              ; preds = %797, %749, %779, %799, %762, %734
  %816 = phi double [ %745, %734 ], [ %758, %749 ], [ %774, %762 ], [ %796, %779 ], [ %814, %799 ], [ 0.000000e+00, %797 ]
  %817 = insertelement <2 x double> poison, double %816, i64 0
  %818 = shufflevector <2 x double> %817, <2 x double> poison, <2 x i32> zeroinitializer
  %819 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %696, <2 x double> %818, <2 x double> %677)
  %820 = tail call double @llvm.fmuladd.f64(double %701, double %816, double %674)
  %821 = load i1, ptr @dim, align 4
  %822 = fmul double %668, %816
  %823 = getelementptr inbounds double, ptr %4, i64 %693
  %824 = load <2 x double>, ptr %823, align 8, !tbaa !12
  %825 = insertelement <2 x double> poison, double %822, i64 0
  %826 = shufflevector <2 x double> %825, <2 x double> poison, <2 x i32> zeroinitializer
  %827 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %696, <2 x double> %826, <2 x double> %824)
  store <2 x double> %827, ptr %823, align 8, !tbaa !12
  %828 = getelementptr inbounds double, ptr %4, i64 %698
  %829 = load double, ptr %828, align 8, !tbaa !12
  %830 = tail call double @llvm.fmuladd.f64(double %701, double %822, double %829)
  store double %830, ptr %828, align 8, !tbaa !12
  br i1 %821, label %831, label %836

831:                                              ; preds = %815
  %832 = tail call double @llvm.fmuladd.f64(double %714, double %816, double %675)
  %833 = getelementptr double, ptr %823, i64 3
  %834 = load double, ptr %833, align 8, !tbaa !12
  %835 = tail call double @llvm.fmuladd.f64(double %714, double %822, double %834)
  store double %835, ptr %833, align 8, !tbaa !12
  br label %836

836:                                              ; preds = %815, %831, %716, %712
  %837 = phi double [ %675, %712 ], [ %675, %716 ], [ %832, %831 ], [ %675, %815 ]
  %838 = phi double [ %674, %712 ], [ %674, %716 ], [ %820, %831 ], [ %820, %815 ]
  %839 = phi <2 x double> [ %677, %712 ], [ %677, %716 ], [ %819, %831 ], [ %819, %815 ]
  %840 = add nuw nsw i64 %673, 1
  %841 = icmp eq i64 %840, %671
  br i1 %841, label %842, label %672, !llvm.loop !112

842:                                              ; preds = %836
  %843 = getelementptr inbounds double, ptr %4, i64 %615
  %844 = fneg double %668
  %845 = load <2 x double>, ptr %843, align 8, !tbaa !12
  %846 = insertelement <2 x double> poison, double %844, i64 0
  %847 = shufflevector <2 x double> %846, <2 x double> poison, <2 x i32> zeroinitializer
  %848 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %847, <2 x double> %839, <2 x double> %845)
  store <2 x double> %848, ptr %843, align 8, !tbaa !12
  %849 = getelementptr inbounds double, ptr %4, i64 %619
  %850 = load double, ptr %849, align 8, !tbaa !12
  %851 = tail call double @llvm.fmuladd.f64(double %844, double %838, double %850)
  store double %851, ptr %849, align 8, !tbaa !12
  %852 = load i1, ptr @dim, align 4
  br i1 %852, label %853, label %857

853:                                              ; preds = %842
  %854 = getelementptr double, ptr %843, i64 3
  %855 = load double, ptr %854, align 8, !tbaa !12
  %856 = tail call double @llvm.fmuladd.f64(double %844, double %837, double %855)
  store double %856, ptr %854, align 8, !tbaa !12
  br label %857

857:                                              ; preds = %842, %853, %595
  %858 = phi double [ %598, %595 ], [ %714, %853 ], [ %714, %842 ]
  %859 = phi double [ %597, %595 ], [ %626, %853 ], [ %626, %842 ]
  %860 = add nuw nsw i64 %596, 1
  %861 = load ptr, ptr @prm, align 8, !tbaa !9
  %862 = getelementptr inbounds %struct.parm, ptr %861, i64 0, i32 4
  %863 = load i32, ptr %862, align 8, !tbaa !26
  %864 = sext i32 %863 to i64
  %865 = icmp slt i64 %860, %864
  br i1 %865, label %595, label %866, !llvm.loop !113

866:                                              ; preds = %857, %293, %304, %313
  %867 = phi double [ %588, %313 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %293 ], [ %588, %857 ]
  %868 = phi double [ %587, %313 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %293 ], [ %587, %857 ]
  %869 = phi double [ %586, %313 ], [ 0.000000e+00, %304 ], [ 0.000000e+00, %293 ], [ %586, %857 ]
  store double %868, ptr %9, align 8, !tbaa !12
  store double %869, ptr %8, align 8, !tbaa !12
  store double 0.000000e+00, ptr %11, align 8, !tbaa !12
  br label %870

870:                                              ; preds = %36, %39, %866
  %871 = phi double [ %867, %866 ], [ 0.000000e+00, %39 ], [ 0.000000e+00, %36 ]
  ret double %871
}

; Function Attrs: optsize
declare i32 @nblist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @ebond(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #20 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %101

10:                                               ; preds = %8
  %11 = zext nneg i32 %0 to i64
  %12 = load i1, ptr @dim, align 4
  br label %13

13:                                               ; preds = %10, %98
  %14 = phi i1 [ %12, %10 ], [ %89, %98 ]
  %15 = phi i64 [ 0, %10 ], [ %99, %98 ]
  %16 = phi double [ 0.000000e+00, %10 ], [ %71, %98 ]
  %17 = phi double [ undef, %10 ], [ %60, %98 ]
  %18 = select i1 %14, i32 4, i32 3
  %19 = getelementptr inbounds i32, ptr %1, i64 %15
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = mul nsw i32 %18, %20
  %22 = sdiv i32 %21, 3
  %23 = getelementptr inbounds i32, ptr %2, i64 %15
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = mul nsw i32 %24, %18
  %26 = sdiv i32 %25, 3
  %27 = getelementptr inbounds i32, ptr %3, i64 %15
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds double, ptr %6, i64 %30
  %32 = sext i32 %26 to i64
  %33 = getelementptr inbounds double, ptr %6, i64 %32
  %34 = load <2 x double>, ptr %31, align 8, !tbaa !12
  %35 = load <2 x double>, ptr %33, align 8, !tbaa !12
  %36 = fsub <2 x double> %34, %35
  %37 = add nsw i32 %22, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %6, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !12
  %41 = add nsw i32 %26, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %6, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !12
  %45 = fsub double %40, %44
  %46 = fmul <2 x double> %36, %36
  %47 = extractelement <2 x double> %46, i64 1
  %48 = extractelement <2 x double> %36, i64 0
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %47)
  %50 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %49)
  br i1 %14, label %51, label %58

51:                                               ; preds = %13
  %52 = getelementptr double, ptr %31, i64 3
  %53 = load double, ptr %52, align 8, !tbaa !12
  %54 = getelementptr double, ptr %33, i64 3
  %55 = load double, ptr %54, align 8, !tbaa !12
  %56 = fsub double %53, %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %50)
  br label %58

58:                                               ; preds = %51, %13
  %59 = phi double [ %57, %51 ], [ %50, %13 ]
  %60 = phi double [ %56, %51 ], [ %17, %13 ]
  %61 = tail call double @sqrt(double noundef %59) #29
  %62 = fdiv double 2.000000e+00, %61
  %63 = sext i32 %29 to i64
  %64 = getelementptr inbounds double, ptr %5, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !12
  %66 = fsub double %61, %65
  %67 = getelementptr inbounds double, ptr %4, i64 %63
  %68 = load double, ptr %67, align 8, !tbaa !12
  %69 = fmul double %68, %66
  %70 = fmul double %66, %69
  %71 = fadd double %16, %70
  %72 = fmul double %62, %69
  %73 = getelementptr inbounds double, ptr %7, i64 %30
  %74 = load <2 x double>, ptr %73, align 8, !tbaa !12
  %75 = insertelement <2 x double> poison, double %72, i64 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %76, <2 x double> %74)
  store <2 x double> %77, ptr %73, align 8, !tbaa !12
  %78 = getelementptr inbounds double, ptr %7, i64 %38
  %79 = load double, ptr %78, align 8, !tbaa !12
  %80 = tail call double @llvm.fmuladd.f64(double %45, double %72, double %79)
  store double %80, ptr %78, align 8, !tbaa !12
  %81 = getelementptr inbounds double, ptr %7, i64 %32
  %82 = fneg <2 x double> %36
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !12
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %76, <2 x double> %83)
  store <2 x double> %84, ptr %81, align 8, !tbaa !12
  %85 = getelementptr inbounds double, ptr %7, i64 %42
  %86 = load double, ptr %85, align 8, !tbaa !12
  %87 = fneg double %45
  %88 = tail call double @llvm.fmuladd.f64(double %87, double %72, double %86)
  store double %88, ptr %85, align 8, !tbaa !12
  %89 = load i1, ptr @dim, align 4
  br i1 %89, label %90, label %98

90:                                               ; preds = %58
  %91 = getelementptr double, ptr %73, i64 3
  %92 = load double, ptr %91, align 8, !tbaa !12
  %93 = tail call double @llvm.fmuladd.f64(double %60, double %72, double %92)
  store double %93, ptr %91, align 8, !tbaa !12
  %94 = getelementptr double, ptr %81, i64 3
  %95 = load double, ptr %94, align 8, !tbaa !12
  %96 = fneg double %60
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %72, double %95)
  store double %97, ptr %94, align 8, !tbaa !12
  br label %98

98:                                               ; preds = %58, %90
  %99 = add nuw nsw i64 %15, 1
  %100 = icmp eq i64 %99, %11
  br i1 %100, label %101, label %13, !llvm.loop !114

101:                                              ; preds = %98, %8
  %102 = phi double [ 0.000000e+00, %8 ], [ %71, %98 ]
  ret double %102
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @eangl(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8) unnamed_addr #20 {
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %229

11:                                               ; preds = %9
  %12 = zext nneg i32 %0 to i64
  %13 = load i1, ptr @dim, align 4
  br label %14

14:                                               ; preds = %11, %226
  %15 = phi i1 [ %13, %11 ], [ %208, %226 ]
  %16 = phi i64 [ 0, %11 ], [ %227, %226 ]
  %17 = phi double [ 0.000000e+00, %11 ], [ %148, %226 ]
  %18 = phi <2 x double> [ undef, %11 ], [ %134, %226 ]
  %19 = phi <2 x double> [ undef, %11 ], [ %102, %226 ]
  %20 = select i1 %15, i32 4, i32 3
  %21 = getelementptr inbounds i32, ptr %1, i64 %16
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %23, 3
  %25 = getelementptr inbounds i32, ptr %2, i64 %16
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = mul nsw i32 %26, %20
  %28 = sdiv i32 %27, 3
  %29 = getelementptr inbounds i32, ptr %3, i64 %16
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = mul nsw i32 %30, %20
  %32 = sdiv i32 %31, 3
  %33 = getelementptr inbounds i32, ptr %4, i64 %16
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %24 to i64
  %37 = getelementptr inbounds double, ptr %7, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !12
  %39 = sext i32 %28 to i64
  %40 = getelementptr inbounds double, ptr %7, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !12
  %42 = add nsw i32 %24, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %7, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !12
  %46 = add nsw i32 %28, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %7, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !12
  %50 = add nsw i32 %24, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %7, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !12
  %54 = add nsw i32 %28, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %7, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !12
  %58 = sext i32 %32 to i64
  %59 = getelementptr inbounds double, ptr %7, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !12
  %61 = add nsw i32 %32, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %7, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !12
  %65 = add nsw i32 %32, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %7, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !12
  %69 = insertelement <2 x double> poison, double %60, i64 0
  %70 = insertelement <2 x double> %69, double %38, i64 1
  %71 = insertelement <2 x double> poison, double %41, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = fsub <2 x double> %70, %72
  %74 = insertelement <2 x double> poison, double %64, i64 0
  %75 = insertelement <2 x double> %74, double %45, i64 1
  %76 = insertelement <2 x double> poison, double %49, i64 0
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = fsub <2 x double> %75, %77
  %79 = insertelement <2 x double> poison, double %68, i64 0
  %80 = insertelement <2 x double> %79, double %53, i64 1
  %81 = insertelement <2 x double> poison, double %57, i64 0
  %82 = shufflevector <2 x double> %81, <2 x double> poison, <2 x i32> zeroinitializer
  %83 = fsub <2 x double> %80, %82
  %84 = fmul <2 x double> %78, %78
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %73, <2 x double> %84)
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %83, <2 x double> %83, <2 x double> %85)
  br i1 %15, label %87, label %100

87:                                               ; preds = %14
  %88 = getelementptr double, ptr %37, i64 3
  %89 = load double, ptr %88, align 8, !tbaa !12
  %90 = getelementptr double, ptr %40, i64 3
  %91 = load double, ptr %90, align 8, !tbaa !12
  %92 = getelementptr double, ptr %59, i64 3
  %93 = load double, ptr %92, align 8, !tbaa !12
  %94 = insertelement <2 x double> poison, double %93, i64 0
  %95 = insertelement <2 x double> %94, double %89, i64 1
  %96 = insertelement <2 x double> poison, double %91, i64 0
  %97 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> zeroinitializer
  %98 = fsub <2 x double> %95, %97
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %98, <2 x double> %86)
  br label %100

100:                                              ; preds = %87, %14
  %101 = phi <2 x double> [ %99, %87 ], [ %86, %14 ]
  %102 = phi <2 x double> [ %98, %87 ], [ %19, %14 ]
  %103 = extractelement <2 x double> %101, i64 1
  %104 = tail call double @sqrt(double noundef %103) #29
  %105 = extractelement <2 x double> %101, i64 0
  %106 = tail call double @sqrt(double noundef %105) #29
  %107 = insertelement <2 x double> poison, double %106, i64 0
  %108 = insertelement <2 x double> %107, double %104, i64 1
  %109 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %108
  %110 = extractelement <2 x double> %109, i64 1
  %111 = fmul <2 x double> %73, %109
  %112 = extractelement <2 x double> %111, i64 1
  %113 = fmul <2 x double> %83, %109
  %114 = extractelement <2 x double> %113, i64 1
  %115 = extractelement <2 x double> %109, i64 0
  %116 = fmul <2 x double> %73, %109
  %117 = extractelement <2 x double> %116, i64 0
  %118 = fmul <2 x double> %78, %109
  %119 = fmul <2 x double> %83, %109
  %120 = extractelement <2 x double> %119, i64 0
  %121 = extractelement <2 x double> %118, i64 0
  %122 = extractelement <2 x double> %118, i64 1
  %123 = fmul double %122, %121
  %124 = tail call double @llvm.fmuladd.f64(double %112, double %117, double %123)
  %125 = tail call double @llvm.fmuladd.f64(double %114, double %120, double %124)
  %126 = load i1, ptr @dim, align 4
  %127 = fmul <2 x double> %102, %109
  %128 = extractelement <2 x double> %127, i64 0
  %129 = extractelement <2 x double> %127, i64 1
  %130 = tail call double @llvm.fmuladd.f64(double %129, double %128, double %125)
  %131 = select i1 %126, double %130, double %125
  %132 = insertelement <2 x i1> poison, i1 %126, i64 0
  %133 = shufflevector <2 x i1> %132, <2 x i1> poison, <2 x i32> zeroinitializer
  %134 = select <2 x i1> %133, <2 x double> %127, <2 x double> %18
  %135 = fcmp ogt double %131, 1.000000e+00
  %136 = select i1 %135, double 1.000000e+00, double %131
  %137 = fcmp olt double %136, -1.000000e+00
  %138 = select i1 %137, double -1.000000e+00, double %136
  %139 = tail call double @acos(double noundef %138) #29
  %140 = sext i32 %35 to i64
  %141 = getelementptr inbounds double, ptr %6, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !12
  %143 = fsub double %139, %142
  %144 = getelementptr inbounds double, ptr %5, i64 %140
  %145 = load double, ptr %144, align 8, !tbaa !12
  %146 = fmul double %143, %145
  %147 = fmul double %143, %146
  %148 = fadd double %17, %147
  %149 = fadd double %146, %146
  %150 = tail call double @sin(double noundef %139) #29
  %151 = fcmp ogt double %150, 0.000000e+00
  %152 = fcmp olt double %150, 1.000000e-03
  %153 = and i1 %151, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %100
  %155 = fcmp olt double %150, 0.000000e+00
  %156 = fcmp ogt double %150, -1.000000e-03
  %157 = and i1 %155, %156
  %158 = select i1 %157, double -1.000000e-03, double %150
  br label %159

159:                                              ; preds = %100, %154
  %160 = phi double [ %158, %154 ], [ 1.000000e-03, %100 ]
  %161 = fneg double %149
  %162 = fdiv double %161, %160
  %163 = fmul double %110, %162
  %164 = fneg double %138
  %165 = tail call double @llvm.fmuladd.f64(double %164, double %112, double %117)
  %166 = fmul double %165, %163
  %167 = fmul double %115, %162
  %168 = tail call double @llvm.fmuladd.f64(double %164, double %117, double %112)
  %169 = fmul double %168, %167
  %170 = tail call double @llvm.fmuladd.f64(double %164, double %122, double %121)
  %171 = fmul double %170, %163
  %172 = tail call double @llvm.fmuladd.f64(double %164, double %121, double %122)
  %173 = fmul double %172, %167
  %174 = tail call double @llvm.fmuladd.f64(double %164, double %114, double %120)
  %175 = fmul double %174, %163
  %176 = tail call double @llvm.fmuladd.f64(double %164, double %120, double %114)
  %177 = fmul double %176, %167
  %178 = getelementptr inbounds double, ptr %8, i64 %36
  %179 = load double, ptr %178, align 8, !tbaa !12
  %180 = fadd double %179, %166
  store double %180, ptr %178, align 8, !tbaa !12
  %181 = getelementptr inbounds double, ptr %8, i64 %58
  %182 = load double, ptr %181, align 8, !tbaa !12
  %183 = fadd double %182, %169
  store double %183, ptr %181, align 8, !tbaa !12
  %184 = fadd double %166, %169
  %185 = getelementptr inbounds double, ptr %8, i64 %39
  %186 = load double, ptr %185, align 8, !tbaa !12
  %187 = fsub double %186, %184
  store double %187, ptr %185, align 8, !tbaa !12
  %188 = getelementptr inbounds double, ptr %8, i64 %43
  %189 = load double, ptr %188, align 8, !tbaa !12
  %190 = fadd double %171, %189
  store double %190, ptr %188, align 8, !tbaa !12
  %191 = getelementptr inbounds double, ptr %8, i64 %62
  %192 = load double, ptr %191, align 8, !tbaa !12
  %193 = fadd double %173, %192
  store double %193, ptr %191, align 8, !tbaa !12
  %194 = fadd double %171, %173
  %195 = getelementptr inbounds double, ptr %8, i64 %47
  %196 = load double, ptr %195, align 8, !tbaa !12
  %197 = fsub double %196, %194
  store double %197, ptr %195, align 8, !tbaa !12
  %198 = getelementptr inbounds double, ptr %8, i64 %51
  %199 = load double, ptr %198, align 8, !tbaa !12
  %200 = fadd double %175, %199
  store double %200, ptr %198, align 8, !tbaa !12
  %201 = getelementptr inbounds double, ptr %8, i64 %66
  %202 = load double, ptr %201, align 8, !tbaa !12
  %203 = fadd double %177, %202
  store double %203, ptr %201, align 8, !tbaa !12
  %204 = fadd double %175, %177
  %205 = getelementptr inbounds double, ptr %8, i64 %55
  %206 = load double, ptr %205, align 8, !tbaa !12
  %207 = fsub double %206, %204
  store double %207, ptr %205, align 8, !tbaa !12
  %208 = load i1, ptr @dim, align 4
  br i1 %208, label %209, label %226

209:                                              ; preds = %159
  %210 = extractelement <2 x double> %134, i64 0
  %211 = extractelement <2 x double> %134, i64 1
  %212 = tail call double @llvm.fmuladd.f64(double %164, double %211, double %210)
  %213 = fmul double %212, %163
  %214 = tail call double @llvm.fmuladd.f64(double %164, double %210, double %211)
  %215 = fmul double %214, %167
  %216 = getelementptr double, ptr %178, i64 3
  %217 = load double, ptr %216, align 8, !tbaa !12
  %218 = fadd double %213, %217
  store double %218, ptr %216, align 8, !tbaa !12
  %219 = getelementptr double, ptr %181, i64 3
  %220 = load double, ptr %219, align 8, !tbaa !12
  %221 = fadd double %215, %220
  store double %221, ptr %219, align 8, !tbaa !12
  %222 = fadd double %213, %215
  %223 = getelementptr double, ptr %185, i64 3
  %224 = load double, ptr %223, align 8, !tbaa !12
  %225 = fsub double %224, %222
  store double %225, ptr %223, align 8, !tbaa !12
  br label %226

226:                                              ; preds = %159, %209
  %227 = add nuw nsw i64 %16, 1
  %228 = icmp eq i64 %227, %12
  br i1 %228, label %229, label %14, !llvm.loop !115

229:                                              ; preds = %226, %9
  %230 = phi double [ 0.000000e+00, %9 ], [ %148, %226 ]
  ret double %230
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @ephi(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef readonly %9, ptr nocapture noundef %10) unnamed_addr #2 {
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %572

13:                                               ; preds = %11
  %14 = zext nneg i32 %0 to i64
  %15 = load i1, ptr @dim, align 4
  br label %16

16:                                               ; preds = %13, %569
  %17 = phi i1 [ %15, %13 ], [ %544, %569 ]
  %18 = phi i64 [ 0, %13 ], [ %570, %569 ]
  %19 = phi double [ undef, %13 ], [ %150, %569 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %514, %569 ]
  %21 = phi <4 x double> [ zeroinitializer, %13 ], [ %336, %569 ]
  %22 = phi <2 x double> [ undef, %13 ], [ %153, %569 ]
  %23 = select i1 %17, i32 4, i32 3
  %24 = getelementptr inbounds i32, ptr %1, i64 %18
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = mul nsw i32 %23, %25
  %27 = sdiv i32 %26, 3
  %28 = getelementptr inbounds i32, ptr %2, i64 %18
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = mul nsw i32 %29, %23
  %31 = sdiv i32 %30, 3
  %32 = getelementptr inbounds i32, ptr %3, i64 %18
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = mul nsw i32 %34, %23
  %36 = udiv i32 %35, 3
  %37 = getelementptr inbounds i32, ptr %4, i64 %18
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = mul nsw i32 %39, %23
  %41 = udiv i32 %40, 3
  %42 = getelementptr inbounds i32, ptr %5, i64 %18
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = add nsw i32 %43, -1
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds double, ptr %9, i64 %45
  %47 = sext i32 %27 to i64
  %48 = getelementptr inbounds double, ptr %9, i64 %47
  %49 = add nsw i32 %31, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %9, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !12
  %53 = add nsw i32 %27, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %9, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !12
  %57 = zext nneg i32 %36 to i64
  %58 = getelementptr inbounds double, ptr %9, i64 %57
  %59 = add nuw nsw i32 %36, 2
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %9, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !12
  %63 = insertelement <2 x double> poison, double %52, i64 0
  %64 = insertelement <2 x double> %63, double %62, i64 1
  %65 = insertelement <2 x double> poison, double %56, i64 0
  %66 = insertelement <2 x double> %65, double %52, i64 1
  %67 = fsub <2 x double> %64, %66
  %68 = zext nneg i32 %41 to i64
  %69 = getelementptr inbounds double, ptr %9, i64 %68
  %70 = load <2 x double>, ptr %46, align 8, !tbaa !12
  %71 = load <2 x double>, ptr %48, align 8, !tbaa !12
  %72 = fsub <2 x double> %70, %71
  %73 = load <2 x double>, ptr %58, align 8, !tbaa !12
  %74 = fsub <2 x double> %73, %70
  %75 = load <2 x double>, ptr %69, align 8, !tbaa !12
  %76 = fsub <2 x double> %75, %73
  %77 = add nuw nsw i32 %41, 2
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %9, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !12
  %81 = fsub double %80, %62
  br i1 %17, label %82, label %127

82:                                               ; preds = %16
  %83 = getelementptr double, ptr %46, i64 3
  %84 = load double, ptr %83, align 8, !tbaa !12
  %85 = getelementptr double, ptr %48, i64 3
  %86 = load double, ptr %85, align 8, !tbaa !12
  %87 = getelementptr double, ptr %58, i64 3
  %88 = load double, ptr %87, align 8, !tbaa !12
  %89 = getelementptr double, ptr %69, i64 3
  %90 = load double, ptr %89, align 8, !tbaa !12
  %91 = fsub double %90, %88
  %92 = insertelement <2 x double> poison, double %84, i64 0
  %93 = insertelement <2 x double> %92, double %88, i64 1
  %94 = insertelement <2 x double> poison, double %86, i64 0
  %95 = insertelement <2 x double> %94, double %84, i64 1
  %96 = fsub <2 x double> %93, %95
  %97 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %98 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 1, i32 3>
  %99 = fmul <2 x double> %97, %98
  %100 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 0, i32 2>
  %101 = shufflevector <2 x double> %74, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %101, <2 x double> %99)
  %103 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %104 = insertelement <2 x double> %103, double %81, i64 1
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %104, <2 x double> %102)
  %106 = shufflevector <2 x double> %96, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %107 = insertelement <2 x double> %106, double %91, i64 1
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %107, <2 x double> %105)
  %109 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 1, i32 3>
  %110 = fmul <2 x double> %109, %109
  %111 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %100, <2 x double> %110)
  %112 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %67, <2 x double> %111)
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %96, <2 x double> %112)
  %114 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %115 = fmul <2 x double> %114, %98
  %116 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %117 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %117, <2 x double> %115)
  %119 = insertelement <2 x double> %67, double %81, i64 1
  %120 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %121 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %119, <2 x double> %120, <2 x double> %118)
  %122 = insertelement <2 x double> %96, double %91, i64 1
  %123 = shufflevector <2 x double> %122, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %122, <2 x double> %123, <2 x double> %121)
  %125 = shufflevector <2 x double> %107, <2 x double> %96, <2 x i32> <i32 1, i32 2>
  %126 = extractelement <2 x double> %96, i64 1
  br label %149

127:                                              ; preds = %16
  %128 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %129 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 1, i32 3>
  %130 = fmul <2 x double> %128, %129
  %131 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 0, i32 2>
  %132 = shufflevector <2 x double> %74, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %133 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %131, <2 x double> %132, <2 x double> %130)
  %134 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %135 = insertelement <2 x double> %134, double %81, i64 1
  %136 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %135, <2 x double> %133)
  %137 = shufflevector <2 x double> %72, <2 x double> %74, <2 x i32> <i32 1, i32 3>
  %138 = fmul <2 x double> %137, %137
  %139 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %131, <2 x double> %131, <2 x double> %138)
  %140 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %67, <2 x double> %139)
  %141 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %142 = fmul <2 x double> %141, %129
  %143 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 0, i32 2>
  %144 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %145 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %143, <2 x double> %144, <2 x double> %142)
  %146 = insertelement <2 x double> %67, double %81, i64 1
  %147 = shufflevector <2 x double> %146, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %148 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %146, <2 x double> %147, <2 x double> %145)
  br label %149

149:                                              ; preds = %127, %82
  %150 = phi double [ %126, %82 ], [ %19, %127 ]
  %151 = phi <2 x double> [ %113, %82 ], [ %140, %127 ]
  %152 = phi <2 x double> [ %108, %82 ], [ %136, %127 ]
  %153 = phi <2 x double> [ %125, %82 ], [ %22, %127 ]
  %154 = phi <2 x double> [ %124, %82 ], [ %148, %127 ]
  %155 = fneg <2 x double> %152
  %156 = extractelement <2 x double> %154, i64 0
  %157 = fneg double %156
  %158 = extractelement <2 x double> %151, i64 1
  %159 = fmul double %158, %157
  %160 = extractelement <2 x double> %152, i64 0
  %161 = extractelement <2 x double> %152, i64 1
  %162 = tail call double @llvm.fmuladd.f64(double %160, double %161, double %159)
  %163 = fmul double %81, %158
  %164 = extractelement <2 x double> %67, i64 1
  %165 = extractelement <2 x double> %155, i64 1
  %166 = tail call double @llvm.fmuladd.f64(double %165, double %164, double %163)
  %167 = fmul double %156, -2.000000e+00
  %168 = extractelement <2 x double> %67, i64 0
  %169 = fmul double %168, %161
  %170 = tail call double @llvm.fmuladd.f64(double %160, double %81, double %169)
  %171 = tail call double @llvm.fmuladd.f64(double %167, double %164, double %170)
  %172 = fneg double %158
  %173 = fmul double %168, %172
  %174 = tail call double @llvm.fmuladd.f64(double %160, double %164, double %173)
  %175 = extractelement <2 x double> %154, i64 1
  %176 = fneg double %175
  %177 = fmul double %81, %161
  %178 = tail call double @llvm.fmuladd.f64(double %176, double %164, double %177)
  %179 = fmul double %164, %165
  %180 = tail call double @llvm.fmuladd.f64(double %158, double %81, double %179)
  %181 = fmul <2 x double> %152, %155
  %182 = shufflevector <2 x double> %151, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %183 = shufflevector <2 x double> %182, <2 x double> %154, <2 x i32> <i32 0, i32 3>
  %184 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %151, <2 x double> %183, <2 x double> %181)
  %185 = extractelement <2 x double> %184, i64 0
  %186 = extractelement <2 x double> %184, i64 1
  %187 = fmul double %186, %185
  %188 = tail call double @sqrt(double noundef %187) #29
  %189 = fdiv double 1.000000e+00, %188
  %190 = fmul double %162, %189
  %191 = fmul double %190, 5.000000e-01
  %192 = fmul double %189, %191
  %193 = fmul <2 x double> %184, <double 2.000000e+00, double -2.000000e+00>
  %194 = extractelement <2 x double> %193, i64 0
  %195 = fmul double %178, %194
  %196 = fmul double %180, %194
  %197 = extractelement <2 x double> %155, i64 0
  %198 = fmul double %164, %197
  %199 = tail call double @llvm.fmuladd.f64(double %158, double %168, double %198)
  %200 = extractelement <2 x double> %193, i64 1
  %201 = fmul double %199, %200
  %202 = fmul double %186, 2.000000e+00
  %203 = fmul <2 x double> %67, %155
  %204 = extractelement <2 x double> %203, i64 0
  %205 = extractelement <2 x double> %151, i64 0
  %206 = tail call double @llvm.fmuladd.f64(double %205, double %164, double %204)
  %207 = fmul double %202, %206
  %208 = fneg double %201
  %209 = tail call double @llvm.fmuladd.f64(double %208, double %192, double %166)
  %210 = fmul double %189, %209
  %211 = fneg double %166
  %212 = fsub double %211, %171
  %213 = fsub double %195, %201
  %214 = fsub double %213, %207
  %215 = fneg double %214
  %216 = tail call double @llvm.fmuladd.f64(double %215, double %192, double %212)
  %217 = fmul double %189, %216
  %218 = fsub double %171, %174
  %219 = fneg double %195
  %220 = fsub double %219, %196
  %221 = fadd double %207, %220
  %222 = fneg double %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %192, double %218)
  %224 = fmul double %189, %223
  %225 = insertelement <2 x double> poison, double %172, i64 0
  %226 = shufflevector <2 x double> %225, <2 x double> poison, <2 x i32> zeroinitializer
  %227 = fmul <2 x double> %72, %226
  %228 = shufflevector <2 x double> %152, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %74, <2 x double> %227)
  %230 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %231 = fmul <2 x double> %74, %230
  %232 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %76, <2 x double> %231)
  %233 = shufflevector <2 x double> %193, <2 x double> poison, <2 x i32> zeroinitializer
  %234 = fmul <2 x double> %232, %233
  %235 = shufflevector <2 x double> %152, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %236 = fmul <2 x double> %72, %235
  %237 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %76, <2 x double> %236)
  %238 = insertelement <2 x double> poison, double %167, i64 0
  %239 = shufflevector <2 x double> %238, <2 x double> poison, <2 x i32> zeroinitializer
  %240 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %239, <2 x double> %74, <2 x double> %237)
  %241 = fmul <2 x double> %76, %235
  %242 = insertelement <2 x double> poison, double %176, i64 0
  %243 = shufflevector <2 x double> %242, <2 x double> poison, <2 x i32> zeroinitializer
  %244 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %243, <2 x double> %74, <2 x double> %241)
  %245 = fmul <2 x double> %244, %233
  %246 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer
  %247 = fmul <2 x double> %72, %246
  %248 = shufflevector <2 x double> %151, <2 x double> poison, <2 x i32> zeroinitializer
  %249 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %248, <2 x double> %74, <2 x double> %247)
  %250 = insertelement <2 x double> poison, double %202, i64 0
  %251 = shufflevector <2 x double> %250, <2 x double> poison, <2 x i32> zeroinitializer
  %252 = fmul <2 x double> %251, %249
  %253 = fmul <2 x double> %76, %182
  %254 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %230, <2 x double> %74, <2 x double> %253)
  %255 = fmul <2 x double> %74, %246
  %256 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %72, <2 x double> %255)
  %257 = shufflevector <2 x double> %193, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %258 = fmul <2 x double> %256, %257
  %259 = fneg <2 x double> %258
  %260 = insertelement <2 x double> poison, double %192, i64 0
  %261 = shufflevector <2 x double> %260, <2 x double> poison, <2 x i32> zeroinitializer
  %262 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %259, <2 x double> %261, <2 x double> %254)
  %263 = insertelement <2 x double> poison, double %189, i64 0
  %264 = shufflevector <2 x double> %263, <2 x double> poison, <2 x i32> zeroinitializer
  %265 = fmul <2 x double> %264, %262
  %266 = fneg <2 x double> %254
  %267 = fsub <2 x double> %266, %240
  %268 = fsub <2 x double> %245, %258
  %269 = fsub <2 x double> %268, %252
  %270 = fneg <2 x double> %269
  %271 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %270, <2 x double> %261, <2 x double> %267)
  %272 = fmul <2 x double> %264, %271
  %273 = fneg <2 x double> %245
  %274 = fsub <2 x double> %240, %229
  %275 = fsub <2 x double> %273, %234
  %276 = fadd <2 x double> %252, %275
  %277 = fneg <2 x double> %276
  %278 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %277, <2 x double> %261, <2 x double> %274)
  %279 = fmul <2 x double> %264, %278
  %280 = fneg <2 x double> %234
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %280, <2 x double> %261, <2 x double> %229)
  %282 = fmul <2 x double> %264, %281
  %283 = fneg double %196
  %284 = tail call double @llvm.fmuladd.f64(double %283, double %192, double %174)
  %285 = fmul double %189, %284
  %286 = load i1, ptr @dim, align 4
  br i1 %286, label %287, label %335

287:                                              ; preds = %149
  %288 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %289 = extractelement <2 x double> %153, i64 0
  %290 = fmul double %158, %289
  %291 = tail call double @llvm.fmuladd.f64(double %165, double %150, double %290)
  %292 = extractelement <2 x double> %153, i64 1
  %293 = fmul double %161, %292
  %294 = tail call double @llvm.fmuladd.f64(double %160, double %289, double %293)
  %295 = tail call double @llvm.fmuladd.f64(double %167, double %150, double %294)
  %296 = fmul double %292, %172
  %297 = tail call double @llvm.fmuladd.f64(double %160, double %150, double %296)
  %298 = fmul double %161, %289
  %299 = tail call double @llvm.fmuladd.f64(double %176, double %150, double %298)
  %300 = fmul double %194, %299
  %301 = insertelement <2 x double> poison, double %150, i64 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  %303 = fmul <2 x double> %302, %288
  %304 = fmul double %292, %197
  %305 = tail call double @llvm.fmuladd.f64(double %205, double %150, double %304)
  %306 = fmul double %202, %305
  %307 = fneg double %291
  %308 = fsub double %307, %295
  %309 = fsub double %295, %297
  %310 = fneg double %300
  %311 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %153, <2 x double> %303)
  %312 = fmul <2 x double> %193, %311
  %313 = insertelement <2 x double> poison, double %310, i64 0
  %314 = insertelement <2 x double> %313, double %300, i64 1
  %315 = fsub <2 x double> %314, %312
  %316 = insertelement <2 x double> poison, double %306, i64 0
  %317 = shufflevector <2 x double> %316, <2 x double> poison, <2 x i32> zeroinitializer
  %318 = fadd <2 x double> %315, %317
  %319 = fsub <2 x double> %315, %317
  %320 = shufflevector <2 x double> %318, <2 x double> %319, <2 x i32> <i32 0, i32 3>
  %321 = shufflevector <2 x double> %312, <2 x double> %320, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %322 = shufflevector <2 x double> %312, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %323 = shufflevector <4 x double> %321, <4 x double> %322, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %324 = fneg <4 x double> %323
  %325 = insertelement <4 x double> poison, double %192, i64 0
  %326 = shufflevector <4 x double> %325, <4 x double> poison, <4 x i32> zeroinitializer
  %327 = insertelement <4 x double> poison, double %297, i64 0
  %328 = insertelement <4 x double> %327, double %309, i64 1
  %329 = insertelement <4 x double> %328, double %308, i64 2
  %330 = insertelement <4 x double> %329, double %291, i64 3
  %331 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %324, <4 x double> %326, <4 x double> %330)
  %332 = insertelement <4 x double> poison, double %189, i64 0
  %333 = shufflevector <4 x double> %332, <4 x double> poison, <4 x i32> zeroinitializer
  %334 = fmul <4 x double> %333, %331
  br label %335

335:                                              ; preds = %287, %149
  %336 = phi <4 x double> [ %334, %287 ], [ %21, %149 ]
  %337 = load ptr, ptr @prm, align 8, !tbaa !9
  %338 = getelementptr inbounds %struct.parm, ptr %337, i64 0, i32 12
  %339 = load i32, ptr %338, align 8, !tbaa !116
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %443, label %341

341:                                              ; preds = %335
  %342 = load i32, ptr %32, align 4, !tbaa !5
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %443

344:                                              ; preds = %341
  %345 = fcmp ogt double %190, 1.000000e+00
  %346 = select i1 %345, double 1.000000e+00, double %190
  %347 = fcmp olt double %346, -1.000000e+00
  %348 = select i1 %347, double -1.000000e+00, double %346
  %349 = tail call double @acos(double noundef %348) #29
  %350 = fneg double %168
  %351 = extractelement <2 x double> %74, i64 1
  %352 = fmul double %351, %350
  %353 = extractelement <2 x double> %72, i64 1
  %354 = tail call double @llvm.fmuladd.f64(double %353, double %164, double %352)
  %355 = extractelement <2 x double> %72, i64 0
  %356 = fneg double %355
  %357 = fmul double %164, %356
  %358 = extractelement <2 x double> %74, i64 0
  %359 = tail call double @llvm.fmuladd.f64(double %168, double %358, double %357)
  %360 = fneg double %353
  %361 = fmul double %358, %360
  %362 = tail call double @llvm.fmuladd.f64(double %355, double %351, double %361)
  %363 = fneg double %164
  %364 = extractelement <2 x double> %76, i64 1
  %365 = fmul double %364, %363
  %366 = tail call double @llvm.fmuladd.f64(double %351, double %81, double %365)
  %367 = fneg double %358
  %368 = fmul double %81, %367
  %369 = extractelement <2 x double> %76, i64 0
  %370 = tail call double @llvm.fmuladd.f64(double %164, double %369, double %368)
  %371 = fneg double %351
  %372 = fmul double %369, %371
  %373 = tail call double @llvm.fmuladd.f64(double %358, double %364, double %372)
  %374 = fneg double %362
  %375 = fmul double %370, %374
  %376 = tail call double @llvm.fmuladd.f64(double %359, double %373, double %375)
  %377 = fneg double %354
  %378 = fmul double %373, %377
  %379 = tail call double @llvm.fmuladd.f64(double %362, double %366, double %378)
  %380 = fneg double %359
  %381 = fmul double %366, %380
  %382 = tail call double @llvm.fmuladd.f64(double %354, double %370, double %381)
  %383 = fmul double %351, %379
  %384 = tail call double @llvm.fmuladd.f64(double %376, double %358, double %383)
  %385 = tail call double @llvm.fmuladd.f64(double %382, double %164, double %384)
  %386 = fcmp olt double %385, 0.000000e+00
  %387 = fneg double %349
  %388 = select i1 %386, double %387, double %349
  %389 = sext i32 %44 to i64
  %390 = getelementptr inbounds double, ptr %8, i64 %389
  %391 = load double, ptr %390, align 8, !tbaa !12
  %392 = fsub double %388, %391
  %393 = fcmp ogt double %392, 0x400921FB5A7ED197
  %394 = select i1 %393, double 0x400921FB5A7ED197, double %392
  %395 = fcmp olt double %394, 0xC00921FB5A7ED197
  %396 = select i1 %395, double 0xC00921FB5A7ED197, double %394
  %397 = getelementptr inbounds double, ptr %6, i64 %389
  %398 = load double, ptr %397, align 8, !tbaa !12
  %399 = fmul double %398, %396
  %400 = fmul double %396, %399
  %401 = fadd double %20, %400
  %402 = tail call double @sin(double noundef %388) #29
  %403 = tail call double @llvm.fabs.f64(double %402)
  %404 = fcmp ogt double %403, 1.000000e-03
  br i1 %404, label %405, label %408

405:                                              ; preds = %344
  %406 = fmul double %399, -2.000000e+00
  %407 = fdiv double %406, %402
  br label %513

408:                                              ; preds = %344
  %409 = tail call double @llvm.fabs.f64(double %396)
  %410 = fcmp olt double %409, 1.000000e-01
  br i1 %410, label %411, label %431

411:                                              ; preds = %408
  %412 = load double, ptr %390, align 8, !tbaa !12
  %413 = fcmp oeq double %412, 0.000000e+00
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  %415 = load double, ptr %397, align 8, !tbaa !12
  %416 = fmul double %415, -2.000000e+00
  %417 = fmul double %388, %388
  %418 = fdiv double %417, 6.000000e+00
  %419 = fadd double %418, 1.000000e+00
  %420 = fmul double %419, %416
  br label %513

421:                                              ; preds = %411
  %422 = tail call double @llvm.fabs.f64(double %412)
  %423 = fcmp oeq double %422, 0x400921FB5A7ED197
  br i1 %423, label %424, label %513

424:                                              ; preds = %421
  %425 = load double, ptr %397, align 8, !tbaa !12
  %426 = fmul double %425, 2.000000e+00
  %427 = fmul double %396, %396
  %428 = fdiv double %427, 6.000000e+00
  %429 = fadd double %428, 1.000000e+00
  %430 = fmul double %429, %426
  br label %513

431:                                              ; preds = %408
  %432 = fcmp ogt double %388, 0.000000e+00
  %433 = fcmp olt double %388, 0x3FF921FB5A7ED197
  %434 = and i1 %432, %433
  br i1 %434, label %439, label %435

435:                                              ; preds = %431
  %436 = fcmp olt double %388, 0.000000e+00
  %437 = fcmp ogt double %388, 0xBFF921FB5A7ED197
  %438 = and i1 %436, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %435, %431
  %440 = fmul double %399, 1.000000e+03
  br label %513

441:                                              ; preds = %435
  %442 = fmul double %399, -1.000000e+03
  br label %513

443:                                              ; preds = %335, %341, %567
  %444 = phi double [ %514, %567 ], [ %20, %341 ], [ %20, %335 ]
  %445 = phi i32 [ %568, %567 ], [ %44, %341 ], [ %44, %335 ]
  %446 = phi double [ %517, %567 ], [ %190, %341 ], [ %190, %335 ]
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds double, ptr %8, i64 %447
  %449 = load double, ptr %448, align 8, !tbaa !12
  %450 = fadd double %449, -3.142000e+00
  %451 = tail call double @llvm.fabs.f64(double %450)
  %452 = fcmp olt double %451, 1.000000e-02
  %453 = select i1 %452, double -1.000000e+00, double 1.000000e+00
  %454 = getelementptr inbounds double, ptr %6, i64 %447
  %455 = load double, ptr %454, align 8, !tbaa !12
  %456 = getelementptr inbounds double, ptr %7, i64 %447
  %457 = load double, ptr %456, align 8, !tbaa !12
  %458 = tail call double @llvm.fabs.f64(double %457)
  %459 = fptosi double %458 to i32
  switch i32 %459, label %505 [
    i32 1, label %460
    i32 2, label %463
    i32 3, label %470
    i32 4, label %478
    i32 6, label %488
  ]

460:                                              ; preds = %443
  %461 = tail call double @llvm.fmuladd.f64(double %453, double %446, double 1.000000e+00)
  %462 = fmul double %455, %453
  br label %508

463:                                              ; preds = %443
  %464 = fmul double %446, 2.000000e+00
  %465 = tail call double @llvm.fmuladd.f64(double %464, double %446, double -1.000000e+00)
  %466 = tail call double @llvm.fmuladd.f64(double %453, double %465, double 1.000000e+00)
  %467 = fmul double %455, %453
  %468 = fmul double %467, 4.000000e+00
  %469 = fmul double %446, %468
  br label %508

470:                                              ; preds = %443
  %471 = fmul double %446, %446
  %472 = fmul double %446, %453
  %473 = tail call double @llvm.fmuladd.f64(double %471, double 4.000000e+00, double -3.000000e+00)
  %474 = tail call double @llvm.fmuladd.f64(double %472, double %473, double 1.000000e+00)
  %475 = fmul double %455, %453
  %476 = tail call double @llvm.fmuladd.f64(double %471, double 1.200000e+01, double -3.000000e+00)
  %477 = fmul double %476, %475
  br label %508

478:                                              ; preds = %443
  %479 = fmul double %446, %446
  %480 = fmul double %479, 8.000000e+00
  %481 = fadd double %479, -1.000000e+00
  %482 = tail call double @llvm.fmuladd.f64(double %480, double %481, double 1.000000e+00)
  %483 = tail call double @llvm.fmuladd.f64(double %453, double %482, double 1.000000e+00)
  %484 = fmul double %455, %453
  %485 = fmul double %446, %484
  %486 = tail call double @llvm.fmuladd.f64(double %479, double 3.200000e+01, double -1.600000e+01)
  %487 = fmul double %486, %485
  br label %508

488:                                              ; preds = %443
  %489 = fmul double %446, %446
  %490 = fmul double %489, 3.200000e+01
  %491 = fmul double %489, %490
  %492 = fmul double %489, -4.800000e+01
  %493 = fmul double %489, %492
  %494 = tail call double @llvm.fmuladd.f64(double %491, double %489, double %493)
  %495 = tail call double @llvm.fmuladd.f64(double %489, double 1.800000e+01, double %494)
  %496 = fadd double %495, -1.000000e+00
  %497 = tail call double @llvm.fmuladd.f64(double %453, double %496, double 1.000000e+00)
  %498 = fmul double %455, %453
  %499 = fmul double %446, %498
  %500 = fmul double %489, 1.920000e+02
  %501 = fneg double %500
  %502 = tail call double @llvm.fmuladd.f64(double %500, double %489, double %501)
  %503 = fadd double %502, 3.600000e+01
  %504 = fmul double %503, %499
  br label %508

505:                                              ; preds = %443
  %506 = load ptr, ptr @stderr, align 8, !tbaa !9
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %506, ptr noundef nonnull @.str.84, i32 noundef %27, i32 noundef %31, i32 noundef %36, i32 noundef %41, double noundef %457) #28
  tail call void @exit(i32 noundef 1) #24
  unreachable

508:                                              ; preds = %488, %478, %470, %463, %460
  %509 = phi double [ %504, %488 ], [ %487, %478 ], [ %477, %470 ], [ %469, %463 ], [ %462, %460 ]
  %510 = phi double [ %497, %488 ], [ %483, %478 ], [ %474, %470 ], [ %466, %463 ], [ %461, %460 ]
  %511 = fmul double %455, %510
  %512 = fadd double %444, %511
  br label %513

513:                                              ; preds = %405, %439, %441, %414, %424, %421, %508
  %514 = phi double [ %512, %508 ], [ %401, %421 ], [ %401, %424 ], [ %401, %414 ], [ %401, %441 ], [ %401, %439 ], [ %401, %405 ]
  %515 = phi i32 [ %445, %508 ], [ %44, %421 ], [ %44, %424 ], [ %44, %414 ], [ %44, %441 ], [ %44, %439 ], [ %44, %405 ]
  %516 = phi double [ %509, %508 ], [ %399, %421 ], [ %430, %424 ], [ %420, %414 ], [ %442, %441 ], [ %440, %439 ], [ %407, %405 ]
  %517 = phi double [ %446, %508 ], [ %348, %421 ], [ %348, %424 ], [ %348, %414 ], [ %348, %441 ], [ %348, %439 ], [ %348, %405 ]
  %518 = getelementptr inbounds double, ptr %10, i64 %47
  %519 = load <2 x double>, ptr %518, align 8, !tbaa !12
  %520 = insertelement <2 x double> poison, double %516, i64 0
  %521 = shufflevector <2 x double> %520, <2 x double> poison, <2 x i32> zeroinitializer
  %522 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %265, <2 x double> %519)
  store <2 x double> %522, ptr %518, align 8, !tbaa !12
  %523 = getelementptr inbounds double, ptr %10, i64 %54
  %524 = load double, ptr %523, align 8, !tbaa !12
  %525 = tail call double @llvm.fmuladd.f64(double %516, double %210, double %524)
  store double %525, ptr %523, align 8, !tbaa !12
  %526 = getelementptr inbounds double, ptr %10, i64 %45
  %527 = load <2 x double>, ptr %526, align 8, !tbaa !12
  %528 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %272, <2 x double> %527)
  store <2 x double> %528, ptr %526, align 8, !tbaa !12
  %529 = getelementptr inbounds double, ptr %10, i64 %50
  %530 = load double, ptr %529, align 8, !tbaa !12
  %531 = tail call double @llvm.fmuladd.f64(double %516, double %217, double %530)
  store double %531, ptr %529, align 8, !tbaa !12
  %532 = getelementptr inbounds double, ptr %10, i64 %57
  %533 = load <2 x double>, ptr %532, align 8, !tbaa !12
  %534 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %279, <2 x double> %533)
  store <2 x double> %534, ptr %532, align 8, !tbaa !12
  %535 = getelementptr inbounds double, ptr %10, i64 %60
  %536 = load double, ptr %535, align 8, !tbaa !12
  %537 = tail call double @llvm.fmuladd.f64(double %516, double %224, double %536)
  store double %537, ptr %535, align 8, !tbaa !12
  %538 = getelementptr inbounds double, ptr %10, i64 %68
  %539 = load <2 x double>, ptr %538, align 8, !tbaa !12
  %540 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %282, <2 x double> %539)
  store <2 x double> %540, ptr %538, align 8, !tbaa !12
  %541 = getelementptr inbounds double, ptr %10, i64 %78
  %542 = load double, ptr %541, align 8, !tbaa !12
  %543 = tail call double @llvm.fmuladd.f64(double %516, double %285, double %542)
  store double %543, ptr %541, align 8, !tbaa !12
  %544 = load i1, ptr @dim, align 4
  br i1 %544, label %545, label %562

545:                                              ; preds = %513
  %546 = getelementptr double, ptr %518, i64 3
  %547 = load double, ptr %546, align 8, !tbaa !12
  %548 = extractelement <4 x double> %336, i64 3
  %549 = tail call double @llvm.fmuladd.f64(double %516, double %548, double %547)
  store double %549, ptr %546, align 8, !tbaa !12
  %550 = getelementptr double, ptr %526, i64 3
  %551 = load double, ptr %550, align 8, !tbaa !12
  %552 = extractelement <4 x double> %336, i64 2
  %553 = tail call double @llvm.fmuladd.f64(double %516, double %552, double %551)
  store double %553, ptr %550, align 8, !tbaa !12
  %554 = getelementptr double, ptr %532, i64 3
  %555 = load double, ptr %554, align 8, !tbaa !12
  %556 = extractelement <4 x double> %336, i64 1
  %557 = tail call double @llvm.fmuladd.f64(double %516, double %556, double %555)
  store double %557, ptr %554, align 8, !tbaa !12
  %558 = getelementptr double, ptr %538, i64 3
  %559 = load double, ptr %558, align 8, !tbaa !12
  %560 = extractelement <4 x double> %336, i64 0
  %561 = tail call double @llvm.fmuladd.f64(double %516, double %560, double %559)
  store double %561, ptr %558, align 8, !tbaa !12
  br label %562

562:                                              ; preds = %545, %513
  %563 = sext i32 %515 to i64
  %564 = getelementptr inbounds double, ptr %7, i64 %563
  %565 = load double, ptr %564, align 8, !tbaa !12
  %566 = fcmp olt double %565, 0.000000e+00
  br i1 %566, label %567, label %569

567:                                              ; preds = %562
  %568 = add nsw i32 %515, 1
  br label %443

569:                                              ; preds = %562
  %570 = add nuw nsw i64 %18, 1
  %571 = icmp eq i64 %570, %14
  br i1 %571, label %572, label %16, !llvm.loop !117

572:                                              ; preds = %569, %11
  %573 = phi double [ 0.000000e+00, %11 ], [ %514, %569 ]
  ret double %573
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nbond(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, double noundef %8, double noundef %9) unnamed_addr #2 {
  %11 = fdiv double 1.000000e+00, %8
  %12 = fdiv double 1.000000e+00, %9
  %13 = load ptr, ptr @prm, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = tail call ptr @ivector(i32 noundef -1, i32 noundef %15) #29
  %17 = load ptr, ptr @prm, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.parm, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !26
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %30, label %322

21:                                               ; preds = %30
  %22 = icmp sgt i32 %34, 1
  br i1 %22, label %23, label %322

23:                                               ; preds = %21
  %24 = getelementptr i32, ptr %16, i64 -1
  %25 = icmp eq i32 %3, 0
  %26 = getelementptr double, ptr %5, i64 3
  %27 = fcmp une double %8, 1.000000e+00
  %28 = insertelement <2 x double> <double 6.000000e+00, double poison>, double %11, i64 1
  %29 = insertelement <2 x double> <double 1.000000e+01, double poison>, double %11, i64 1
  br label %37

30:                                               ; preds = %10, %30
  %31 = phi i64 [ %33, %30 ], [ -1, %10 ]
  %32 = getelementptr inbounds i32, ptr %16, i64 %31
  store i32 -1, ptr %32, align 4, !tbaa !5
  %33 = add nsw i64 %31, 1
  %34 = load i32, ptr %18, align 8, !tbaa !26
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %30, label %21, !llvm.loop !118

37:                                               ; preds = %23, %309
  %38 = phi i64 [ 0, %23 ], [ %315, %309 ]
  %39 = phi ptr [ %17, %23 ], [ %316, %309 ]
  %40 = phi double [ undef, %23 ], [ %314, %309 ]
  %41 = phi double [ 0.000000e+00, %23 ], [ %313, %309 ]
  %42 = phi double [ 0.000000e+00, %23 ], [ %312, %309 ]
  %43 = phi double [ 0.000000e+00, %23 ], [ %311, %309 ]
  %44 = phi double [ 0.000000e+00, %23 ], [ %310, %309 ]
  %45 = getelementptr inbounds i32, ptr %1, i64 %38
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %309, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !104
  %51 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 59
  %52 = load ptr, ptr %51, align 8, !tbaa !105
  %53 = getelementptr inbounds i32, ptr %52, i64 %38
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = add nsw i32 %54, -1
  %56 = mul nsw i32 %55, %50
  %57 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 37
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = getelementptr inbounds double, ptr %58, i64 %38
  %60 = load double, ptr %59, align 8, !tbaa !12
  %61 = fmul double %12, %60
  %62 = load i1, ptr @dim, align 4
  %63 = select i1 %62, i32 4, i32 3
  %64 = trunc i64 %38 to i32
  %65 = mul nuw nsw i32 %63, %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %4, i64 %66
  %68 = load <2 x double>, ptr %67, align 8, !tbaa !12
  %69 = add nuw nsw i32 %65, 2
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds double, ptr %4, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !12
  br i1 %62, label %73, label %76

73:                                               ; preds = %48
  %74 = getelementptr double, ptr %67, i64 3
  %75 = load double, ptr %74, align 8, !tbaa !12
  br label %76

76:                                               ; preds = %73, %48
  %77 = phi double [ %75, %73 ], [ %43, %48 ]
  %78 = phi double [ 0.000000e+00, %73 ], [ %41, %48 ]
  %79 = getelementptr inbounds %struct.parm, ptr %39, i64 0, i32 60
  %80 = load ptr, ptr %79, align 8, !tbaa !40
  %81 = getelementptr inbounds i32, ptr %80, i64 %38
  %82 = load i32, ptr %81, align 4, !tbaa !5
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load ptr, ptr @IexclAt, align 8, !tbaa !9
  %86 = getelementptr inbounds ptr, ptr %85, i64 %38
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  br label %88

88:                                               ; preds = %84, %88
  %89 = phi i64 [ 0, %84 ], [ %94, %88 ]
  %90 = getelementptr inbounds i32, ptr %87, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !5
  %92 = sext i32 %91 to i64
  %93 = getelementptr i32, ptr %24, i64 %92
  store i32 %64, ptr %93, align 4, !tbaa !5
  %94 = add nuw nsw i64 %89, 1
  %95 = load i32, ptr %81, align 4, !tbaa !5
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %88, label %98, !llvm.loop !119

98:                                               ; preds = %88, %76
  br i1 %25, label %99, label %102

99:                                               ; preds = %98
  %100 = getelementptr inbounds i32, ptr %0, i64 %38
  %101 = load i32, ptr %100, align 4, !tbaa !5
  br label %102

102:                                              ; preds = %99, %98
  %103 = phi i32 [ %101, %99 ], [ 0, %98 ]
  %104 = getelementptr inbounds ptr, ptr %2, i64 %38
  %105 = sext i32 %103 to i64
  %106 = tail call i32 @llvm.smax.i32(i32 %46, i32 1)
  %107 = zext nneg i32 %106 to i64
  br label %108

108:                                              ; preds = %102, %287
  %109 = phi i1 [ %62, %102 ], [ %288, %287 ]
  %110 = phi i1 [ %62, %102 ], [ %289, %287 ]
  %111 = phi i64 [ 0, %102 ], [ %296, %287 ]
  %112 = phi double [ 0.000000e+00, %102 ], [ %294, %287 ]
  %113 = phi double [ %40, %102 ], [ %293, %287 ]
  %114 = phi double [ %78, %102 ], [ %292, %287 ]
  %115 = phi double [ %42, %102 ], [ %291, %287 ]
  %116 = phi double [ %44, %102 ], [ %290, %287 ]
  %117 = phi <2 x double> [ zeroinitializer, %102 ], [ %295, %287 ]
  %118 = load ptr, ptr %104, align 8, !tbaa !9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %108
  %121 = load ptr, ptr @nabout, align 8, !tbaa !9
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.85, i32 noundef 0) #25
  %123 = load ptr, ptr @nabout, align 8, !tbaa !9
  %124 = tail call i32 @fflush(ptr noundef %123) #25
  %125 = load ptr, ptr %104, align 8, !tbaa !9
  %126 = load i1, ptr @dim, align 4
  br label %127

127:                                              ; preds = %120, %108
  %128 = phi i1 [ %126, %120 ], [ %109, %108 ]
  %129 = phi i1 [ %126, %120 ], [ %110, %108 ]
  %130 = phi ptr [ %125, %120 ], [ %118, %108 ]
  %131 = add nsw i64 %111, %105
  %132 = getelementptr inbounds i32, ptr %130, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !5
  %134 = select i1 %129, i32 4, i32 3
  %135 = mul nsw i32 %134, %133
  br i1 %25, label %136, label %142

136:                                              ; preds = %127
  %137 = sext i32 %133 to i64
  %138 = getelementptr inbounds i32, ptr %16, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !5
  %140 = zext i32 %139 to i64
  %141 = icmp eq i64 %38, %140
  br i1 %141, label %287, label %142

142:                                              ; preds = %136, %127
  %143 = sext i32 %135 to i64
  %144 = getelementptr inbounds double, ptr %4, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !12
  %146 = add nsw i32 %135, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, ptr %4, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !12
  %150 = insertelement <2 x double> poison, double %145, i64 0
  %151 = insertelement <2 x double> %150, double %149, i64 1
  %152 = fsub <2 x double> %68, %151
  %153 = add nsw i32 %135, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %4, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !12
  %157 = fsub double %72, %156
  %158 = fmul <2 x double> %152, %152
  %159 = extractelement <2 x double> %158, i64 1
  %160 = extractelement <2 x double> %152, i64 0
  %161 = tail call double @llvm.fmuladd.f64(double %160, double %160, double %159)
  %162 = tail call double @llvm.fmuladd.f64(double %157, double %157, double %161)
  br i1 %129, label %163, label %168

163:                                              ; preds = %142
  %164 = getelementptr double, ptr %144, i64 3
  %165 = load double, ptr %164, align 8, !tbaa !12
  %166 = fsub double %77, %165
  %167 = tail call double @llvm.fmuladd.f64(double %166, double %166, double %162)
  br label %168

168:                                              ; preds = %163, %142
  %169 = phi double [ %166, %163 ], [ %113, %142 ]
  %170 = phi double [ %167, %163 ], [ %162, %142 ]
  %171 = fdiv double 1.000000e+00, %170
  %172 = tail call double @sqrt(double noundef %170) #29
  %173 = fmul double %172, %171
  %174 = load ptr, ptr @prm, align 8, !tbaa !9
  %175 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 37
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = sext i32 %133 to i64
  %178 = getelementptr inbounds double, ptr %176, i64 %177
  %179 = load double, ptr %178, align 8, !tbaa !12
  %180 = fmul double %61, %179
  %181 = fmul double %173, %180
  %182 = fneg double %181
  %183 = fadd double %116, %181
  %184 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 61
  %185 = load ptr, ptr %184, align 8, !tbaa !107
  %186 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 59
  %187 = load ptr, ptr %186, align 8, !tbaa !105
  %188 = getelementptr inbounds i32, ptr %187, i64 %177
  %189 = load i32, ptr %188, align 4, !tbaa !5
  %190 = add nsw i32 %189, %56
  %191 = sext i32 %190 to i64
  %192 = getelementptr i32, ptr %185, i64 %191
  %193 = getelementptr i32, ptr %192, i64 -1
  %194 = load i32, ptr %193, align 4, !tbaa !5
  %195 = icmp sgt i32 %194, 0
  %196 = or i1 %27, %195
  br i1 %196, label %197, label %231

197:                                              ; preds = %168
  br i1 %195, label %207, label %198

198:                                              ; preds = %197
  %199 = getelementptr inbounds i32, ptr %187, i64 %38
  %200 = load i32, ptr %199, align 4, !tbaa !5
  %201 = tail call i32 @llvm.smax.i32(i32 %200, i32 %189)
  %202 = tail call i32 @llvm.smin.i32(i32 %200, i32 %189)
  %203 = add nsw i32 %201, -1
  %204 = mul nsw i32 %203, %201
  %205 = sdiv i32 %204, 2
  %206 = add nsw i32 %205, %202
  br label %207

207:                                              ; preds = %197, %198
  %208 = phi i32 [ %206, %198 ], [ %194, %197 ]
  %209 = add nsw i32 %208, -1
  %210 = fmul double %171, %171
  %211 = fmul double %171, %210
  %212 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 48
  %213 = load ptr, ptr %212, align 8, !tbaa !108
  %214 = sext i32 %209 to i64
  %215 = getelementptr inbounds double, ptr %213, i64 %214
  %216 = load double, ptr %215, align 8, !tbaa !12
  %217 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 47
  %218 = load ptr, ptr %217, align 8, !tbaa !109
  %219 = getelementptr inbounds double, ptr %218, i64 %214
  %220 = load double, ptr %219, align 8, !tbaa !12
  %221 = fmul double %211, %220
  %222 = fmul double %211, %221
  %223 = fmul double %211, %216
  %224 = fsub double %222, %223
  %225 = fmul double %222, -1.200000e+01
  %226 = insertelement <2 x double> poison, double %223, i64 0
  %227 = insertelement <2 x double> %226, double %224, i64 1
  %228 = insertelement <2 x double> poison, double %225, i64 0
  %229 = insertelement <2 x double> %228, double %115, i64 1
  %230 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %227, <2 x double> %28, <2 x double> %229)
  br label %256

231:                                              ; preds = %168
  %232 = xor i32 %194, -1
  %233 = fmul double %171, %171
  %234 = fmul double %171, %233
  %235 = fmul double %171, %234
  %236 = fmul double %171, %235
  %237 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 50
  %238 = load ptr, ptr %237, align 8, !tbaa !120
  %239 = sext i32 %232 to i64
  %240 = getelementptr inbounds double, ptr %238, i64 %239
  %241 = load double, ptr %240, align 8, !tbaa !12
  %242 = getelementptr inbounds %struct.parm, ptr %174, i64 0, i32 49
  %243 = load ptr, ptr %242, align 8, !tbaa !121
  %244 = getelementptr inbounds double, ptr %243, i64 %239
  %245 = load double, ptr %244, align 8, !tbaa !12
  %246 = fmul double %236, %245
  %247 = fmul double %171, %246
  %248 = fmul double %236, %241
  %249 = fsub double %247, %248
  %250 = fmul double %247, -1.200000e+01
  %251 = insertelement <2 x double> poison, double %248, i64 0
  %252 = insertelement <2 x double> %251, double %249, i64 1
  %253 = insertelement <2 x double> poison, double %250, i64 0
  %254 = insertelement <2 x double> %253, double %115, i64 1
  %255 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %252, <2 x double> %29, <2 x double> %254)
  br label %256

256:                                              ; preds = %207, %231
  %257 = phi <2 x double> [ %230, %207 ], [ %255, %231 ]
  %258 = extractelement <2 x double> %257, i64 0
  %259 = tail call double @llvm.fmuladd.f64(double %258, double %11, double %182)
  %260 = fmul double %173, %259
  %261 = fmul double %173, %260
  %262 = insertelement <2 x double> poison, double %261, i64 0
  %263 = shufflevector <2 x double> %262, <2 x double> poison, <2 x i32> zeroinitializer
  %264 = fmul <2 x double> %152, %263
  %265 = fmul double %157, %261
  %266 = fadd <2 x double> %117, %264
  %267 = fadd double %112, %265
  %268 = getelementptr inbounds double, ptr %5, i64 %143
  %269 = load double, ptr %268, align 8, !tbaa !12
  %270 = extractelement <2 x double> %264, i64 0
  %271 = fsub double %269, %270
  store double %271, ptr %268, align 8, !tbaa !12
  %272 = getelementptr inbounds double, ptr %5, i64 %147
  %273 = load double, ptr %272, align 8, !tbaa !12
  %274 = extractelement <2 x double> %264, i64 1
  %275 = fsub double %273, %274
  store double %275, ptr %272, align 8, !tbaa !12
  %276 = getelementptr inbounds double, ptr %5, i64 %154
  %277 = load double, ptr %276, align 8, !tbaa !12
  %278 = fsub double %277, %265
  store double %278, ptr %276, align 8, !tbaa !12
  %279 = load i1, ptr @dim, align 4
  %280 = extractelement <2 x double> %257, i64 1
  br i1 %279, label %281, label %287

281:                                              ; preds = %256
  %282 = fmul double %169, %261
  %283 = fadd double %114, %282
  %284 = getelementptr double, ptr %26, i64 %143
  %285 = load double, ptr %284, align 8, !tbaa !12
  %286 = fsub double %285, %282
  store double %286, ptr %284, align 8, !tbaa !12
  br label %287

287:                                              ; preds = %256, %281, %136
  %288 = phi i1 [ %128, %136 ], [ true, %281 ], [ false, %256 ]
  %289 = phi i1 [ %129, %136 ], [ true, %281 ], [ false, %256 ]
  %290 = phi double [ %116, %136 ], [ %183, %281 ], [ %183, %256 ]
  %291 = phi double [ %115, %136 ], [ %280, %281 ], [ %280, %256 ]
  %292 = phi double [ %114, %136 ], [ %283, %281 ], [ %114, %256 ]
  %293 = phi double [ %113, %136 ], [ %169, %281 ], [ %169, %256 ]
  %294 = phi double [ %112, %136 ], [ %267, %281 ], [ %267, %256 ]
  %295 = phi <2 x double> [ %117, %136 ], [ %266, %281 ], [ %266, %256 ]
  %296 = add nuw nsw i64 %111, 1
  %297 = icmp eq i64 %296, %107
  br i1 %297, label %298, label %108, !llvm.loop !122

298:                                              ; preds = %287
  %299 = getelementptr inbounds double, ptr %5, i64 %66
  %300 = load <2 x double>, ptr %299, align 8, !tbaa !12
  %301 = fadd <2 x double> %295, %300
  store <2 x double> %301, ptr %299, align 8, !tbaa !12
  %302 = getelementptr inbounds double, ptr %5, i64 %70
  %303 = load double, ptr %302, align 8, !tbaa !12
  %304 = fadd double %294, %303
  store double %304, ptr %302, align 8, !tbaa !12
  br i1 %288, label %305, label %309

305:                                              ; preds = %298
  %306 = getelementptr double, ptr %299, i64 3
  %307 = load double, ptr %306, align 8, !tbaa !12
  %308 = fadd double %292, %307
  store double %308, ptr %306, align 8, !tbaa !12
  br label %309

309:                                              ; preds = %298, %305, %37
  %310 = phi double [ %44, %37 ], [ %290, %305 ], [ %290, %298 ]
  %311 = phi double [ %43, %37 ], [ %77, %305 ], [ %77, %298 ]
  %312 = phi double [ %42, %37 ], [ %291, %305 ], [ %291, %298 ]
  %313 = phi double [ %41, %37 ], [ %292, %305 ], [ %292, %298 ]
  %314 = phi double [ %40, %37 ], [ %293, %305 ], [ %293, %298 ]
  %315 = add nuw nsw i64 %38, 1
  %316 = load ptr, ptr @prm, align 8, !tbaa !9
  %317 = getelementptr inbounds %struct.parm, ptr %316, i64 0, i32 4
  %318 = load i32, ptr %317, align 8, !tbaa !26
  %319 = add nsw i32 %318, -1
  %320 = sext i32 %319 to i64
  %321 = icmp slt i64 %315, %320
  br i1 %321, label %37, label %322, !llvm.loop !123

322:                                              ; preds = %309, %10, %21
  %323 = phi double [ 0.000000e+00, %21 ], [ 0.000000e+00, %10 ], [ %310, %309 ]
  %324 = phi double [ 0.000000e+00, %21 ], [ 0.000000e+00, %10 ], [ %312, %309 ]
  %325 = phi i32 [ %34, %21 ], [ %19, %10 ], [ %318, %309 ]
  tail call void @free_ivector(ptr noundef %16, i32 noundef -1, i32 noundef %325) #29
  store double %324, ptr %6, align 8, !tbaa !12
  store double %323, ptr %7, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc double @econs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #19 {
  %3 = load ptr, ptr @prm, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.parm, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %62

7:                                                ; preds = %2
  %8 = load ptr, ptr @constrained, align 8, !tbaa !9
  %9 = load i1, ptr @dim, align 4
  %10 = load ptr, ptr @x0, align 8
  %11 = select i1 %9, i64 4, i64 3
  %12 = zext nneg i32 %5 to i64
  br label %13

13:                                               ; preds = %7, %58
  %14 = phi i64 [ 0, %7 ], [ %60, %58 ]
  %15 = phi double [ 0.000000e+00, %7 ], [ %59, %58 ]
  %16 = getelementptr inbounds i32, ptr %8, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %13
  %20 = mul nuw nsw i64 %11, %14
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = getelementptr inbounds double, ptr %10, i64 %20
  %23 = add nuw nsw i64 %20, 2
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds double, ptr %10, i64 %23
  %27 = load double, ptr %26, align 8, !tbaa !12
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds double, ptr %1, i64 %20
  %30 = load <2 x double>, ptr %21, align 8, !tbaa !12
  %31 = load <2 x double>, ptr %22, align 8, !tbaa !12
  %32 = fsub <2 x double> %30, %31
  %33 = fmul <2 x double> %32, %32
  %34 = extractelement <2 x double> %33, i64 1
  %35 = extractelement <2 x double> %32, i64 0
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %34)
  %37 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %37, double 0.000000e+00, double %15)
  %39 = load <2 x double>, ptr %29, align 8, !tbaa !12
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> zeroinitializer, <2 x double> %39)
  store <2 x double> %40, ptr %29, align 8, !tbaa !12
  %41 = getelementptr double, ptr %29, i64 2
  %42 = load double, ptr %41, align 8, !tbaa !12
  %43 = tail call double @llvm.fmuladd.f64(double %28, double 0.000000e+00, double %42)
  store double %43, ptr %41, align 8, !tbaa !12
  br i1 %9, label %44, label %58

44:                                               ; preds = %19
  %45 = shl i64 %14, 2
  %46 = and i64 %45, 4294967292
  %47 = or disjoint i64 %46, 3
  %48 = getelementptr inbounds double, ptr %0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !12
  %50 = getelementptr inbounds double, ptr %10, i64 %47
  %51 = load double, ptr %50, align 8, !tbaa !12
  %52 = fsub double %49, %51
  %53 = fmul double %52, 0.000000e+00
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %52, double %38)
  %55 = getelementptr inbounds double, ptr %1, i64 %47
  %56 = load double, ptr %55, align 8, !tbaa !12
  %57 = tail call double @llvm.fmuladd.f64(double %52, double 0.000000e+00, double %56)
  store double %57, ptr %55, align 8, !tbaa !12
  br label %58

58:                                               ; preds = %13, %44, %19
  %59 = phi double [ %54, %44 ], [ %38, %19 ], [ %15, %13 ]
  %60 = add nuw nsw i64 %14, 1
  %61 = icmp eq i64 %60, %12
  br i1 %61, label %62, label %13, !llvm.loop !124

62:                                               ; preds = %58, %2
  %63 = phi double [ 0.000000e+00, %2 ], [ %59, %58 ]
  ret double %63
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #22

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { cold optsize }
attributes #29 = { nounwind optsize }
attributes #30 = { nounwind optsize allocsize(0) }
attributes #31 = { nounwind optsize allocsize(0,1) }
attributes #32 = { cold }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = !{!25, !10, i64 128}
!25 = !{!"molecule_t", !7, i64 0, !6, i64 96, !10, i64 104, !6, i64 112, !6, i64 116, !6, i64 120, !10, i64 128}
!26 = !{!27, !6, i64 96}
!27 = !{!"parm", !7, i64 0, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !7, i64 376, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !10, i64 544, !10, i64 552, !10, i64 560, !10, i64 568, !10, i64 576, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !10, i64 704, !10, i64 712}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = !{!27, !10, i64 696}
!36 = !{!27, !10, i64 704}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = !{!27, !10, i64 448}
!41 = !{!27, !10, i64 472}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = !{!27, !10, i64 368}
!45 = !{!27, !10, i64 360}
!46 = !{!27, !10, i64 248}
!47 = !{!27, !6, i64 104}
!48 = !{!27, !10, i64 496}
!49 = !{!27, !10, i64 504}
!50 = !{!27, !10, i64 512}
!51 = !{!27, !10, i64 264}
!52 = !{!27, !10, i64 272}
!53 = !{!27, !6, i64 108}
!54 = !{!27, !10, i64 520}
!55 = !{!27, !10, i64 528}
!56 = !{!27, !10, i64 536}
!57 = !{!27, !6, i64 112}
!58 = !{!27, !10, i64 544}
!59 = !{!27, !10, i64 552}
!60 = !{!27, !10, i64 560}
!61 = !{!27, !10, i64 568}
!62 = !{!27, !10, i64 280}
!63 = !{!27, !10, i64 288}
!64 = !{!27, !6, i64 148}
!65 = !{!27, !10, i64 576}
!66 = !{!27, !10, i64 584}
!67 = !{!27, !10, i64 592}
!68 = !{!27, !10, i64 600}
!69 = !{!27, !6, i64 120}
!70 = !{!27, !10, i64 608}
!71 = !{!27, !10, i64 616}
!72 = !{!27, !10, i64 624}
!73 = !{!27, !10, i64 632}
!74 = !{!27, !10, i64 640}
!75 = !{!27, !10, i64 296}
!76 = !{!27, !10, i64 304}
!77 = !{!27, !10, i64 312}
!78 = !{!27, !6, i64 124}
!79 = !{!27, !10, i64 648}
!80 = !{!27, !10, i64 656}
!81 = !{!27, !10, i64 664}
!82 = !{!27, !10, i64 672}
!83 = !{!27, !10, i64 680}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15, !89, !90}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = distinct !{!91, !15}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = !{!27, !10, i64 256}
!99 = distinct !{!99, !15}
!100 = !{!27, !13, i64 432}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = !{!27, !6, i64 100}
!105 = !{!27, !10, i64 440}
!106 = distinct !{!106, !15}
!107 = !{!27, !10, i64 456}
!108 = !{!27, !10, i64 336}
!109 = !{!27, !10, i64 328}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = !{!27, !6, i64 128}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = !{!27, !10, i64 352}
!121 = !{!27, !10, i64 344}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
