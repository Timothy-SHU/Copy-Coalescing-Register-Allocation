; ModuleID = 'sff.c'
source_filename = "sff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomstr = type { i32, ptr }

@tnewton = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tlevel = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tcholesky = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdiag = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdiagd = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tdgeev = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tmmetwo = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tnmode = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tconjgrad = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@tmmeone = dso_local local_unnamed_addr global double 0.000000e+00, align 8
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
@JexclAt = internal unnamed_addr global ptr null, align 8
@Jblo = internal unnamed_addr global ptr null, align 8
@.str.60 = private unnamed_addr constant [45 x i8] c"Error deallocating JexclAt[%d] in mme_init!\0A\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"Error allocating JexclAt array in mme_init!\0A\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"Error allocating Jatoms array in mme_init!\0A\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"Error allocating Iatoms array in mme_init!\0A\00", align 1
@mme34.grad = internal unnamed_addr global ptr null, align 8
@mme34.reqack = internal unnamed_addr global ptr null, align 8
@kappa = internal global double 0.000000e+00, align 8
@epsext = internal global double 7.850000e+01, align 8
@.str.64 = private unnamed_addr constant [21 x i8] c"      iter    Total\0A\00", align 1
@chknm = internal unnamed_addr global ptr null, align 8
@max_step = internal unnamed_addr global i32 -1, align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"ff:%6d %9.2f\0A\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"     bond:  %15.9f\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"    angle:  %15.9f\0A\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c" dihedral:  %15.9f\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"    enb14:  %15.9f\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"    eel14:  %15.9f\0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"      enb:  %15.9f\0A\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"      eel:  %15.9f\0A\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"      egb:  %15.9f\0A\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"    econs:  %15.9f\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"    esurf:  %15.9f\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"    Total:  %15.9f\0A\00", align 1
@egb.reff = internal unnamed_addr global ptr null, align 8
@egb.sumdeijda = internal unnamed_addr global ptr null, align 8
@egb.psi = internal unnamed_addr global ptr null, align 8
@egb.reqack = internal unnamed_addr global ptr null, align 8
@egb.iexw = internal unnamed_addr global ptr null, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.79 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 1, taskid = %d\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 22, ptr @0 }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8
@.str.82 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 3, taskid = %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 4, taskid = %d\0A\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @0 }, align 8
@.str.85 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 5, taskid = %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [49 x i8] c"NULL pair list entry in egb loop 6, taskid = %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"bad value for Pn: %d %d %d %d %8.3f\0A\00", align 1
@.str.88 = private unnamed_addr constant [51 x i8] c"NULL pair list entry in nbond loop 1, taskid = %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"NULL pair list entry in nbond loop 2, taskid = %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"\09checkpoint:  %s\0A\00", align 1
@md.xold = internal unnamed_addr global ptr null, align 8
@md.accel = internal unnamed_addr global ptr null, align 8
@md.minv = internal unnamed_addr global ptr null, align 8
@md.nold = internal unnamed_addr global i32 0, align 4
@.str.91 = private unnamed_addr constant [35 x i8] c"unable to allocate space for minv\0A\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"unable to allocate space for xold\0A\00", align 1
@.str.94 = private unnamed_addr constant [36 x i8] c"unable to allocate space for accel\0A\00", align 1
@t = internal unnamed_addr global double 0.000000e+00, align 8

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
  %1 = load i32, ptr @blocksize, align 4, !tbaa !6
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
  tail call void @exit(i32 noundef 1) #30
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
  %2 = tail call i32 @mpierror(i32 noundef %0) #31
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @mpifinalize() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @mpiinit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 {
  store i32 0, ptr %2, align 4, !tbaa !6
  store i32 1, ptr %3, align 4, !tbaa !6
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxyz(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @getxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #31
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @getxyzw(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca [82 x i8], align 16
  %6 = alloca [21 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #21
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %7, align 1, !tbaa !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr @stdin, align 8, !tbaa !10
  br label %29

14:                                               ; preds = %9
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr @stdin, align 8, !tbaa !10
  br label %29

19:                                               ; preds = %14
  %20 = tail call noalias ptr @fopen(ptr noundef nonnull %7, ptr noundef nonnull @.str.1) #31
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !10
  %24 = load ptr, ptr %0, align 8, !tbaa !10
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef %24) #33
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = tail call i32 @reducerror(i32 noundef %27) #31
  br label %29

29:                                               ; preds = %26, %17, %12
  %30 = phi ptr [ %20, %26 ], [ %18, %17 ], [ %13, %12 ]
  %31 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #34
  %32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef %1) #34
  %33 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #34
  %34 = load i32, ptr %1, align 4, !tbaa !6
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
  %49 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %48, i64 noundef 20) #34
  store i8 0, ptr %38, align 4, !tbaa !12
  %50 = call double @atof(ptr noundef nonnull %6) #32
  %51 = getelementptr inbounds double, ptr %2, i64 %42
  store double %50, ptr %51, align 8, !tbaa !13
  %52 = icmp eq i32 %45, %39
  %53 = add nsw i32 %43, -1
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %42, %54
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = call ptr @ggets(ptr noundef nonnull %5, i32 noundef 82, ptr noundef %30) #34
  %59 = load i32, ptr %1, align 4, !tbaa !6
  br label %60

60:                                               ; preds = %40, %57
  %61 = phi i32 [ %41, %40 ], [ %59, %57 ]
  %62 = add nuw nsw i64 %42, 1
  %63 = mul nsw i32 %61, %3
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %40, label %66, !llvm.loop !15

66:                                               ; preds = %60, %29
  %67 = load ptr, ptr @stdin, align 8, !tbaa !10
  %68 = icmp eq ptr %30, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 @fclose(ptr noundef %30) #31
  br label %71

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %5) #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxyz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load i1, ptr @dim, align 4
  %5 = select i1 %4, i32 4, i32 3
  %6 = tail call i32 @putxyzw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #31
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxyzw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdout, align 8, !tbaa !10
  br label %16

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen(ptr noundef %5, ptr noundef nonnull @.str.4) #31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !10
  %15 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %14) #34
  br label %51

16:                                               ; preds = %10, %8
  %17 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %18 = load i32, ptr %1, align 4, !tbaa !6
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %18) #31
  %20 = load i32, ptr %1, align 4, !tbaa !6
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
  %29 = load double, ptr %28, align 8, !tbaa !13
  %30 = getelementptr double, ptr %28, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !13
  %32 = getelementptr double, ptr %28, i64 2
  %33 = load double, ptr %32, align 8, !tbaa !13
  br i1 %24, label %34, label %36

34:                                               ; preds = %26
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, double noundef %29, double noundef %31, double noundef %33) #31
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr double, ptr %28, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !13
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.8, double noundef %29, double noundef %31, double noundef %33, double noundef %38) #31
  br label %40

40:                                               ; preds = %34, %36
  %41 = add i64 %27, %25
  %42 = load i32, ptr %1, align 4, !tbaa !6
  %43 = mul nsw i32 %42, %3
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %26, label %46, !llvm.loop !17

46:                                               ; preds = %40, %16
  %47 = load ptr, ptr @stdout, align 8, !tbaa !10
  %48 = icmp eq ptr %17, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @fclose(ptr noundef %17) #31
  br label %51

51:                                               ; preds = %13, %49, %46
  %52 = phi i32 [ 0, %49 ], [ 0, %46 ], [ -1, %13 ]
  %53 = tail call i32 @reducerror(i32 noundef %52) #31
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @strindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !12
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
  %15 = load i8, ptr %14, align 1, !tbaa !12
  %16 = icmp eq i8 %15, %13
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = add nuw i64 %11, 1
  %19 = add nuw i64 %12, 1
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !18

23:                                               ; preds = %17
  br i1 %7, label %24, label %29

24:                                               ; preds = %10, %8, %23
  %25 = add nuw i64 %9, 1
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %8, !llvm.loop !19

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
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %7) #21
  %8 = load ptr, ptr %0, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr @stdin, align 8, !tbaa !10
  br label %30

15:                                               ; preds = %10
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(2) @.str) #32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdin, align 8, !tbaa !10
  br label %30

20:                                               ; preds = %15
  %21 = tail call noalias ptr @fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.1) #31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !10
  %25 = load ptr, ptr %0, align 8, !tbaa !10
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %25) #33
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi i32 [ -1, %23 ], [ 0, %20 ]
  %29 = tail call i32 @reducerror(i32 noundef %28) #31
  br label %30

30:                                               ; preds = %27, %18, %13
  %31 = phi ptr [ %21, %27 ], [ %19, %18 ], [ %14, %13 ]
  %32 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #34
  %33 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #34
  store double 0.000000e+00, ptr %2, align 8, !tbaa !13
  %34 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef nonnull %2) #34
  %35 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #34
  %36 = load i32, ptr %1, align 4, !tbaa !6
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
  %50 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %49, i64 noundef 12) #34
  store i8 0, ptr %40, align 1, !tbaa !12
  %51 = call double @atof(ptr noundef nonnull %7) #32
  %52 = getelementptr inbounds double, ptr %3, i64 %43
  store double %51, ptr %52, align 8, !tbaa !13
  %53 = icmp eq i32 %46, 5
  %54 = add nsw i32 %44, -1
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %43, %55
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #34
  %60 = load i32, ptr %1, align 4, !tbaa !6
  br label %61

61:                                               ; preds = %41, %58
  %62 = phi i32 [ %42, %41 ], [ %60, %58 ]
  %63 = add nuw nsw i64 %43, 1
  %64 = mul nsw i32 %62, 3
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %41, label %67, !llvm.loop !20

67:                                               ; preds = %61, %30
  %68 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #34
  %69 = icmp eq ptr %68, null
  %70 = load i32, ptr %1, align 4, !tbaa !6
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %80, i1 false), !tbaa !13
  br label %102

81:                                               ; preds = %73, %96
  %82 = phi i32 [ %70, %73 ], [ %97, %96 ]
  %83 = phi i64 [ 0, %73 ], [ %98, %96 ]
  %84 = trunc i64 %83 to i32
  %85 = urem i32 %84, 6
  %86 = mul nuw nsw i32 %85, 12
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %6, i64 %87
  %89 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %88, i64 noundef 12) #34
  store i8 0, ptr %74, align 1, !tbaa !12
  %90 = call double @atof(ptr noundef nonnull %7) #32
  %91 = getelementptr inbounds double, ptr %4, i64 %83
  store double %90, ptr %91, align 8, !tbaa !13
  %92 = icmp eq i32 %85, 5
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = call ptr @ggets(ptr noundef nonnull %6, i32 noundef 82, ptr noundef %31) #34
  %95 = load i32, ptr %1, align 4, !tbaa !6
  br label %96

96:                                               ; preds = %81, %93
  %97 = phi i32 [ %82, %81 ], [ %95, %93 ]
  %98 = add nuw nsw i64 %83, 1
  %99 = mul nsw i32 %97, 3
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %81, label %105, !llvm.loop !21

102:                                              ; preds = %76, %75
  %103 = load ptr, ptr @nabout, align 8, !tbaa !10
  %104 = call i64 @fwrite(ptr nonnull @.str.11, i64 25, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %96, %72, %102
  %106 = load ptr, ptr @stdin, align 8, !tbaa !10
  %107 = icmp eq ptr %31, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 @fclose(ptr noundef %31) #31
  br label %110

110:                                              ; preds = %108, %105
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %6) #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @putxv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = load ptr, ptr %0, align 8, !tbaa !10
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str) #32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr @stdout, align 8, !tbaa !10
  br label %18

12:                                               ; preds = %6
  %13 = tail call noalias ptr @fopen(ptr noundef %7, ptr noundef nonnull @.str.4) #31
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !10
  %17 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %16) #34
  br label %94

18:                                               ; preds = %12, %10
  %19 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !10
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef %20) #31
  %22 = load i32, ptr %2, align 4, !tbaa !6
  %23 = load double, ptr %3, align 8, !tbaa !13
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %22, double noundef %23) #31
  %25 = load i32, ptr %2, align 4, !tbaa !6
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
  %38 = load double, ptr %37, align 8, !tbaa !13
  %39 = or disjoint i64 %32, 1
  %40 = getelementptr inbounds double, ptr %4, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !13
  %42 = getelementptr double, ptr %37, i64 2
  %43 = load double, ptr %42, align 8, !tbaa !13
  br i1 %36, label %44, label %52

44:                                               ; preds = %31
  %45 = getelementptr inbounds double, ptr %4, i64 %34
  %46 = load double, ptr %45, align 8, !tbaa !13
  %47 = getelementptr double, ptr %37, i64 4
  %48 = load double, ptr %47, align 8, !tbaa !13
  %49 = getelementptr double, ptr %37, i64 5
  %50 = load double, ptr %49, align 8, !tbaa !13
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %38, double noundef %41, double noundef %43, double noundef %46, double noundef %48, double noundef %50) #31
  br label %54

52:                                               ; preds = %31
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %38, double noundef %41, double noundef %43) #31
  br label %54

54:                                               ; preds = %44, %52
  %55 = add nuw i64 %32, 6
  %56 = load i32, ptr %2, align 4, !tbaa !6
  %57 = mul nsw i32 %56, 3
  %58 = trunc i64 %55 to i32
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %31, label %29, !llvm.loop !22

60:                                               ; preds = %29, %83
  %61 = phi i64 [ %84, %83 ], [ 0, %29 ]
  %62 = phi i32 [ %86, %83 ], [ %57, %29 ]
  %63 = add nuw nsw i64 %61, 3
  %64 = sext i32 %62 to i64
  %65 = icmp slt i64 %63, %64
  %66 = getelementptr inbounds double, ptr %5, i64 %61
  %67 = load double, ptr %66, align 8, !tbaa !13
  %68 = or disjoint i64 %61, 1
  %69 = getelementptr inbounds double, ptr %5, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !13
  %71 = getelementptr double, ptr %66, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !13
  br i1 %65, label %73, label %81

73:                                               ; preds = %60
  %74 = getelementptr inbounds double, ptr %5, i64 %63
  %75 = load double, ptr %74, align 8, !tbaa !13
  %76 = getelementptr double, ptr %66, i64 4
  %77 = load double, ptr %76, align 8, !tbaa !13
  %78 = getelementptr double, ptr %66, i64 5
  %79 = load double, ptr %78, align 8, !tbaa !13
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.14, double noundef %67, double noundef %70, double noundef %72, double noundef %75, double noundef %77, double noundef %79) #31
  br label %83

81:                                               ; preds = %60
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.15, double noundef %67, double noundef %70, double noundef %72) #31
  br label %83

83:                                               ; preds = %73, %81
  %84 = add nuw i64 %61, 6
  %85 = load i32, ptr %2, align 4, !tbaa !6
  %86 = mul nsw i32 %85, 3
  %87 = trunc i64 %84 to i32
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %60, label %89, !llvm.loop !23

89:                                               ; preds = %83, %18, %29
  %90 = load ptr, ptr @stdout, align 8, !tbaa !10
  %91 = icmp eq ptr %19, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @fclose(ptr noundef %19) #31
  br label %94

94:                                               ; preds = %15, %92, %89
  %95 = phi i32 [ 0, %92 ], [ 0, %89 ], [ -1, %15 ]
  %96 = tail call i32 @reducerror(i32 noundef %95) #31
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @checkpoint(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %1, ptr %5, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ %3, %4 ]
  %11 = add nuw nsw i32 %9, 1
  %12 = udiv i32 %10, 10
  %13 = icmp ult i32 %10, 10
  br i1 %13, label %14, label %8, !llvm.loop !24

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %9, 2
  %16 = zext nneg i32 %15 to i64
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #35
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %3) #34
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %20 = trunc i64 %19 to i32
  %21 = tail call i32 @strindex(ptr noundef %0, ptr noundef nonnull @.str.3) #31
  %22 = icmp slt i32 %21, 0
  %23 = add nsw i32 %11, %20
  br i1 %22, label %24, label %36

24:                                               ; preds = %14
  %25 = add nsw i32 %23, 1
  %26 = sext i32 %25 to i64
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #35
  %28 = shl i64 %19, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call ptr @strncpy(ptr noundef %27, ptr noundef %0, i64 noundef %29) #34
  %31 = getelementptr inbounds i8, ptr %27, i64 %29
  %32 = zext nneg i32 %11 to i64
  %33 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %32) #34
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds i8, ptr %27, i64 %34
  br label %57

36:                                               ; preds = %14
  %37 = add i32 %9, %20
  %38 = sext i32 %37 to i64
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #35
  %40 = zext nneg i32 %21 to i64
  %41 = tail call ptr @strncpy(ptr noundef %39, ptr noundef %0, i64 noundef %40) #34
  %42 = getelementptr inbounds i8, ptr %39, i64 %40
  %43 = zext nneg i32 %11 to i64
  %44 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %17, i64 noundef %43) #34
  %45 = add nuw nsw i32 %21, %11
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %39, i64 %46
  %48 = getelementptr i8, ptr %0, i64 %40
  %49 = getelementptr i8, ptr %48, i64 2
  %50 = sub i32 %20, %21
  %51 = add i32 %50, -2
  %52 = sext i32 %51 to i64
  %53 = tail call ptr @strncpy(ptr noundef nonnull %47, ptr noundef %49, i64 noundef %52) #34
  %54 = sext i32 %23 to i64
  %55 = getelementptr i8, ptr %39, i64 %54
  %56 = getelementptr i8, ptr %55, i64 -2
  br label %57

57:                                               ; preds = %36, %24
  %58 = phi ptr [ %56, %36 ], [ %35, %24 ]
  %59 = phi ptr [ %39, %36 ], [ %27, %24 ]
  store i8 0, ptr %58, align 1, !tbaa !12
  store ptr %59, ptr %6, align 8
  %60 = call i32 @putxyz(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %2) #31
  tail call void @free(ptr noundef nonnull %59) #34
  tail call void @free(ptr noundef %17) #34
  br label %61

61:                                               ; preds = %4, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
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
  %1 = load ptr, ptr @nabout, align 8, !tbaa !10
  %2 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 34, i64 1, ptr %1)
  %3 = load ptr, ptr @nabout, align 8, !tbaa !10
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.17, double noundef 0.000000e+00) #31
  %5 = load ptr, ptr @nabout, align 8, !tbaa !10
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.18, double noundef 0.000000e+00) #31
  %7 = load ptr, ptr @nabout, align 8, !tbaa !10
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.19, double noundef 0.000000e+00) #31
  %9 = load ptr, ptr @nabout, align 8, !tbaa !10
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #31
  %11 = load ptr, ptr @nabout, align 8, !tbaa !10
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.21, double noundef 0.000000e+00) #31
  %13 = load ptr, ptr @nabout, align 8, !tbaa !10
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.22, double noundef 0.000000e+00) #31
  %15 = load ptr, ptr @nabout, align 8, !tbaa !10
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.23, double noundef 0.000000e+00) #31
  %17 = load ptr, ptr @nabout, align 8, !tbaa !10
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.24, double noundef 0.000000e+00) #31
  %19 = load ptr, ptr @nabout, align 8, !tbaa !10
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.25, double noundef 0.000000e+00) #31
  %21 = load ptr, ptr @nabout, align 8, !tbaa !10
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.26, double noundef 0.000000e+00) #31
  %23 = load ptr, ptr @nabout, align 8, !tbaa !10
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.27, double noundef 0.000000e+00) #31
  %25 = load ptr, ptr @nabout, align 8, !tbaa !10
  %26 = tail call i32 @fflush(ptr noundef %25) #31
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mme_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i1 false, ptr @dim, align 4
  %7 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  store ptr %8, ptr @prm, align 8, !tbaa !10
  store ptr %3, ptr @x0, align 8, !tbaa !10
  store ptr %4, ptr @binposfp, align 8, !tbaa !10
  %9 = load ptr, ptr @frozen, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.parm, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %9, i32 noundef 0, i32 noundef %11) #34
  %12 = load ptr, ptr @constrained, align 8, !tbaa !10
  %13 = load ptr, ptr @prm, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.parm, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %12, i32 noundef 0, i32 noundef %15) #34
  %16 = load ptr, ptr @prm, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.parm, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = tail call ptr @ivector(i32 noundef 0, i32 noundef %18) #34
  store ptr %19, ptr @frozen, align 8, !tbaa !10
  %20 = load ptr, ptr @prm, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.parm, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !27
  %23 = tail call ptr @ivector(i32 noundef 0, i32 noundef %22) #34
  store ptr %23, ptr @constrained, align 8, !tbaa !10
  %24 = load ptr, ptr @binposfp, align 8, !tbaa !10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = tail call i32 @writebinposhdr(ptr noundef nonnull %24) #34
  %28 = load ptr, ptr @constrained, align 8, !tbaa !10
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi ptr [ %28, %26 ], [ %23, %5 ]
  %31 = tail call i32 @set_cons_mask(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %30) #34
  store i32 %31, ptr @nconstrained, align 4, !tbaa !6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %2, null
  %35 = load ptr, ptr @nabout, align 8, !tbaa !10
  br i1 %34, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.52, i32 noundef %31) #31
  br label %40

38:                                               ; preds = %33
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.53, i32 noundef %31, ptr noundef nonnull %2) #31
  br label %40

40:                                               ; preds = %36, %38, %29
  %41 = load i32, ptr @gb, align 4, !tbaa !6
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
  store double %44, ptr @gbalpha, align 8, !tbaa !13
  store double %45, ptr @gbbeta, align 8, !tbaa !13
  store double %46, ptr @gbgamma, align 8, !tbaa !13
  br label %47

47:                                               ; preds = %43, %40
  %48 = load ptr, ptr @pairlistnp, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %50 ]
  %55 = load ptr, ptr @pairlistnp, align 8, !tbaa !10
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %57, i32 noundef 0, i32 noundef 1) #34
  %58 = add nuw nsw i64 %54, 1
  %59 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %53, label %62, !llvm.loop !29

62:                                               ; preds = %53
  %63 = trunc i64 %58 to i32
  %64 = load ptr, ptr @pairlistnp, align 8, !tbaa !10
  br label %65

65:                                               ; preds = %62, %50
  %66 = phi ptr [ %48, %50 ], [ %64, %62 ]
  %67 = phi i32 [ 0, %50 ], [ %63, %62 ]
  store i32 %67, ptr %6, align 4, !tbaa !6
  tail call void @free(ptr noundef %66) #34
  br label %68

68:                                               ; preds = %65, %47
  %69 = load ptr, ptr @upairsnp, align 8, !tbaa !10
  %70 = load ptr, ptr @prm, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.parm, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %69, i32 noundef 0, i32 noundef %72) #34
  %73 = load ptr, ptr @lpairsnp, align 8, !tbaa !10
  %74 = load ptr, ptr @prm, align 8, !tbaa !10
  %75 = getelementptr inbounds %struct.parm, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %73, i32 noundef 0, i32 noundef %76) #34
  %77 = load ptr, ptr @prm, align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.parm, ptr %77, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !27
  %80 = tail call ptr @ivector(i32 noundef 0, i32 noundef %79) #34
  store ptr %80, ptr @upairsnp, align 8, !tbaa !10
  %81 = load ptr, ptr @prm, align 8, !tbaa !10
  %82 = getelementptr inbounds %struct.parm, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !27
  %84 = tail call ptr @ivector(i32 noundef 0, i32 noundef %83) #34
  store ptr %84, ptr @lpairsnp, align 8, !tbaa !10
  %85 = load ptr, ptr @prm, align 8, !tbaa !10
  %86 = getelementptr inbounds %struct.parm, ptr %85, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !27
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 3
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #35
  store ptr %90, ptr @pairlistnp, align 8, !tbaa !10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %68
  %93 = load ptr, ptr @nabout, align 8, !tbaa !10
  %94 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 47, i64 1, ptr %93)
  %95 = load ptr, ptr @nabout, align 8, !tbaa !10
  %96 = tail call i32 @fflush(ptr noundef %95) #31
  %97 = tail call i32 @mpierror(i32 noundef -1) #31
  %98 = load ptr, ptr @prm, align 8, !tbaa !10
  %99 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !27
  br label %101

101:                                              ; preds = %92, %68
  %102 = phi i32 [ %100, %92 ], [ %87, %68 ]
  %103 = phi ptr [ %98, %92 ], [ %85, %68 ]
  %104 = getelementptr inbounds %struct.parm, ptr %103, i64 0, i32 4
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load ptr, ptr @pairlistnp, align 8, !tbaa !10
  %108 = load ptr, ptr @upairsnp, align 8, !tbaa !10
  %109 = load ptr, ptr @lpairsnp, align 8, !tbaa !10
  br label %110

110:                                              ; preds = %106, %110
  %111 = phi i64 [ 0, %106 ], [ %115, %110 ]
  %112 = getelementptr inbounds ptr, ptr %107, i64 %111
  store ptr null, ptr %112, align 8, !tbaa !10
  %113 = getelementptr inbounds i32, ptr %108, i64 %111
  store i32 0, ptr %113, align 4, !tbaa !6
  %114 = getelementptr inbounds i32, ptr %109, i64 %111
  store i32 0, ptr %114, align 4, !tbaa !6
  %115 = add nuw nsw i64 %111, 1
  %116 = load i32, ptr %104, align 8, !tbaa !27
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %110, label %119, !llvm.loop !30

119:                                              ; preds = %110
  %120 = trunc i64 %115 to i32
  br label %121

121:                                              ; preds = %119, %101
  %122 = phi i32 [ %102, %101 ], [ %116, %119 ]
  %123 = phi i32 [ 0, %101 ], [ %120, %119 ]
  store i32 %123, ptr %6, align 4, !tbaa !6
  %124 = load ptr, ptr @pairlist2np, align 8, !tbaa !10
  %125 = icmp eq ptr %124, null
  br i1 %125, label %148, label %126

126:                                              ; preds = %121
  %127 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %134, %129 ], [ 0, %126 ]
  %131 = load ptr, ptr @pairlist2np, align 8, !tbaa !10
  %132 = getelementptr inbounds ptr, ptr %131, i64 %130
  %133 = load ptr, ptr %132, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %133, i32 noundef 0, i32 noundef 1) #34
  %134 = add nuw nsw i64 %130, 1
  %135 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %129, label %138, !llvm.loop !31

138:                                              ; preds = %129
  %139 = trunc i64 %134 to i32
  %140 = load ptr, ptr @pairlist2np, align 8, !tbaa !10
  %141 = load ptr, ptr @prm, align 8, !tbaa !10
  br label %142

142:                                              ; preds = %138, %126
  %143 = phi ptr [ %103, %126 ], [ %141, %138 ]
  %144 = phi ptr [ %124, %126 ], [ %140, %138 ]
  %145 = phi i32 [ 0, %126 ], [ %139, %138 ]
  store i32 %145, ptr %6, align 4, !tbaa !6
  tail call void @free(ptr noundef %144) #34
  %146 = getelementptr inbounds %struct.parm, ptr %143, i64 0, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !27
  br label %148

148:                                              ; preds = %142, %121
  %149 = phi i32 [ %147, %142 ], [ %122, %121 ]
  %150 = load ptr, ptr @upairs2np, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %150, i32 noundef 0, i32 noundef %149) #34
  %151 = load ptr, ptr @lpairs2np, align 8, !tbaa !10
  %152 = load ptr, ptr @prm, align 8, !tbaa !10
  %153 = getelementptr inbounds %struct.parm, ptr %152, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %151, i32 noundef 0, i32 noundef %154) #34
  %155 = load ptr, ptr @prm, align 8, !tbaa !10
  %156 = getelementptr inbounds %struct.parm, ptr %155, i64 0, i32 4
  %157 = load i32, ptr %156, align 8, !tbaa !27
  %158 = tail call ptr @ivector(i32 noundef 0, i32 noundef %157) #34
  store ptr %158, ptr @upairs2np, align 8, !tbaa !10
  %159 = load ptr, ptr @prm, align 8, !tbaa !10
  %160 = getelementptr inbounds %struct.parm, ptr %159, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !27
  %162 = tail call ptr @ivector(i32 noundef 0, i32 noundef %161) #34
  store ptr %162, ptr @lpairs2np, align 8, !tbaa !10
  %163 = load ptr, ptr @prm, align 8, !tbaa !10
  %164 = getelementptr inbounds %struct.parm, ptr %163, i64 0, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !27
  %166 = sext i32 %165 to i64
  %167 = shl nsw i64 %166, 3
  %168 = tail call noalias ptr @malloc(i64 noundef %167) #35
  store ptr %168, ptr @pairlist2np, align 8, !tbaa !10
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %148
  %171 = load ptr, ptr @nabout, align 8, !tbaa !10
  %172 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 48, i64 1, ptr %171)
  %173 = load ptr, ptr @nabout, align 8, !tbaa !10
  %174 = tail call i32 @fflush(ptr noundef %173) #31
  %175 = tail call i32 @mpierror(i32 noundef -1) #31
  %176 = load ptr, ptr @prm, align 8, !tbaa !10
  %177 = getelementptr inbounds %struct.parm, ptr %176, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !27
  br label %179

179:                                              ; preds = %170, %148
  %180 = phi i32 [ %178, %170 ], [ %165, %148 ]
  %181 = phi ptr [ %176, %170 ], [ %163, %148 ]
  %182 = getelementptr inbounds %struct.parm, ptr %181, i64 0, i32 4
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %179
  %185 = load ptr, ptr @pairlist2np, align 8, !tbaa !10
  %186 = load ptr, ptr @upairs2np, align 8, !tbaa !10
  %187 = load ptr, ptr @lpairs2np, align 8, !tbaa !10
  br label %188

188:                                              ; preds = %184, %188
  %189 = phi i64 [ 0, %184 ], [ %193, %188 ]
  %190 = getelementptr inbounds ptr, ptr %185, i64 %189
  store ptr null, ptr %190, align 8, !tbaa !10
  %191 = getelementptr inbounds i32, ptr %186, i64 %189
  store i32 0, ptr %191, align 4, !tbaa !6
  %192 = getelementptr inbounds i32, ptr %187, i64 %189
  store i32 0, ptr %192, align 4, !tbaa !6
  %193 = add nuw nsw i64 %189, 1
  %194 = load i32, ptr %182, align 8, !tbaa !27
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %188, label %197, !llvm.loop !32

197:                                              ; preds = %188, %179
  %198 = phi i32 [ %180, %179 ], [ %194, %188 ]
  %199 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %200 = icmp eq ptr %199, null
  br i1 %200, label %223, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %201, %204
  %205 = phi i64 [ %209, %204 ], [ 0, %201 ]
  %206 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %207 = getelementptr inbounds ptr, ptr %206, i64 %205
  %208 = load ptr, ptr %207, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %208, i32 noundef 0, i32 noundef 1) #34
  %209 = add nuw nsw i64 %205, 1
  %210 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %204, label %213, !llvm.loop !33

213:                                              ; preds = %204
  %214 = trunc i64 %209 to i32
  %215 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %216 = load ptr, ptr @prm, align 8, !tbaa !10
  br label %217

217:                                              ; preds = %213, %201
  %218 = phi ptr [ %181, %201 ], [ %216, %213 ]
  %219 = phi ptr [ %199, %201 ], [ %215, %213 ]
  %220 = phi i32 [ 0, %201 ], [ %214, %213 ]
  store i32 %220, ptr %6, align 4, !tbaa !6
  tail call void @free(ptr noundef %219) #34
  %221 = getelementptr inbounds %struct.parm, ptr %218, i64 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !27
  br label %223

223:                                              ; preds = %217, %197
  %224 = phi i32 [ %222, %217 ], [ %198, %197 ]
  store i32 -1, ptr @nb_pairs, align 4, !tbaa !6
  %225 = load ptr, ptr @upairs, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %225, i32 noundef 0, i32 noundef %224) #34
  %226 = load ptr, ptr @lpairs, align 8, !tbaa !10
  %227 = load ptr, ptr @prm, align 8, !tbaa !10
  %228 = getelementptr inbounds %struct.parm, ptr %227, i64 0, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %226, i32 noundef 0, i32 noundef %229) #34
  %230 = load ptr, ptr @prm, align 8, !tbaa !10
  %231 = getelementptr inbounds %struct.parm, ptr %230, i64 0, i32 4
  %232 = load i32, ptr %231, align 8, !tbaa !27
  %233 = tail call ptr @ivector(i32 noundef 0, i32 noundef %232) #34
  store ptr %233, ptr @upairs, align 8, !tbaa !10
  %234 = load ptr, ptr @prm, align 8, !tbaa !10
  %235 = getelementptr inbounds %struct.parm, ptr %234, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !27
  %237 = tail call ptr @ivector(i32 noundef 0, i32 noundef %236) #34
  store ptr %237, ptr @lpairs, align 8, !tbaa !10
  %238 = load ptr, ptr @prm, align 8, !tbaa !10
  %239 = getelementptr inbounds %struct.parm, ptr %238, i64 0, i32 4
  %240 = load i32, ptr %239, align 8, !tbaa !27
  %241 = sext i32 %240 to i64
  %242 = shl nsw i64 %241, 3
  %243 = tail call noalias ptr @malloc(i64 noundef %242) #35
  store ptr %243, ptr @pairlist, align 8, !tbaa !10
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %254

245:                                              ; preds = %223
  %246 = load ptr, ptr @nabout, align 8, !tbaa !10
  %247 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 45, i64 1, ptr %246)
  %248 = load ptr, ptr @nabout, align 8, !tbaa !10
  %249 = tail call i32 @fflush(ptr noundef %248) #31
  %250 = tail call i32 @mpierror(i32 noundef -1) #31
  %251 = load ptr, ptr @prm, align 8, !tbaa !10
  %252 = getelementptr inbounds %struct.parm, ptr %251, i64 0, i32 4
  %253 = load i32, ptr %252, align 8, !tbaa !27
  br label %254

254:                                              ; preds = %245, %223
  %255 = phi i32 [ %253, %245 ], [ %240, %223 ]
  %256 = phi ptr [ %251, %245 ], [ %238, %223 ]
  %257 = getelementptr inbounds %struct.parm, ptr %256, i64 0, i32 4
  %258 = icmp sgt i32 %255, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %254
  %260 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %261 = load ptr, ptr @upairs, align 8, !tbaa !10
  %262 = load ptr, ptr @lpairs, align 8, !tbaa !10
  br label %263

263:                                              ; preds = %259, %263
  %264 = phi i64 [ 0, %259 ], [ %268, %263 ]
  %265 = getelementptr inbounds ptr, ptr %260, i64 %264
  store ptr null, ptr %265, align 8, !tbaa !10
  %266 = getelementptr inbounds i32, ptr %261, i64 %264
  store i32 0, ptr %266, align 4, !tbaa !6
  %267 = getelementptr inbounds i32, ptr %262, i64 %264
  store i32 0, ptr %267, align 4, !tbaa !6
  %268 = add nuw nsw i64 %264, 1
  %269 = load i32, ptr %257, align 8, !tbaa !27
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %263, label %272, !llvm.loop !34

272:                                              ; preds = %263, %254
  %273 = load ptr, ptr @frozen, align 8, !tbaa !10
  %274 = tail call i32 @set_belly_mask(ptr noundef %0, ptr noundef %1, ptr noundef %273) #34
  store i32 %274, ptr @nfrozen, align 4, !tbaa !6
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = load ptr, ptr @nabout, align 8, !tbaa !10
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.57, i32 noundef %274, ptr noundef %1) #31
  br label %279

279:                                              ; preds = %276, %272
  %280 = load ptr, ptr @N14pearlist, align 8, !tbaa !10
  %281 = icmp eq ptr %280, null
  br i1 %281, label %300, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %282, %285
  %286 = phi i64 [ %290, %285 ], [ 0, %282 ]
  %287 = load ptr, ptr @N14pearlist, align 8, !tbaa !10
  %288 = getelementptr inbounds ptr, ptr %287, i64 %286
  %289 = load ptr, ptr %288, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %289, i32 noundef 0, i32 noundef 1) #34
  %290 = add nuw nsw i64 %286, 1
  %291 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %290, %292
  br i1 %293, label %285, label %294, !llvm.loop !35

294:                                              ; preds = %285
  %295 = trunc i64 %290 to i32
  %296 = load ptr, ptr @N14pearlist, align 8, !tbaa !10
  br label %297

297:                                              ; preds = %294, %282
  %298 = phi ptr [ %280, %282 ], [ %296, %294 ]
  %299 = phi i32 [ 0, %282 ], [ %295, %294 ]
  store i32 %299, ptr %6, align 4, !tbaa !6
  tail call void @free(ptr noundef %298) #34
  br label %300

300:                                              ; preds = %297, %279
  %301 = load ptr, ptr @prm, align 8, !tbaa !10
  %302 = getelementptr inbounds %struct.parm, ptr %301, i64 0, i32 4
  %303 = load i32, ptr %302, align 8, !tbaa !27
  %304 = sext i32 %303 to i64
  %305 = shl nsw i64 %304, 3
  %306 = tail call noalias ptr @malloc(i64 noundef %305) #35
  store ptr %306, ptr @N14pearlist, align 8, !tbaa !10
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %317

308:                                              ; preds = %300
  %309 = load ptr, ptr @nabout, align 8, !tbaa !10
  %310 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 48, i64 1, ptr %309)
  %311 = load ptr, ptr @nabout, align 8, !tbaa !10
  %312 = tail call i32 @fflush(ptr noundef %311) #31
  %313 = tail call i32 @mpierror(i32 noundef -1) #31
  %314 = load ptr, ptr @prm, align 8, !tbaa !10
  %315 = getelementptr inbounds %struct.parm, ptr %314, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !27
  br label %317

317:                                              ; preds = %308, %300
  %318 = phi i32 [ %316, %308 ], [ %303, %300 ]
  %319 = phi ptr [ %314, %308 ], [ %301, %300 ]
  %320 = icmp sgt i32 %318, 0
  br i1 %320, label %321, label %370

321:                                              ; preds = %317
  %322 = load ptr, ptr @N14pearlist, align 8, !tbaa !10
  br label %323

323:                                              ; preds = %321, %361
  %324 = phi ptr [ %319, %321 ], [ %362, %361 ]
  %325 = phi ptr [ %322, %321 ], [ %363, %361 ]
  %326 = phi i64 [ 0, %321 ], [ %365, %361 ]
  %327 = phi i32 [ 0, %321 ], [ %364, %361 ]
  %328 = getelementptr inbounds ptr, ptr %325, i64 %326
  store ptr null, ptr %328, align 8, !tbaa !10
  %329 = getelementptr inbounds %struct.parm, ptr %324, i64 0, i32 91
  %330 = load ptr, ptr %329, align 8, !tbaa !36
  %331 = getelementptr inbounds i32, ptr %330, i64 %326
  %332 = load i32, ptr %331, align 4, !tbaa !6
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %361

334:                                              ; preds = %323
  %335 = tail call ptr @ivector(i32 noundef 0, i32 noundef %332) #34
  %336 = load ptr, ptr @N14pearlist, align 8, !tbaa !10
  %337 = getelementptr inbounds ptr, ptr %336, i64 %326
  store ptr %335, ptr %337, align 8, !tbaa !10
  %338 = load ptr, ptr @prm, align 8, !tbaa !10
  %339 = getelementptr inbounds %struct.parm, ptr %338, i64 0, i32 91
  %340 = load ptr, ptr %339, align 8, !tbaa !36
  %341 = getelementptr inbounds i32, ptr %340, i64 %326
  %342 = load i32, ptr %341, align 4, !tbaa !6
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.parm, ptr %338, i64 0, i32 92
  %346 = load ptr, ptr %345, align 8, !tbaa !37
  %347 = sext i32 %327 to i64
  %348 = getelementptr i32, ptr %346, i64 %347
  br label %349

349:                                              ; preds = %344, %349
  %350 = phi i64 [ 0, %344 ], [ %354, %349 ]
  %351 = getelementptr i32, ptr %348, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !6
  %353 = getelementptr inbounds i32, ptr %335, i64 %350
  store i32 %352, ptr %353, align 4, !tbaa !6
  %354 = add nuw nsw i64 %350, 1
  %355 = load i32, ptr %341, align 4, !tbaa !6
  %356 = sext i32 %355 to i64
  %357 = icmp slt i64 %354, %356
  br i1 %357, label %349, label %358, !llvm.loop !38

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
  %367 = load i32, ptr %366, align 8, !tbaa !27
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %365, %368
  br i1 %369, label %323, label %370, !llvm.loop !39

370:                                              ; preds = %361, %317
  %371 = phi ptr [ %319, %317 ], [ %362, %361 ]
  %372 = load ptr, ptr @IexclAt, align 8, !tbaa !10
  %373 = icmp eq ptr %372, null
  br i1 %373, label %394, label %374

374:                                              ; preds = %370
  %375 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %390

377:                                              ; preds = %374, %377
  %378 = phi i64 [ %382, %377 ], [ 0, %374 ]
  %379 = load ptr, ptr @IexclAt, align 8, !tbaa !10
  %380 = getelementptr inbounds ptr, ptr %379, i64 %378
  %381 = load ptr, ptr %380, align 8, !tbaa !10
  tail call void @free_ivector(ptr noundef %381, i32 noundef 0, i32 noundef 1) #34
  %382 = add nuw nsw i64 %378, 1
  %383 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %384 = sext i32 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %377, label %386, !llvm.loop !40

386:                                              ; preds = %377
  %387 = trunc i64 %382 to i32
  %388 = load ptr, ptr @IexclAt, align 8, !tbaa !10
  %389 = load ptr, ptr @prm, align 8, !tbaa !10
  br label %390

390:                                              ; preds = %386, %374
  %391 = phi ptr [ %371, %374 ], [ %389, %386 ]
  %392 = phi ptr [ %372, %374 ], [ %388, %386 ]
  %393 = phi i32 [ 0, %374 ], [ %387, %386 ]
  store i32 %393, ptr %6, align 4, !tbaa !6
  tail call void @free(ptr noundef %392) #34
  br label %394

394:                                              ; preds = %390, %370
  %395 = phi ptr [ %391, %390 ], [ %371, %370 ]
  %396 = getelementptr inbounds %struct.parm, ptr %395, i64 0, i32 4
  %397 = load i32, ptr %396, align 8, !tbaa !27
  %398 = sext i32 %397 to i64
  %399 = shl nsw i64 %398, 3
  %400 = tail call noalias ptr @malloc(i64 noundef %399) #35
  store ptr %400, ptr @IexclAt, align 8, !tbaa !10
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %411

402:                                              ; preds = %394
  %403 = load ptr, ptr @nabout, align 8, !tbaa !10
  %404 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 44, i64 1, ptr %403)
  %405 = load ptr, ptr @nabout, align 8, !tbaa !10
  %406 = tail call i32 @fflush(ptr noundef %405) #31
  %407 = tail call i32 @mpierror(i32 noundef -1) #31
  %408 = load ptr, ptr @prm, align 8, !tbaa !10
  %409 = getelementptr inbounds %struct.parm, ptr %408, i64 0, i32 4
  %410 = load i32, ptr %409, align 8, !tbaa !27
  br label %411

411:                                              ; preds = %402, %394
  %412 = phi i32 [ %410, %402 ], [ %397, %394 ]
  %413 = phi ptr [ %408, %402 ], [ %395, %394 ]
  %414 = icmp sgt i32 %412, 0
  br i1 %414, label %415, label %465

415:                                              ; preds = %411
  %416 = load ptr, ptr @IexclAt, align 8, !tbaa !10
  br label %417

417:                                              ; preds = %415, %452
  %418 = phi ptr [ %413, %415 ], [ %453, %452 ]
  %419 = phi ptr [ %416, %415 ], [ %455, %452 ]
  %420 = phi i64 [ 0, %415 ], [ %457, %452 ]
  %421 = phi i32 [ 0, %415 ], [ %456, %452 ]
  %422 = getelementptr inbounds ptr, ptr %419, i64 %420
  store ptr null, ptr %422, align 8, !tbaa !10
  %423 = getelementptr inbounds %struct.parm, ptr %418, i64 0, i32 60
  %424 = load ptr, ptr %423, align 8, !tbaa !41
  %425 = getelementptr inbounds i32, ptr %424, i64 %420
  %426 = load i32, ptr %425, align 4, !tbaa !6
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %452

428:                                              ; preds = %417
  %429 = tail call ptr @ivector(i32 noundef 0, i32 noundef %426) #34
  %430 = load ptr, ptr @IexclAt, align 8, !tbaa !10
  %431 = getelementptr inbounds ptr, ptr %430, i64 %420
  store ptr %429, ptr %431, align 8, !tbaa !10
  %432 = load ptr, ptr @prm, align 8, !tbaa !10
  %433 = getelementptr inbounds %struct.parm, ptr %432, i64 0, i32 60
  %434 = load ptr, ptr %433, align 8, !tbaa !41
  %435 = getelementptr inbounds i32, ptr %434, i64 %420
  %436 = load i32, ptr %435, align 4, !tbaa !6
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %452

438:                                              ; preds = %428
  %439 = getelementptr inbounds %struct.parm, ptr %432, i64 0, i32 63
  %440 = load ptr, ptr %439, align 8, !tbaa !42
  %441 = sext i32 %421 to i64
  %442 = getelementptr i32, ptr %440, i64 %441
  br label %443

443:                                              ; preds = %438, %443
  %444 = phi i64 [ 0, %438 ], [ %448, %443 ]
  %445 = getelementptr i32, ptr %442, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !6
  %447 = getelementptr inbounds i32, ptr %429, i64 %444
  store i32 %446, ptr %447, align 4, !tbaa !6
  %448 = add nuw nsw i64 %444, 1
  %449 = load i32, ptr %435, align 4, !tbaa !6
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %443, label %452, !llvm.loop !43

452:                                              ; preds = %443, %428, %417
  %453 = phi ptr [ %432, %428 ], [ %418, %417 ], [ %432, %443 ]
  %454 = phi i32 [ %436, %428 ], [ %426, %417 ], [ %449, %443 ]
  %455 = phi ptr [ %430, %428 ], [ %419, %417 ], [ %430, %443 ]
  %456 = add nsw i32 %454, %421
  %457 = add nuw nsw i64 %420, 1
  %458 = getelementptr inbounds %struct.parm, ptr %453, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !27
  %460 = sext i32 %459 to i64
  %461 = icmp slt i64 %457, %460
  br i1 %461, label %417, label %462, !llvm.loop !44

462:                                              ; preds = %452
  %463 = trunc i64 %457 to i32
  %464 = icmp sgt i32 %459, 0
  br label %465

465:                                              ; preds = %462, %411
  %466 = phi i1 [ false, %411 ], [ %464, %462 ]
  %467 = phi ptr [ %413, %411 ], [ %453, %462 ]
  %468 = phi i32 [ 0, %411 ], [ %463, %462 ]
  store i32 %468, ptr %6, align 4, !tbaa !6
  %469 = load ptr, ptr @JexclAt, align 8, !tbaa !10
  %470 = icmp eq ptr %469, null
  br i1 %470, label %503, label %471

471:                                              ; preds = %465
  br i1 %466, label %472, label %500

472:                                              ; preds = %471, %491
  %473 = phi i64 [ %492, %491 ], [ 0, %471 ]
  %474 = load ptr, ptr @JexclAt, align 8, !tbaa !10
  %475 = getelementptr inbounds ptr, ptr %474, i64 %473
  %476 = load ptr, ptr %475, align 8, !tbaa !10
  %477 = icmp eq ptr %476, null
  br i1 %477, label %491, label %478

478:                                              ; preds = %472
  %479 = load ptr, ptr @Jblo, align 8, !tbaa !10
  %480 = icmp eq ptr %479, null
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds i32, ptr %479, i64 %473
  %483 = load i32, ptr %482, align 4, !tbaa !6
  tail call void @free_ivector(ptr noundef nonnull %476, i32 noundef 0, i32 noundef %483) #34
  br label %491

484:                                              ; preds = %478
  %485 = load ptr, ptr @nabout, align 8, !tbaa !10
  %486 = trunc i64 %473 to i32
  %487 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %485, ptr noundef nonnull @.str.60, i32 noundef %486) #31
  %488 = load ptr, ptr @nabout, align 8, !tbaa !10
  %489 = tail call i32 @fflush(ptr noundef %488) #31
  %490 = tail call i32 @mpierror(i32 noundef -1) #31
  br label %491

491:                                              ; preds = %472, %484, %481
  %492 = add nuw nsw i64 %473, 1
  %493 = load ptr, ptr @prm, align 8, !tbaa !10
  %494 = getelementptr inbounds %struct.parm, ptr %493, i64 0, i32 4
  %495 = load i32, ptr %494, align 8, !tbaa !27
  %496 = sext i32 %495 to i64
  %497 = icmp slt i64 %492, %496
  br i1 %497, label %472, label %498, !llvm.loop !45

498:                                              ; preds = %491
  %499 = load ptr, ptr @JexclAt, align 8, !tbaa !10
  br label %500

500:                                              ; preds = %498, %471
  %501 = phi ptr [ %493, %498 ], [ %467, %471 ]
  %502 = phi ptr [ %499, %498 ], [ %469, %471 ]
  tail call void @free(ptr noundef %502) #34
  br label %503

503:                                              ; preds = %500, %465
  %504 = phi ptr [ %501, %500 ], [ %467, %465 ]
  %505 = load ptr, ptr @Jblo, align 8, !tbaa !10
  %506 = icmp eq ptr %505, null
  br i1 %506, label %511, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.parm, ptr %504, i64 0, i32 4
  %509 = load i32, ptr %508, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef nonnull %505, i32 noundef 0, i32 noundef %509) #34
  %510 = load ptr, ptr @prm, align 8, !tbaa !10
  br label %511

511:                                              ; preds = %507, %503
  %512 = phi ptr [ %510, %507 ], [ %504, %503 ]
  %513 = getelementptr inbounds %struct.parm, ptr %512, i64 0, i32 4
  %514 = load i32, ptr %513, align 8, !tbaa !27
  %515 = tail call ptr @ivector(i32 noundef 0, i32 noundef %514) #34
  store ptr %515, ptr @Jblo, align 8, !tbaa !10
  %516 = load ptr, ptr @prm, align 8, !tbaa !10
  %517 = getelementptr inbounds %struct.parm, ptr %516, i64 0, i32 4
  %518 = load i32, ptr %517, align 8, !tbaa !27
  %519 = sext i32 %518 to i64
  %520 = shl nsw i64 %519, 3
  %521 = tail call noalias ptr @malloc(i64 noundef %520) #35
  store ptr %521, ptr @JexclAt, align 8, !tbaa !10
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %534

523:                                              ; preds = %511
  %524 = load ptr, ptr @nabout, align 8, !tbaa !10
  %525 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 44, i64 1, ptr %524)
  %526 = load ptr, ptr @nabout, align 8, !tbaa !10
  %527 = tail call i32 @fflush(ptr noundef %526) #31
  %528 = tail call i32 @mpierror(i32 noundef -1) #31
  %529 = load ptr, ptr @prm, align 8, !tbaa !10
  %530 = getelementptr inbounds %struct.parm, ptr %529, i64 0, i32 4
  %531 = load i32, ptr %530, align 8, !tbaa !27
  %532 = sext i32 %531 to i64
  %533 = shl nsw i64 %532, 3
  br label %534

534:                                              ; preds = %523, %511
  %535 = phi i64 [ %533, %523 ], [ %520, %511 ]
  %536 = phi i32 [ %531, %523 ], [ %518, %511 ]
  %537 = tail call noalias ptr @malloc(i64 noundef %535) #35
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %548

539:                                              ; preds = %534
  %540 = load ptr, ptr @nabout, align 8, !tbaa !10
  %541 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 43, i64 1, ptr %540)
  %542 = load ptr, ptr @nabout, align 8, !tbaa !10
  %543 = tail call i32 @fflush(ptr noundef %542) #31
  %544 = tail call i32 @mpierror(i32 noundef -1) #31
  %545 = load ptr, ptr @prm, align 8, !tbaa !10
  %546 = getelementptr inbounds %struct.parm, ptr %545, i64 0, i32 4
  %547 = load i32, ptr %546, align 8, !tbaa !27
  br label %548

548:                                              ; preds = %539, %534
  %549 = phi i32 [ %547, %539 ], [ %536, %534 ]
  %550 = tail call ptr @ivector(i32 noundef 0, i32 noundef %549) #34
  %551 = load ptr, ptr @prm, align 8, !tbaa !10
  %552 = getelementptr inbounds %struct.parm, ptr %551, i64 0, i32 4
  %553 = load i32, ptr %552, align 8, !tbaa !27
  %554 = icmp sgt i32 %553, 0
  br i1 %554, label %555, label %573

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.parm, ptr %551, i64 0, i32 60
  %557 = load ptr, ptr %556, align 8, !tbaa !41
  br label %558

558:                                              ; preds = %555, %558
  %559 = phi i64 [ 0, %555 ], [ %565, %558 ]
  %560 = phi i32 [ 0, %555 ], [ %564, %558 ]
  %561 = getelementptr inbounds i32, ptr %550, i64 %559
  store i32 %560, ptr %561, align 4, !tbaa !6
  %562 = getelementptr inbounds i32, ptr %557, i64 %559
  %563 = load i32, ptr %562, align 4, !tbaa !6
  %564 = add nsw i32 %563, %560
  %565 = add nuw nsw i64 %559, 1
  %566 = load i32, ptr %552, align 8, !tbaa !27
  %567 = sext i32 %566 to i64
  %568 = icmp slt i64 %565, %567
  br i1 %568, label %558, label %569, !llvm.loop !46

569:                                              ; preds = %558
  %570 = trunc i64 %565 to i32
  %571 = sext i32 %564 to i64
  %572 = shl nsw i64 %571, 4
  br label %573

573:                                              ; preds = %569, %548
  %574 = phi i32 [ %553, %548 ], [ %566, %569 ]
  %575 = phi i32 [ 0, %548 ], [ %570, %569 ]
  %576 = phi i64 [ 0, %548 ], [ %572, %569 ]
  store i32 %575, ptr %6, align 4, !tbaa !6
  %577 = tail call noalias ptr @malloc(i64 noundef %576) #35
  %578 = icmp eq ptr %577, null
  br i1 %578, label %579, label %588

579:                                              ; preds = %573
  %580 = load ptr, ptr @nabout, align 8, !tbaa !10
  %581 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 43, i64 1, ptr %580)
  %582 = load ptr, ptr @nabout, align 8, !tbaa !10
  %583 = tail call i32 @fflush(ptr noundef %582) #31
  %584 = tail call i32 @mpierror(i32 noundef -1) #31
  %585 = load ptr, ptr @prm, align 8, !tbaa !10
  %586 = getelementptr inbounds %struct.parm, ptr %585, i64 0, i32 4
  %587 = load i32, ptr %586, align 8, !tbaa !27
  br label %588

588:                                              ; preds = %579, %573
  %589 = phi i32 [ %587, %579 ], [ %574, %573 ]
  %590 = phi ptr [ %585, %579 ], [ %551, %573 ]
  %591 = getelementptr inbounds %struct.parm, ptr %590, i64 0, i32 4
  %592 = icmp sgt i32 %589, 0
  br i1 %592, label %593, label %695

593:                                              ; preds = %588
  %594 = load ptr, ptr @Jblo, align 8, !tbaa !10
  br label %602

595:                                              ; preds = %602
  %596 = icmp sgt i32 %607, 0
  br i1 %596, label %597, label %695

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.parm, ptr %590, i64 0, i32 60
  %599 = getelementptr inbounds %struct.parm, ptr %590, i64 0, i32 63
  %600 = load ptr, ptr @Jblo, align 8
  %601 = load ptr, ptr %598, align 8, !tbaa !41
  br label %615

602:                                              ; preds = %593, %602
  %603 = phi i64 [ 0, %593 ], [ %606, %602 ]
  %604 = getelementptr inbounds ptr, ptr %537, i64 %603
  store ptr null, ptr %604, align 8, !tbaa !10
  %605 = getelementptr inbounds i32, ptr %594, i64 %603
  store i32 0, ptr %605, align 4, !tbaa !6
  %606 = add nuw nsw i64 %603, 1
  %607 = load i32, ptr %591, align 8, !tbaa !27
  %608 = sext i32 %607 to i64
  %609 = icmp slt i64 %606, %608
  br i1 %609, label %602, label %595, !llvm.loop !47

610:                                              ; preds = %653
  %611 = load i32, ptr %591, align 8, !tbaa !27
  %612 = icmp sgt i32 %611, 0
  br i1 %612, label %613, label %695

613:                                              ; preds = %610
  %614 = load ptr, ptr @JexclAt, align 8, !tbaa !10
  br label %656

615:                                              ; preds = %597, %653
  %616 = phi i32 [ %607, %597 ], [ %618, %653 ]
  %617 = phi ptr [ %577, %597 ], [ %654, %653 ]
  %618 = add nsw i32 %616, -1
  %619 = zext nneg i32 %618 to i64
  %620 = getelementptr inbounds i32, ptr %601, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !6
  %622 = icmp sgt i32 %621, 0
  br i1 %622, label %623, label %653

623:                                              ; preds = %615
  %624 = getelementptr inbounds i32, ptr %550, i64 %619
  %625 = load i32, ptr %624, align 4, !tbaa !6
  %626 = add nsw i32 %621, %625
  %627 = sext i32 %625 to i64
  %628 = sext i32 %626 to i64
  %629 = load ptr, ptr %599, align 8, !tbaa !42
  br label %630

630:                                              ; preds = %623, %649
  %631 = phi i64 [ %627, %623 ], [ %651, %649 ]
  %632 = phi ptr [ %617, %623 ], [ %650, %649 ]
  %633 = getelementptr inbounds i32, ptr %629, i64 %631
  %634 = load i32, ptr %633, align 4, !tbaa !6
  %635 = add nsw i32 %634, -1
  %636 = icmp sgt i32 %634, 0
  br i1 %636, label %637, label %649

637:                                              ; preds = %630
  %638 = load i32, ptr %591, align 8, !tbaa !27
  %639 = icmp sgt i32 %634, %638
  br i1 %639, label %649, label %640

640:                                              ; preds = %637
  store i32 %618, ptr %632, align 8, !tbaa !48
  %641 = zext nneg i32 %635 to i64
  %642 = getelementptr inbounds ptr, ptr %537, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !10
  %644 = getelementptr inbounds %struct.atomstr, ptr %632, i64 0, i32 1
  store ptr %643, ptr %644, align 8, !tbaa !50
  %645 = getelementptr inbounds %struct.atomstr, ptr %632, i64 1
  store ptr %632, ptr %642, align 8, !tbaa !10
  %646 = getelementptr inbounds i32, ptr %600, i64 %641
  %647 = load i32, ptr %646, align 4, !tbaa !6
  %648 = add nsw i32 %647, 1
  store i32 %648, ptr %646, align 4, !tbaa !6
  br label %649

649:                                              ; preds = %630, %637, %640
  %650 = phi ptr [ %645, %640 ], [ %632, %637 ], [ %632, %630 ]
  %651 = add nsw i64 %631, 1
  %652 = icmp slt i64 %651, %628
  br i1 %652, label %630, label %653, !llvm.loop !51

653:                                              ; preds = %649, %615
  %654 = phi ptr [ %617, %615 ], [ %650, %649 ]
  %655 = icmp sgt i32 %616, 1
  br i1 %655, label %615, label %610, !llvm.loop !52

656:                                              ; preds = %613, %687
  %657 = phi ptr [ %614, %613 ], [ %688, %687 ]
  %658 = phi i64 [ 0, %613 ], [ %689, %687 ]
  %659 = getelementptr inbounds ptr, ptr %657, i64 %658
  store ptr null, ptr %659, align 8, !tbaa !10
  %660 = getelementptr inbounds ptr, ptr %537, i64 %658
  %661 = load ptr, ptr %660, align 8, !tbaa !10
  %662 = icmp eq ptr %661, null
  br i1 %662, label %687, label %663

663:                                              ; preds = %656
  %664 = load ptr, ptr @Jblo, align 8, !tbaa !10
  %665 = getelementptr inbounds i32, ptr %664, i64 %658
  %666 = load i32, ptr %665, align 4, !tbaa !6
  %667 = tail call ptr @ivector(i32 noundef 0, i32 noundef %666) #34
  %668 = load ptr, ptr @JexclAt, align 8, !tbaa !10
  %669 = getelementptr inbounds ptr, ptr %668, i64 %658
  store ptr %667, ptr %669, align 8, !tbaa !10
  %670 = load ptr, ptr @Jblo, align 8, !tbaa !10
  %671 = getelementptr inbounds i32, ptr %670, i64 %658
  %672 = load i32, ptr %671, align 4, !tbaa !6
  %673 = icmp sgt i32 %672, 0
  br i1 %673, label %674, label %687

674:                                              ; preds = %663, %674
  %675 = phi i64 [ %682, %674 ], [ 0, %663 ]
  %676 = phi ptr [ %681, %674 ], [ %661, %663 ]
  %677 = load i32, ptr %676, align 8, !tbaa !48
  %678 = add nsw i32 %677, 1
  %679 = getelementptr inbounds i32, ptr %667, i64 %675
  store i32 %678, ptr %679, align 4, !tbaa !6
  %680 = getelementptr inbounds %struct.atomstr, ptr %676, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !50
  %682 = add nuw nsw i64 %675, 1
  %683 = load i32, ptr %671, align 4, !tbaa !6
  %684 = sext i32 %683 to i64
  %685 = icmp slt i64 %682, %684
  br i1 %685, label %674, label %686, !llvm.loop !53

686:                                              ; preds = %674
  store ptr %681, ptr %660, align 8, !tbaa !10
  br label %687

687:                                              ; preds = %663, %686, %656
  %688 = phi ptr [ %657, %656 ], [ %668, %686 ], [ %668, %663 ]
  %689 = add nuw nsw i64 %658, 1
  %690 = load ptr, ptr @prm, align 8, !tbaa !10
  %691 = getelementptr inbounds %struct.parm, ptr %690, i64 0, i32 4
  %692 = load i32, ptr %691, align 8, !tbaa !27
  %693 = sext i32 %692 to i64
  %694 = icmp slt i64 %689, %693
  br i1 %694, label %656, label %695, !llvm.loop !54

695:                                              ; preds = %687, %588, %595, %610
  %696 = phi ptr [ %590, %610 ], [ %590, %595 ], [ %590, %588 ], [ %690, %687 ]
  %697 = getelementptr inbounds %struct.parm, ptr %696, i64 0, i32 4
  tail call void @free(ptr noundef %577) #34
  tail call void @free(ptr noundef %537) #34
  %698 = load i32, ptr %697, align 8, !tbaa !27
  tail call void @free_ivector(ptr noundef %550, i32 noundef 0, i32 noundef %698) #34
  store double 0.000000e+00, ptr @tdiagd, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tdiag, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tlevel, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tnewton, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tcholesky, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tdgeev, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tmmetwo, align 8, !tbaa !13
  store double 0.000000e+00, ptr @tmmeone, align 8, !tbaa !13
  store i32 -3, ptr %6, align 4, !tbaa !6
  %699 = load ptr, ptr @prm, align 8, !tbaa !10
  %700 = getelementptr inbounds %struct.parm, ptr %699, i64 0, i32 4
  %701 = load i32, ptr %700, align 8, !tbaa !27
  %702 = load i32, ptr @mme_init.nold, align 4, !tbaa !6
  %703 = icmp sgt i32 %701, %702
  br i1 %703, label %704, label %709

704:                                              ; preds = %695
  %705 = call fastcc double @mme34(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %6) #31
  %706 = load ptr, ptr @prm, align 8, !tbaa !10
  %707 = getelementptr inbounds %struct.parm, ptr %706, i64 0, i32 4
  %708 = load i32, ptr %707, align 8, !tbaa !27
  br label %709

709:                                              ; preds = %704, %695
  %710 = phi i32 [ %708, %704 ], [ %701, %695 ]
  store i32 %710, ptr @mme_init.nold, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  ret i32 0
}

; Function Attrs: optsize
declare ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_vector(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @vector(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #21
  %11 = load ptr, ptr @prm, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.parm, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !27
  %14 = sext i32 %13 to i64
  %15 = tail call i32 @omp_get_max_threads() #31
  %16 = load ptr, ptr @mme34.reqack, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = tail call ptr @ivector(i32 noundef 0, i32 noundef %15) #34
  store ptr %19, ptr @mme34.reqack, align 8, !tbaa !10
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, ptr %2, align 4, !tbaa !6
  switch i32 %21, label %53 [
    i32 -3, label %22
    i32 0, label %45
  ]

22:                                               ; preds = %20
  %23 = load ptr, ptr @lpairs, align 8, !tbaa !10
  %24 = load ptr, ptr @upairs, align 8, !tbaa !10
  %25 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %26 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %27 = load ptr, ptr @prm, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.parm, ptr %27, i64 0, i32 52
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.parm, ptr %27, i64 0, i32 51
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.parm, ptr %27, i64 0, i32 37
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = call fastcc double @egb(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %0, ptr noundef %26, ptr noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1) #31
  %35 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i1, ptr @dim, align 4
  %39 = select i1 %38, i64 4, i64 3
  %40 = mul nsw i64 %39, %14
  tail call void @free_vector(ptr noundef nonnull %35, i64 noundef 0, i64 noundef %40) #34
  store ptr null, ptr @mme34.grad, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %37, %22
  %42 = load ptr, ptr @mme34.reqack, align 8, !tbaa !10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %368, label %44

44:                                               ; preds = %41
  tail call void @free_ivector(ptr noundef nonnull %42, i32 noundef 0, i32 noundef %15) #34
  store ptr null, ptr @mme34.reqack, align 8, !tbaa !10
  br label %368

45:                                               ; preds = %20
  %46 = load ptr, ptr @nabout, align 8, !tbaa !10
  %47 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 20, i64 1, ptr %46)
  %48 = load ptr, ptr @nabout, align 8, !tbaa !10
  %49 = tail call i32 @fflush(ptr noundef %48) #31
  %50 = load i32, ptr %2, align 4, !tbaa !6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store double 0.000000e+00, ptr @tconjgrad, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %20, %52, %45
  %54 = phi i32 [ 0, %52 ], [ %50, %45 ], [ %21, %20 ]
  %55 = load ptr, ptr @chknm, align 8, !tbaa !10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = icmp sgt i32 %54, 0
  %59 = urem i32 %54, 10000
  %60 = icmp eq i32 %59, 0
  %61 = and i1 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load ptr, ptr @prm, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.parm, ptr %63, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !27
  tail call void @checkpoint(ptr noundef nonnull %55, i32 noundef %65, ptr noundef %0, i32 noundef %54) #31
  br label %66

66:                                               ; preds = %62, %57, %53
  %67 = load i32, ptr @nb_pairs, align 4, !tbaa !6
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %2, align 4, !tbaa !6
  %71 = icmp sgt i32 %70, 0
  %72 = urem i32 %70, 10
  %73 = icmp eq i32 %72, 0
  %74 = and i1 %71, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69, %66
  %76 = load ptr, ptr @lpairs, align 8, !tbaa !10
  %77 = load ptr, ptr @upairs, align 8, !tbaa !10
  %78 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %79 = load ptr, ptr @prm, align 8, !tbaa !10
  %80 = getelementptr inbounds %struct.parm, ptr %79, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !27
  %82 = load i1, ptr @dim, align 4
  %83 = select i1 %82, i32 4, i32 3
  %84 = load ptr, ptr @frozen, align 8, !tbaa !10
  %85 = tail call i32 @nblist(ptr noundef %76, ptr noundef %77, ptr noundef %78, ptr noundef %0, i32 noundef 0, i32 noundef 1, double noundef 2.000000e+01, i32 noundef %81, i32 noundef %83, ptr noundef %84) #34
  store i32 %85, ptr @nb_pairs, align 4, !tbaa !6
  br label %86

86:                                               ; preds = %75, %69
  %87 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i1, ptr @dim, align 4
  %91 = select i1 %90, i64 4, i64 3
  %92 = mul nsw i64 %91, %14
  %93 = tail call ptr @vector(i64 noundef 0, i64 noundef %92) #34
  store ptr %93, ptr @mme34.grad, align 8, !tbaa !10
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi ptr [ %93, %89 ], [ %87, %86 ]
  %96 = load i1, ptr @dim, align 4
  %97 = select i1 %96, i32 4, i32 3
  %98 = load ptr, ptr @prm, align 8, !tbaa !10
  %99 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !27
  %101 = mul nsw i32 %100, %97
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = zext nneg i32 %101 to i64
  %105 = shl nuw nsw i64 %104, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %95, i8 0, i64 %105, i1 false), !tbaa !13
  br label %106

106:                                              ; preds = %103, %94
  %107 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 6
  %108 = load i32, ptr %107, align 8, !tbaa !58
  %109 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 66
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  %111 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 67
  %112 = load ptr, ptr %111, align 8, !tbaa !60
  %113 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 68
  %114 = load ptr, ptr %113, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 39
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  %117 = getelementptr inbounds %struct.parm, ptr %98, i64 0, i32 40
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = tail call fastcc double @ebond(i32 noundef %108, ptr noundef %110, ptr noundef %112, ptr noundef %114, ptr noundef %116, ptr noundef %118, ptr noundef %0, ptr noundef %95) #31
  %120 = load ptr, ptr @prm, align 8, !tbaa !10
  %121 = getelementptr inbounds %struct.parm, ptr %120, i64 0, i32 7
  %122 = load i32, ptr %121, align 4, !tbaa !64
  %123 = getelementptr inbounds %struct.parm, ptr %120, i64 0, i32 69
  %124 = load ptr, ptr %123, align 8, !tbaa !65
  %125 = getelementptr inbounds %struct.parm, ptr %120, i64 0, i32 70
  %126 = load ptr, ptr %125, align 8, !tbaa !66
  %127 = getelementptr inbounds %struct.parm, ptr %120, i64 0, i32 71
  %128 = load ptr, ptr %127, align 8, !tbaa !67
  %129 = getelementptr inbounds %struct.parm, ptr %120, i64 0, i32 39
  %130 = load ptr, ptr %129, align 8, !tbaa !62
  %131 = getelementptr inbounds %struct.parm, ptr %120, i64 0, i32 40
  %132 = load ptr, ptr %131, align 8, !tbaa !63
  %133 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %134 = tail call fastcc double @ebond(i32 noundef %122, ptr noundef %124, ptr noundef %126, ptr noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %0, ptr noundef %133) #31
  %135 = fadd double %119, %134
  %136 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 3
  store double %135, ptr %136, align 8, !tbaa !13
  %137 = load ptr, ptr @prm, align 8, !tbaa !10
  %138 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 8
  %139 = load i32, ptr %138, align 8, !tbaa !68
  %140 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 72
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  %142 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 73
  %143 = load ptr, ptr %142, align 8, !tbaa !70
  %144 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 74
  %145 = load ptr, ptr %144, align 8, !tbaa !71
  %146 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 75
  %147 = load ptr, ptr %146, align 8, !tbaa !72
  %148 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 41
  %149 = load ptr, ptr %148, align 8, !tbaa !73
  %150 = getelementptr inbounds %struct.parm, ptr %137, i64 0, i32 42
  %151 = load ptr, ptr %150, align 8, !tbaa !74
  %152 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %153 = tail call fastcc double @eangl(i32 noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145, ptr noundef %147, ptr noundef %149, ptr noundef %151, ptr noundef %0, ptr noundef %152) #31
  %154 = load ptr, ptr @prm, align 8, !tbaa !10
  %155 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 17
  %156 = load i32, ptr %155, align 4, !tbaa !75
  %157 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 76
  %158 = load ptr, ptr %157, align 8, !tbaa !76
  %159 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 77
  %160 = load ptr, ptr %159, align 8, !tbaa !77
  %161 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 78
  %162 = load ptr, ptr %161, align 8, !tbaa !78
  %163 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 79
  %164 = load ptr, ptr %163, align 8, !tbaa !79
  %165 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 41
  %166 = load ptr, ptr %165, align 8, !tbaa !73
  %167 = getelementptr inbounds %struct.parm, ptr %154, i64 0, i32 42
  %168 = load ptr, ptr %167, align 8, !tbaa !74
  %169 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %170 = tail call fastcc double @eangl(i32 noundef %156, ptr noundef %158, ptr noundef %160, ptr noundef %162, ptr noundef %164, ptr noundef %166, ptr noundef %168, ptr noundef %0, ptr noundef %169) #31
  %171 = fadd double %153, %170
  %172 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 4
  store double %171, ptr %172, align 16, !tbaa !13
  %173 = load ptr, ptr @prm, align 8, !tbaa !10
  %174 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 10
  %175 = load i32, ptr %174, align 8, !tbaa !80
  %176 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 80
  %177 = load ptr, ptr %176, align 8, !tbaa !81
  %178 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 81
  %179 = load ptr, ptr %178, align 8, !tbaa !82
  %180 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 82
  %181 = load ptr, ptr %180, align 8, !tbaa !83
  %182 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 83
  %183 = load ptr, ptr %182, align 8, !tbaa !84
  %184 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 84
  %185 = load ptr, ptr %184, align 8, !tbaa !85
  %186 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 43
  %187 = load ptr, ptr %186, align 8, !tbaa !86
  %188 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 44
  %189 = load ptr, ptr %188, align 8, !tbaa !87
  %190 = getelementptr inbounds %struct.parm, ptr %173, i64 0, i32 45
  %191 = load ptr, ptr %190, align 8, !tbaa !88
  %192 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %193 = tail call fastcc double @ephi(i32 noundef %175, ptr noundef %177, ptr noundef %179, ptr noundef %181, ptr noundef %183, ptr noundef %185, ptr noundef %187, ptr noundef %189, ptr noundef %191, ptr noundef %0, ptr noundef %192) #31
  %194 = load ptr, ptr @prm, align 8, !tbaa !10
  %195 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 11
  %196 = load i32, ptr %195, align 4, !tbaa !89
  %197 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 85
  %198 = load ptr, ptr %197, align 8, !tbaa !90
  %199 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 86
  %200 = load ptr, ptr %199, align 8, !tbaa !91
  %201 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 87
  %202 = load ptr, ptr %201, align 8, !tbaa !92
  %203 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 88
  %204 = load ptr, ptr %203, align 8, !tbaa !93
  %205 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 89
  %206 = load ptr, ptr %205, align 8, !tbaa !94
  %207 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 43
  %208 = load ptr, ptr %207, align 8, !tbaa !86
  %209 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 44
  %210 = load ptr, ptr %209, align 8, !tbaa !87
  %211 = getelementptr inbounds %struct.parm, ptr %194, i64 0, i32 45
  %212 = load ptr, ptr %211, align 8, !tbaa !88
  %213 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %214 = tail call fastcc double @ephi(i32 noundef %196, ptr noundef %198, ptr noundef %200, ptr noundef %202, ptr noundef %204, ptr noundef %206, ptr noundef %208, ptr noundef %210, ptr noundef %212, ptr noundef %0, ptr noundef %213) #31
  %215 = fadd double %193, %214
  %216 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 5
  store double %215, ptr %216, align 8, !tbaa !13
  %217 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 6
  store double 0.000000e+00, ptr %217, align 16, !tbaa !13
  %218 = load ptr, ptr @lpairs, align 8, !tbaa !10
  %219 = load ptr, ptr @prm, align 8, !tbaa !10
  %220 = getelementptr inbounds %struct.parm, ptr %219, i64 0, i32 91
  %221 = load ptr, ptr %220, align 8, !tbaa !36
  %222 = load ptr, ptr @N14pearlist, align 8, !tbaa !10
  %223 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  call fastcc void @nbond(ptr noundef %218, ptr noundef %221, ptr noundef %222, i32 noundef 1, ptr noundef %0, ptr noundef %223, ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef 2.000000e+00, double noundef 1.200000e+00) #31
  %224 = load double, ptr %6, align 8, !tbaa !13
  %225 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 7
  store double %224, ptr %225, align 8, !tbaa !13
  %226 = load double, ptr %7, align 8, !tbaa !13
  %227 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 8
  store double %226, ptr %227, align 16, !tbaa !13
  %228 = load i32, ptr @nconstrained, align 4, !tbaa !6
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %106
  %231 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %232 = tail call fastcc double @econs(ptr noundef %0, ptr noundef %231) #31
  br label %233

233:                                              ; preds = %106, %230
  %234 = phi double [ %232, %230 ], [ 0.000000e+00, %106 ]
  %235 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 9
  store double %234, ptr %235, align 8, !tbaa !13
  %236 = load i32, ptr @gb, align 4, !tbaa !6
  %237 = icmp eq i32 %236, 0
  %238 = load ptr, ptr @lpairs, align 8, !tbaa !10
  %239 = load ptr, ptr @upairs, align 8, !tbaa !10
  %240 = load ptr, ptr @pairlist, align 8, !tbaa !10
  %241 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  br i1 %237, label %253, label %242

242:                                              ; preds = %233
  %243 = load ptr, ptr @prm, align 8, !tbaa !10
  %244 = getelementptr inbounds %struct.parm, ptr %243, i64 0, i32 52
  %245 = load ptr, ptr %244, align 8, !tbaa !55
  %246 = getelementptr inbounds %struct.parm, ptr %243, i64 0, i32 51
  %247 = load ptr, ptr %246, align 8, !tbaa !56
  %248 = getelementptr inbounds %struct.parm, ptr %243, i64 0, i32 37
  %249 = load ptr, ptr %248, align 8, !tbaa !57
  %250 = call fastcc double @egb(ptr noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %0, ptr noundef %241, ptr noundef %245, ptr noundef %247, ptr noundef %249, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #31
  %251 = load double, ptr %8, align 8, !tbaa !13
  %252 = load double, ptr %9, align 8, !tbaa !13
  br label %254

253:                                              ; preds = %233
  call fastcc void @nbond(ptr noundef %238, ptr noundef %239, ptr noundef %240, i32 noundef 0, ptr noundef %0, ptr noundef %241, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 1.000000e+00, double noundef 1.000000e+00) #31
  br label %254

254:                                              ; preds = %253, %242
  %255 = phi double [ 0.000000e+00, %253 ], [ %250, %242 ]
  %256 = phi double [ 0.000000e+00, %253 ], [ %251, %242 ]
  %257 = phi double [ 0.000000e+00, %253 ], [ %252, %242 ]
  %258 = load double, ptr %5, align 8, !tbaa !13
  %259 = load double, ptr %4, align 8, !tbaa !13
  %260 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 1
  store double %259, ptr %260, align 8
  %261 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 2
  store double %258, ptr %261, align 16
  %262 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 10
  store double %255, ptr %262, align 16
  %263 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 11
  store double %256, ptr %263, align 8
  %264 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 12
  store double %257, ptr %264, align 16
  %265 = load i1, ptr @dim, align 4
  %266 = select i1 %265, i32 4, i32 3
  %267 = load ptr, ptr @prm, align 8, !tbaa !10
  %268 = getelementptr inbounds %struct.parm, ptr %267, i64 0, i32 4
  %269 = load i32, ptr %268, align 8, !tbaa !27
  %270 = mul nsw i32 %269, %266
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %254
  %273 = load ptr, ptr @mme34.grad, align 8, !tbaa !10
  %274 = zext nneg i32 %270 to i64
  br label %281

275:                                              ; preds = %281, %254
  %276 = icmp sgt i32 %269, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %275
  %278 = load ptr, ptr @frozen, align 8, !tbaa !10
  %279 = zext nneg i32 %266 to i64
  %280 = zext nneg i32 %269 to i64
  br label %291

281:                                              ; preds = %272, %281
  %282 = phi i64 [ 0, %272 ], [ %286, %281 ]
  %283 = getelementptr inbounds double, ptr %273, i64 %282
  %284 = load double, ptr %283, align 8, !tbaa !13
  %285 = getelementptr inbounds double, ptr %1, i64 %282
  store double %284, ptr %285, align 8, !tbaa !13
  %286 = add nuw nsw i64 %282, 1
  %287 = icmp eq i64 %286, %274
  br i1 %287, label %275, label %281, !llvm.loop !95

288:                                              ; preds = %304, %275
  br i1 %271, label %289, label %315

289:                                              ; preds = %288
  %290 = zext nneg i32 %270 to i64
  br label %307

291:                                              ; preds = %277, %304
  %292 = phi i64 [ 0, %277 ], [ %305, %304 ]
  %293 = getelementptr inbounds i32, ptr %278, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !6
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %291
  %297 = mul nuw nsw i64 %292, %279
  %298 = getelementptr double, ptr %1, i64 %297
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %298, i8 0, i64 24, i1 false)
  br i1 %265, label %299, label %304

299:                                              ; preds = %296
  %300 = shl i64 %292, 2
  %301 = and i64 %300, 4294967292
  %302 = or disjoint i64 %301, 3
  %303 = getelementptr inbounds double, ptr %1, i64 %302
  store double 0.000000e+00, ptr %303, align 8, !tbaa !13
  br label %304

304:                                              ; preds = %291, %299, %296
  %305 = add nuw nsw i64 %292, 1
  %306 = icmp eq i64 %305, %280
  br i1 %306, label %288, label %291, !llvm.loop !96

307:                                              ; preds = %289, %307
  %308 = phi i64 [ 0, %289 ], [ %313, %307 ]
  %309 = phi double [ 0.000000e+00, %289 ], [ %312, %307 ]
  %310 = getelementptr inbounds double, ptr %1, i64 %308
  %311 = load double, ptr %310, align 8, !tbaa !13
  %312 = tail call double @llvm.fmuladd.f64(double %311, double %311, double %309)
  %313 = add nuw nsw i64 %308, 1
  %314 = icmp eq i64 %313, %290
  br i1 %314, label %315, label %307, !llvm.loop !97

315:                                              ; preds = %307, %288
  %316 = phi double [ 0.000000e+00, %288 ], [ %312, %307 ]
  %317 = sitofp i32 %270 to double
  %318 = fdiv double %316, %317
  %319 = tail call double @sqrt(double noundef %318) #34
  br label %320

320:                                              ; preds = %315, %320
  %321 = phi i64 [ 1, %315 ], [ %326, %320 ]
  %322 = phi double [ 0.000000e+00, %315 ], [ %325, %320 ]
  %323 = getelementptr inbounds [20 x double], ptr %10, i64 0, i64 %321
  %324 = load double, ptr %323, align 8, !tbaa !13
  %325 = fadd double %324, %322
  %326 = add nuw nsw i64 %321, 1
  %327 = icmp eq i64 %326, 13
  br i1 %327, label %328, label %320, !llvm.loop !98

328:                                              ; preds = %320
  %329 = load i32, ptr %2, align 4, !tbaa !6
  %330 = icmp sgt i32 %329, -1
  br i1 %330, label %331, label %342

331:                                              ; preds = %328
  %332 = icmp eq i32 %329, 0
  %333 = load i32, ptr @max_step, align 4
  %334 = icmp eq i32 %329, %333
  %335 = select i1 %332, i1 true, i1 %334
  br i1 %335, label %336, label %368

336:                                              ; preds = %331
  %337 = load ptr, ptr @nabout, align 8, !tbaa !10
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.65, i32 noundef %329, double noundef %325) #31
  %339 = load ptr, ptr @nabout, align 8, !tbaa !10
  %340 = tail call i32 @fflush(ptr noundef %339) #31
  %341 = load i32, ptr %2, align 4, !tbaa !6
  br label %342

342:                                              ; preds = %336, %328
  %343 = phi i32 [ %329, %328 ], [ %341, %336 ]
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %368

345:                                              ; preds = %342
  %346 = load ptr, ptr @nabout, align 8, !tbaa !10
  %347 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef nonnull @.str.66, double noundef %135) #31
  %348 = load ptr, ptr @nabout, align 8, !tbaa !10
  %349 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %348, ptr noundef nonnull @.str.67, double noundef %171) #31
  %350 = load ptr, ptr @nabout, align 8, !tbaa !10
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %350, ptr noundef nonnull @.str.68, double noundef %215) #31
  %352 = load ptr, ptr @nabout, align 8, !tbaa !10
  %353 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.69, double noundef %224) #31
  %354 = load ptr, ptr @nabout, align 8, !tbaa !10
  %355 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %354, ptr noundef nonnull @.str.70, double noundef %226) #31
  %356 = load ptr, ptr @nabout, align 8, !tbaa !10
  %357 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %356, ptr noundef nonnull @.str.71, double noundef %259) #31
  %358 = load ptr, ptr @nabout, align 8, !tbaa !10
  %359 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %358, ptr noundef nonnull @.str.72, double noundef %258) #31
  %360 = load ptr, ptr @nabout, align 8, !tbaa !10
  %361 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %360, ptr noundef nonnull @.str.73, double noundef %255) #31
  %362 = load ptr, ptr @nabout, align 8, !tbaa !10
  %363 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %362, ptr noundef nonnull @.str.74, double noundef %234) #31
  %364 = load ptr, ptr @nabout, align 8, !tbaa !10
  %365 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %364, ptr noundef nonnull @.str.75, double noundef %256) #31
  %366 = load ptr, ptr @nabout, align 8, !tbaa !10
  %367 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef nonnull @.str.76, double noundef %325) #31
  br label %368

368:                                              ; preds = %331, %345, %342, %41, %44
  %369 = phi double [ 0.000000e+00, %44 ], [ 0.000000e+00, %41 ], [ %325, %342 ], [ %325, %345 ], [ %325, %331 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret double %369
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_max_threads() local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @egb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, i32 noundef %12) unnamed_addr #2 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store ptr %0, ptr %14, align 8, !tbaa !10
  store ptr %1, ptr %15, align 8, !tbaa !10
  store ptr %2, ptr %16, align 8, !tbaa !10
  store ptr %3, ptr %17, align 8, !tbaa !10
  store ptr %4, ptr %18, align 8, !tbaa !10
  store ptr %5, ptr %19, align 8, !tbaa !10
  store ptr %6, ptr %20, align 8, !tbaa !10
  store ptr %7, ptr %21, align 8, !tbaa !10
  store ptr @kappa, ptr %22, align 8, !tbaa !10
  store ptr @epsext, ptr %23, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #21
  %31 = tail call i32 @omp_get_max_threads() #31
  %32 = load ptr, ptr @prm, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.parm, ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !27
  %35 = sext i32 %34 to i64
  %36 = icmp eq i32 %12, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %13
  %38 = load ptr, ptr @egb.reff, align 8, !tbaa !10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @free_vector(ptr noundef nonnull %38, i64 noundef 0, i64 noundef %35) #34
  store ptr null, ptr @egb.reff, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @egb.iexw, align 8, !tbaa !10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = add i32 %34, 1
  %46 = mul i32 %45, %31
  tail call void @free_ivector(ptr noundef nonnull %42, i32 noundef -1, i32 noundef %46) #34
  store ptr null, ptr @egb.iexw, align 8, !tbaa !10
  br label %47

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free_vector(ptr noundef nonnull %48, i64 noundef 0, i64 noundef %35) #34
  store ptr null, ptr @egb.sumdeijda, align 8, !tbaa !10
  br label %51

51:                                               ; preds = %50, %47
  %52 = load ptr, ptr @egb.psi, align 8, !tbaa !10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @free_vector(ptr noundef nonnull %52, i64 noundef 0, i64 noundef %35) #34
  store ptr null, ptr @egb.psi, align 8, !tbaa !10
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr @egb.reqack, align 8, !tbaa !10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %97, label %58

58:                                               ; preds = %55
  tail call void @free_ivector(ptr noundef nonnull %56, i32 noundef 0, i32 noundef %31) #34
  store ptr null, ptr @egb.reqack, align 8, !tbaa !10
  br label %97

59:                                               ; preds = %13
  store double 5.000000e-02, ptr %27, align 8, !tbaa !13
  store double 0x3F647AE147AE147C, ptr %28, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.parm, ptr %32, i64 0, i32 58
  %61 = load double, ptr %60, align 8, !tbaa !99
  %62 = fadd double %61, 2.000000e+01
  %63 = fmul double %62, %62
  store double %63, ptr %29, align 8, !tbaa !13
  %64 = load ptr, ptr @egb.reff, align 8, !tbaa !10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = tail call ptr @vector(i64 noundef 0, i64 noundef %35) #34
  store ptr %67, ptr @egb.reff, align 8, !tbaa !10
  br label %68

68:                                               ; preds = %66, %59
  %69 = load ptr, ptr @egb.iexw, align 8, !tbaa !10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = add i32 %34, 1
  %73 = mul i32 %72, %31
  %74 = tail call ptr @ivector(i32 noundef -1, i32 noundef %73) #34
  store ptr %74, ptr @egb.iexw, align 8, !tbaa !10
  br label %75

75:                                               ; preds = %71, %68
  %76 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = tail call ptr @vector(i64 noundef 0, i64 noundef %35) #34
  store ptr %79, ptr @egb.sumdeijda, align 8, !tbaa !10
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr @egb.psi, align 8, !tbaa !10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, ptr @gb, align 4
  switch i32 %84, label %87 [
    i32 5, label %85
    i32 2, label %85
  ]

85:                                               ; preds = %83, %83
  %86 = tail call ptr @vector(i64 noundef 0, i64 noundef %35) #34
  store ptr %86, ptr @egb.psi, align 8, !tbaa !10
  br label %87

87:                                               ; preds = %83, %85, %80
  %88 = load ptr, ptr @egb.reqack, align 8, !tbaa !10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = tail call ptr @ivector(i32 noundef 0, i32 noundef 1) #34
  store ptr %91, ptr @egb.reqack, align 8, !tbaa !10
  br label %92

92:                                               ; preds = %87, %90
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 9, ptr nonnull @egb.omp_outlined, ptr nonnull %17, ptr nonnull %20, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, ptr nonnull %29, ptr nonnull %19, ptr nonnull %28, ptr nonnull %27)
  store double 0.000000e+00, ptr %10, align 8, !tbaa !13
  store double 0.000000e+00, ptr %30, align 8, !tbaa !13
  store double 0.000000e+00, ptr %26, align 8, !tbaa !13
  store double 0.000000e+00, ptr %25, align 8, !tbaa !13
  store double 0.000000e+00, ptr %24, align 8, !tbaa !13
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 12, ptr nonnull @egb.omp_outlined.81, ptr nonnull %21, ptr nonnull %22, ptr nonnull %23, ptr nonnull %24, ptr nonnull %15, ptr nonnull %17, ptr nonnull %14, ptr nonnull %16, ptr nonnull %25, ptr nonnull %26, ptr nonnull %18, ptr nonnull %30)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 9, ptr nonnull @egb.omp_outlined.84, ptr nonnull %14, ptr nonnull %15, ptr nonnull %17, ptr nonnull %20, ptr nonnull %16, ptr nonnull %29, ptr nonnull %19, ptr nonnull %28, ptr nonnull %18)
  %93 = load double, ptr %25, align 8, !tbaa !13
  store double %93, ptr %9, align 8, !tbaa !13
  %94 = load double, ptr %26, align 8, !tbaa !13
  store double %94, ptr %8, align 8, !tbaa !13
  %95 = load double, ptr %30, align 8, !tbaa !13
  store double %95, ptr %11, align 8, !tbaa !13
  %96 = load double, ptr %24, align 8, !tbaa !13
  br label %97

97:                                               ; preds = %55, %58, %92
  %98 = phi double [ %96, %92 ], [ 0.000000e+00, %58 ], [ 0.000000e+00, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #21
  ret double %98
}

; Function Attrs: optsize
declare i32 @nblist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @ebond(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) unnamed_addr #17 {
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
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = mul nsw i32 %18, %20
  %22 = sdiv i32 %21, 3
  %23 = getelementptr inbounds i32, ptr %2, i64 %15
  %24 = load i32, ptr %23, align 4, !tbaa !6
  %25 = mul nsw i32 %24, %18
  %26 = sdiv i32 %25, 3
  %27 = getelementptr inbounds i32, ptr %3, i64 %15
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds double, ptr %6, i64 %30
  %32 = sext i32 %26 to i64
  %33 = getelementptr inbounds double, ptr %6, i64 %32
  %34 = load <2 x double>, ptr %31, align 8, !tbaa !13
  %35 = load <2 x double>, ptr %33, align 8, !tbaa !13
  %36 = fsub <2 x double> %34, %35
  %37 = add nsw i32 %22, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %6, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !13
  %41 = add nsw i32 %26, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %6, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !13
  %45 = fsub double %40, %44
  %46 = fmul <2 x double> %36, %36
  %47 = extractelement <2 x double> %46, i64 1
  %48 = extractelement <2 x double> %36, i64 0
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %47)
  %50 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %49)
  br i1 %14, label %51, label %58

51:                                               ; preds = %13
  %52 = getelementptr double, ptr %31, i64 3
  %53 = load double, ptr %52, align 8, !tbaa !13
  %54 = getelementptr double, ptr %33, i64 3
  %55 = load double, ptr %54, align 8, !tbaa !13
  %56 = fsub double %53, %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %50)
  br label %58

58:                                               ; preds = %51, %13
  %59 = phi double [ %57, %51 ], [ %50, %13 ]
  %60 = phi double [ %56, %51 ], [ %17, %13 ]
  %61 = tail call double @sqrt(double noundef %59) #34
  %62 = fdiv double 2.000000e+00, %61
  %63 = sext i32 %29 to i64
  %64 = getelementptr inbounds double, ptr %5, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !13
  %66 = fsub double %61, %65
  %67 = getelementptr inbounds double, ptr %4, i64 %63
  %68 = load double, ptr %67, align 8, !tbaa !13
  %69 = fmul double %68, %66
  %70 = fmul double %66, %69
  %71 = fadd double %16, %70
  %72 = fmul double %62, %69
  %73 = getelementptr inbounds double, ptr %7, i64 %30
  %74 = load <2 x double>, ptr %73, align 8, !tbaa !13
  %75 = insertelement <2 x double> poison, double %72, i64 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %76, <2 x double> %74)
  store <2 x double> %77, ptr %73, align 8, !tbaa !13
  %78 = getelementptr inbounds double, ptr %7, i64 %38
  %79 = load double, ptr %78, align 8, !tbaa !13
  %80 = tail call double @llvm.fmuladd.f64(double %45, double %72, double %79)
  store double %80, ptr %78, align 8, !tbaa !13
  %81 = getelementptr inbounds double, ptr %7, i64 %32
  %82 = fneg <2 x double> %36
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !13
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %76, <2 x double> %83)
  store <2 x double> %84, ptr %81, align 8, !tbaa !13
  %85 = getelementptr inbounds double, ptr %7, i64 %42
  %86 = load double, ptr %85, align 8, !tbaa !13
  %87 = fneg double %45
  %88 = tail call double @llvm.fmuladd.f64(double %87, double %72, double %86)
  store double %88, ptr %85, align 8, !tbaa !13
  %89 = load i1, ptr @dim, align 4
  br i1 %89, label %90, label %98

90:                                               ; preds = %58
  %91 = getelementptr double, ptr %73, i64 3
  %92 = load double, ptr %91, align 8, !tbaa !13
  %93 = tail call double @llvm.fmuladd.f64(double %60, double %72, double %92)
  store double %93, ptr %91, align 8, !tbaa !13
  %94 = getelementptr double, ptr %81, i64 3
  %95 = load double, ptr %94, align 8, !tbaa !13
  %96 = fneg double %60
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %72, double %95)
  store double %97, ptr %94, align 8, !tbaa !13
  br label %98

98:                                               ; preds = %58, %90
  %99 = add nuw nsw i64 %15, 1
  %100 = icmp eq i64 %99, %11
  br i1 %100, label %101, label %13, !llvm.loop !100

101:                                              ; preds = %98, %8
  %102 = phi double [ 0.000000e+00, %8 ], [ %71, %98 ]
  ret double %102
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @eangl(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8) unnamed_addr #17 {
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
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %23, 3
  %25 = getelementptr inbounds i32, ptr %2, i64 %16
  %26 = load i32, ptr %25, align 4, !tbaa !6
  %27 = mul nsw i32 %26, %20
  %28 = sdiv i32 %27, 3
  %29 = getelementptr inbounds i32, ptr %3, i64 %16
  %30 = load i32, ptr %29, align 4, !tbaa !6
  %31 = mul nsw i32 %30, %20
  %32 = sdiv i32 %31, 3
  %33 = getelementptr inbounds i32, ptr %4, i64 %16
  %34 = load i32, ptr %33, align 4, !tbaa !6
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %24 to i64
  %37 = getelementptr inbounds double, ptr %7, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !13
  %39 = sext i32 %28 to i64
  %40 = getelementptr inbounds double, ptr %7, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !13
  %42 = add nsw i32 %24, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %7, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !13
  %46 = add nsw i32 %28, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %7, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !13
  %50 = add nsw i32 %24, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %7, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !13
  %54 = add nsw i32 %28, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %7, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !13
  %58 = sext i32 %32 to i64
  %59 = getelementptr inbounds double, ptr %7, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !13
  %61 = add nsw i32 %32, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %7, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !13
  %65 = add nsw i32 %32, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %7, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !13
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
  %89 = load double, ptr %88, align 8, !tbaa !13
  %90 = getelementptr double, ptr %40, i64 3
  %91 = load double, ptr %90, align 8, !tbaa !13
  %92 = getelementptr double, ptr %59, i64 3
  %93 = load double, ptr %92, align 8, !tbaa !13
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
  %104 = tail call double @sqrt(double noundef %103) #34
  %105 = extractelement <2 x double> %101, i64 0
  %106 = tail call double @sqrt(double noundef %105) #34
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
  %139 = tail call double @acos(double noundef %138) #34
  %140 = sext i32 %35 to i64
  %141 = getelementptr inbounds double, ptr %6, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !13
  %143 = fsub double %139, %142
  %144 = getelementptr inbounds double, ptr %5, i64 %140
  %145 = load double, ptr %144, align 8, !tbaa !13
  %146 = fmul double %143, %145
  %147 = fmul double %143, %146
  %148 = fadd double %17, %147
  %149 = fadd double %146, %146
  %150 = tail call double @sin(double noundef %139) #34
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
  %179 = load double, ptr %178, align 8, !tbaa !13
  %180 = fadd double %179, %166
  store double %180, ptr %178, align 8, !tbaa !13
  %181 = getelementptr inbounds double, ptr %8, i64 %58
  %182 = load double, ptr %181, align 8, !tbaa !13
  %183 = fadd double %182, %169
  store double %183, ptr %181, align 8, !tbaa !13
  %184 = fadd double %166, %169
  %185 = getelementptr inbounds double, ptr %8, i64 %39
  %186 = load double, ptr %185, align 8, !tbaa !13
  %187 = fsub double %186, %184
  store double %187, ptr %185, align 8, !tbaa !13
  %188 = getelementptr inbounds double, ptr %8, i64 %43
  %189 = load double, ptr %188, align 8, !tbaa !13
  %190 = fadd double %171, %189
  store double %190, ptr %188, align 8, !tbaa !13
  %191 = getelementptr inbounds double, ptr %8, i64 %62
  %192 = load double, ptr %191, align 8, !tbaa !13
  %193 = fadd double %173, %192
  store double %193, ptr %191, align 8, !tbaa !13
  %194 = fadd double %171, %173
  %195 = getelementptr inbounds double, ptr %8, i64 %47
  %196 = load double, ptr %195, align 8, !tbaa !13
  %197 = fsub double %196, %194
  store double %197, ptr %195, align 8, !tbaa !13
  %198 = getelementptr inbounds double, ptr %8, i64 %51
  %199 = load double, ptr %198, align 8, !tbaa !13
  %200 = fadd double %175, %199
  store double %200, ptr %198, align 8, !tbaa !13
  %201 = getelementptr inbounds double, ptr %8, i64 %66
  %202 = load double, ptr %201, align 8, !tbaa !13
  %203 = fadd double %177, %202
  store double %203, ptr %201, align 8, !tbaa !13
  %204 = fadd double %175, %177
  %205 = getelementptr inbounds double, ptr %8, i64 %55
  %206 = load double, ptr %205, align 8, !tbaa !13
  %207 = fsub double %206, %204
  store double %207, ptr %205, align 8, !tbaa !13
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
  %217 = load double, ptr %216, align 8, !tbaa !13
  %218 = fadd double %213, %217
  store double %218, ptr %216, align 8, !tbaa !13
  %219 = getelementptr double, ptr %181, i64 3
  %220 = load double, ptr %219, align 8, !tbaa !13
  %221 = fadd double %215, %220
  store double %221, ptr %219, align 8, !tbaa !13
  %222 = fadd double %213, %215
  %223 = getelementptr double, ptr %185, i64 3
  %224 = load double, ptr %223, align 8, !tbaa !13
  %225 = fsub double %224, %222
  store double %225, ptr %223, align 8, !tbaa !13
  br label %226

226:                                              ; preds = %159, %209
  %227 = add nuw nsw i64 %16, 1
  %228 = icmp eq i64 %227, %12
  br i1 %228, label %229, label %14, !llvm.loop !101

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
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = mul nsw i32 %23, %25
  %27 = sdiv i32 %26, 3
  %28 = getelementptr inbounds i32, ptr %2, i64 %18
  %29 = load i32, ptr %28, align 4, !tbaa !6
  %30 = mul nsw i32 %29, %23
  %31 = sdiv i32 %30, 3
  %32 = getelementptr inbounds i32, ptr %3, i64 %18
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = mul nsw i32 %34, %23
  %36 = udiv i32 %35, 3
  %37 = getelementptr inbounds i32, ptr %4, i64 %18
  %38 = load i32, ptr %37, align 4, !tbaa !6
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = mul nsw i32 %39, %23
  %41 = udiv i32 %40, 3
  %42 = getelementptr inbounds i32, ptr %5, i64 %18
  %43 = load i32, ptr %42, align 4, !tbaa !6
  %44 = add nsw i32 %43, -1
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds double, ptr %9, i64 %45
  %47 = sext i32 %27 to i64
  %48 = getelementptr inbounds double, ptr %9, i64 %47
  %49 = add nsw i32 %31, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %9, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !13
  %53 = add nsw i32 %27, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %9, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !13
  %57 = zext nneg i32 %36 to i64
  %58 = getelementptr inbounds double, ptr %9, i64 %57
  %59 = add nuw nsw i32 %36, 2
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %9, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !13
  %63 = insertelement <2 x double> poison, double %52, i64 0
  %64 = insertelement <2 x double> %63, double %62, i64 1
  %65 = insertelement <2 x double> poison, double %56, i64 0
  %66 = insertelement <2 x double> %65, double %52, i64 1
  %67 = fsub <2 x double> %64, %66
  %68 = zext nneg i32 %41 to i64
  %69 = getelementptr inbounds double, ptr %9, i64 %68
  %70 = load <2 x double>, ptr %46, align 8, !tbaa !13
  %71 = load <2 x double>, ptr %48, align 8, !tbaa !13
  %72 = fsub <2 x double> %70, %71
  %73 = load <2 x double>, ptr %58, align 8, !tbaa !13
  %74 = fsub <2 x double> %73, %70
  %75 = load <2 x double>, ptr %69, align 8, !tbaa !13
  %76 = fsub <2 x double> %75, %73
  %77 = add nuw nsw i32 %41, 2
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %9, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !13
  %81 = fsub double %80, %62
  br i1 %17, label %82, label %127

82:                                               ; preds = %16
  %83 = getelementptr double, ptr %46, i64 3
  %84 = load double, ptr %83, align 8, !tbaa !13
  %85 = getelementptr double, ptr %48, i64 3
  %86 = load double, ptr %85, align 8, !tbaa !13
  %87 = getelementptr double, ptr %58, i64 3
  %88 = load double, ptr %87, align 8, !tbaa !13
  %89 = getelementptr double, ptr %69, i64 3
  %90 = load double, ptr %89, align 8, !tbaa !13
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
  %188 = tail call double @sqrt(double noundef %187) #34
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
  %337 = load ptr, ptr @prm, align 8, !tbaa !10
  %338 = getelementptr inbounds %struct.parm, ptr %337, i64 0, i32 12
  %339 = load i32, ptr %338, align 8, !tbaa !102
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %443, label %341

341:                                              ; preds = %335
  %342 = load i32, ptr %32, align 4, !tbaa !6
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %443

344:                                              ; preds = %341
  %345 = fcmp ogt double %190, 1.000000e+00
  %346 = select i1 %345, double 1.000000e+00, double %190
  %347 = fcmp olt double %346, -1.000000e+00
  %348 = select i1 %347, double -1.000000e+00, double %346
  %349 = tail call double @acos(double noundef %348) #34
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
  %391 = load double, ptr %390, align 8, !tbaa !13
  %392 = fsub double %388, %391
  %393 = fcmp ogt double %392, 0x400921FB5A7ED197
  %394 = select i1 %393, double 0x400921FB5A7ED197, double %392
  %395 = fcmp olt double %394, 0xC00921FB5A7ED197
  %396 = select i1 %395, double 0xC00921FB5A7ED197, double %394
  %397 = getelementptr inbounds double, ptr %6, i64 %389
  %398 = load double, ptr %397, align 8, !tbaa !13
  %399 = fmul double %398, %396
  %400 = fmul double %396, %399
  %401 = fadd double %20, %400
  %402 = tail call double @sin(double noundef %388) #34
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
  %412 = load double, ptr %390, align 8, !tbaa !13
  %413 = fcmp oeq double %412, 0.000000e+00
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  %415 = load double, ptr %397, align 8, !tbaa !13
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
  %425 = load double, ptr %397, align 8, !tbaa !13
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
  %449 = load double, ptr %448, align 8, !tbaa !13
  %450 = fadd double %449, -3.142000e+00
  %451 = tail call double @llvm.fabs.f64(double %450)
  %452 = fcmp olt double %451, 1.000000e-02
  %453 = select i1 %452, double -1.000000e+00, double 1.000000e+00
  %454 = getelementptr inbounds double, ptr %6, i64 %447
  %455 = load double, ptr %454, align 8, !tbaa !13
  %456 = getelementptr inbounds double, ptr %7, i64 %447
  %457 = load double, ptr %456, align 8, !tbaa !13
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
  %506 = load ptr, ptr @stderr, align 8, !tbaa !10
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %506, ptr noundef nonnull @.str.87, i32 noundef %27, i32 noundef %31, i32 noundef %36, i32 noundef %41, double noundef %457) #33
  tail call void @exit(i32 noundef 1) #30
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
  %519 = load <2 x double>, ptr %518, align 8, !tbaa !13
  %520 = insertelement <2 x double> poison, double %516, i64 0
  %521 = shufflevector <2 x double> %520, <2 x double> poison, <2 x i32> zeroinitializer
  %522 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %265, <2 x double> %519)
  store <2 x double> %522, ptr %518, align 8, !tbaa !13
  %523 = getelementptr inbounds double, ptr %10, i64 %54
  %524 = load double, ptr %523, align 8, !tbaa !13
  %525 = tail call double @llvm.fmuladd.f64(double %516, double %210, double %524)
  store double %525, ptr %523, align 8, !tbaa !13
  %526 = getelementptr inbounds double, ptr %10, i64 %45
  %527 = load <2 x double>, ptr %526, align 8, !tbaa !13
  %528 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %272, <2 x double> %527)
  store <2 x double> %528, ptr %526, align 8, !tbaa !13
  %529 = getelementptr inbounds double, ptr %10, i64 %50
  %530 = load double, ptr %529, align 8, !tbaa !13
  %531 = tail call double @llvm.fmuladd.f64(double %516, double %217, double %530)
  store double %531, ptr %529, align 8, !tbaa !13
  %532 = getelementptr inbounds double, ptr %10, i64 %57
  %533 = load <2 x double>, ptr %532, align 8, !tbaa !13
  %534 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %279, <2 x double> %533)
  store <2 x double> %534, ptr %532, align 8, !tbaa !13
  %535 = getelementptr inbounds double, ptr %10, i64 %60
  %536 = load double, ptr %535, align 8, !tbaa !13
  %537 = tail call double @llvm.fmuladd.f64(double %516, double %224, double %536)
  store double %537, ptr %535, align 8, !tbaa !13
  %538 = getelementptr inbounds double, ptr %10, i64 %68
  %539 = load <2 x double>, ptr %538, align 8, !tbaa !13
  %540 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %521, <2 x double> %282, <2 x double> %539)
  store <2 x double> %540, ptr %538, align 8, !tbaa !13
  %541 = getelementptr inbounds double, ptr %10, i64 %78
  %542 = load double, ptr %541, align 8, !tbaa !13
  %543 = tail call double @llvm.fmuladd.f64(double %516, double %285, double %542)
  store double %543, ptr %541, align 8, !tbaa !13
  %544 = load i1, ptr @dim, align 4
  br i1 %544, label %545, label %562

545:                                              ; preds = %513
  %546 = getelementptr double, ptr %518, i64 3
  %547 = load double, ptr %546, align 8, !tbaa !13
  %548 = extractelement <4 x double> %336, i64 3
  %549 = tail call double @llvm.fmuladd.f64(double %516, double %548, double %547)
  store double %549, ptr %546, align 8, !tbaa !13
  %550 = getelementptr double, ptr %526, i64 3
  %551 = load double, ptr %550, align 8, !tbaa !13
  %552 = extractelement <4 x double> %336, i64 2
  %553 = tail call double @llvm.fmuladd.f64(double %516, double %552, double %551)
  store double %553, ptr %550, align 8, !tbaa !13
  %554 = getelementptr double, ptr %532, i64 3
  %555 = load double, ptr %554, align 8, !tbaa !13
  %556 = extractelement <4 x double> %336, i64 1
  %557 = tail call double @llvm.fmuladd.f64(double %516, double %556, double %555)
  store double %557, ptr %554, align 8, !tbaa !13
  %558 = getelementptr double, ptr %538, i64 3
  %559 = load double, ptr %558, align 8, !tbaa !13
  %560 = extractelement <4 x double> %336, i64 0
  %561 = tail call double @llvm.fmuladd.f64(double %516, double %560, double %559)
  store double %561, ptr %558, align 8, !tbaa !13
  br label %562

562:                                              ; preds = %545, %513
  %563 = sext i32 %515 to i64
  %564 = getelementptr inbounds double, ptr %7, i64 %563
  %565 = load double, ptr %564, align 8, !tbaa !13
  %566 = fcmp olt double %565, 0.000000e+00
  br i1 %566, label %567, label %569

567:                                              ; preds = %562
  %568 = add nsw i32 %515, 1
  br label %443

569:                                              ; preds = %562
  %570 = add nuw nsw i64 %18, 1
  %571 = icmp eq i64 %570, %14
  br i1 %571, label %572, label %16, !llvm.loop !103

572:                                              ; preds = %569, %11
  %573 = phi double [ 0.000000e+00, %11 ], [ %514, %569 ]
  ret double %573
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nbond(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, double noundef %8, double noundef %9) unnamed_addr #2 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %11, align 8, !tbaa !10
  store ptr %1, ptr %12, align 8, !tbaa !10
  store ptr %2, ptr %13, align 8, !tbaa !10
  store i32 %3, ptr %14, align 4, !tbaa !6
  store ptr %4, ptr %15, align 8, !tbaa !10
  store ptr %5, ptr %16, align 8, !tbaa !10
  store double %8, ptr %17, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #21
  store double 0.000000e+00, ptr %20, align 8, !tbaa !13
  store double 0.000000e+00, ptr %21, align 8, !tbaa !13
  %24 = fdiv double 1.000000e+00, %8
  store double %24, ptr %18, align 8, !tbaa !13
  %25 = fdiv double 1.000000e+00, %9
  store double %25, ptr %19, align 8, !tbaa !13
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 11, ptr nonnull @nbond.omp_outlined, ptr nonnull %12, ptr nonnull %19, ptr nonnull %15, ptr nonnull %14, ptr nonnull %11, ptr nonnull %13, ptr nonnull %21, ptr nonnull %20, ptr nonnull %18, ptr nonnull %17, ptr nonnull %16)
  br label %29

28:                                               ; preds = %10
  tail call void @__kmpc_serialized_parallel(ptr nonnull @1, i32 %23)
  store i32 %23, ptr %22, align 4, !tbaa !6
  call void @nbond.omp_outlined(ptr nonnull %22, ptr nonnull poison, ptr %12, ptr %19, ptr %15, ptr %14, ptr %11, ptr %13, ptr %21, ptr %20, ptr %18, ptr %17, ptr %16) #21
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @1, i32 %23)
  br label %29

29:                                               ; preds = %28, %27
  %30 = load double, ptr %20, align 8, !tbaa !13
  store double %30, ptr %6, align 8, !tbaa !13
  %31 = load double, ptr %21, align 8, !tbaa !13
  store double %31, ptr %7, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc double @econs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #18 {
  %3 = load ptr, ptr @prm, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.parm, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %62

7:                                                ; preds = %2
  %8 = load ptr, ptr @constrained, align 8, !tbaa !10
  %9 = load i1, ptr @dim, align 4
  %10 = load ptr, ptr @x0, align 8
  %11 = select i1 %9, i64 4, i64 3
  %12 = zext nneg i32 %5 to i64
  br label %13

13:                                               ; preds = %7, %58
  %14 = phi i64 [ 0, %7 ], [ %60, %58 ]
  %15 = phi double [ 0.000000e+00, %7 ], [ %59, %58 ]
  %16 = getelementptr inbounds i32, ptr %8, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %13
  %20 = mul nuw nsw i64 %11, %14
  %21 = getelementptr inbounds double, ptr %0, i64 %20
  %22 = getelementptr inbounds double, ptr %10, i64 %20
  %23 = add nuw nsw i64 %20, 2
  %24 = getelementptr inbounds double, ptr %0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !13
  %26 = getelementptr inbounds double, ptr %10, i64 %23
  %27 = load double, ptr %26, align 8, !tbaa !13
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds double, ptr %1, i64 %20
  %30 = load <2 x double>, ptr %21, align 8, !tbaa !13
  %31 = load <2 x double>, ptr %22, align 8, !tbaa !13
  %32 = fsub <2 x double> %30, %31
  %33 = fmul <2 x double> %32, %32
  %34 = extractelement <2 x double> %33, i64 1
  %35 = extractelement <2 x double> %32, i64 0
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %34)
  %37 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %37, double 0.000000e+00, double %15)
  %39 = load <2 x double>, ptr %29, align 8, !tbaa !13
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> zeroinitializer, <2 x double> %39)
  store <2 x double> %40, ptr %29, align 8, !tbaa !13
  %41 = getelementptr double, ptr %29, i64 2
  %42 = load double, ptr %41, align 8, !tbaa !13
  %43 = tail call double @llvm.fmuladd.f64(double %28, double 0.000000e+00, double %42)
  store double %43, ptr %41, align 8, !tbaa !13
  br i1 %9, label %44, label %58

44:                                               ; preds = %19
  %45 = shl i64 %14, 2
  %46 = and i64 %45, 4294967292
  %47 = or disjoint i64 %46, 3
  %48 = getelementptr inbounds double, ptr %0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !13
  %50 = getelementptr inbounds double, ptr %10, i64 %47
  %51 = load double, ptr %50, align 8, !tbaa !13
  %52 = fsub double %49, %51
  %53 = fmul double %52, 0.000000e+00
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %52, double %38)
  %55 = getelementptr inbounds double, ptr %1, i64 %47
  %56 = load double, ptr %55, align 8, !tbaa !13
  %57 = tail call double @llvm.fmuladd.f64(double %52, double 0.000000e+00, double %56)
  store double %57, ptr %55, align 8, !tbaa !13
  br label %58

58:                                               ; preds = %13, %44, %19
  %59 = phi double [ %54, %44 ], [ %38, %19 ], [ %15, %13 ]
  %60 = add nuw nsw i64 %14, 1
  %61 = icmp eq i64 %60, %12
  br i1 %61, label %62, label %13, !llvm.loop !104

62:                                               ; preds = %58, %2
  %63 = phi double [ 0.000000e+00, %2 ], [ %59, %58 ]
  ret double %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @egb.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10) #20 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = tail call i32 @omp_get_thread_num() #31
  %17 = tail call i32 @omp_get_num_threads() #31
  %18 = load ptr, ptr @prm, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.parm, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !27
  %21 = icmp sgt i32 %20, 0
  %22 = load i32, ptr %0, align 4, !tbaa !6
  br i1 %21, label %23, label %260

23:                                               ; preds = %11
  %24 = add nsw i32 %20, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  store i32 0, ptr %12, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #21
  store i32 %24, ptr %13, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  store i32 1, ptr %14, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #21
  store i32 0, ptr %15, align 4, !tbaa !6
  %25 = load i32, ptr @blocksize, align 4, !tbaa !6
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %22, i32 1073741859, i32 0, i32 %24, i32 1, i32 %25)
  %26 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %22, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %259, label %32

28:                                               ; preds = %254, %32
  %29 = phi double [ %33, %32 ], [ %56, %254 ]
  %30 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %22, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %259, label %32

32:                                               ; preds = %23, %28
  %33 = phi double [ %29, %28 ], [ undef, %23 ]
  %34 = load i32, ptr %12, align 4, !tbaa !6
  %35 = load i32, ptr %13, align 4, !tbaa !6, !llvm.access.group !105
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %28, label %37

37:                                               ; preds = %32
  %38 = sext i32 %34 to i64
  br label %39

39:                                               ; preds = %37, %254
  %40 = phi i64 [ %38, %37 ], [ %255, %254 ]
  %41 = phi double [ %33, %37 ], [ %56, %254 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !105
  %43 = load i1, ptr @dim, align 4
  %44 = select i1 %43, i64 4, i64 3
  %45 = mul nsw i64 %44, %40
  %46 = getelementptr inbounds double, ptr %42, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !13, !llvm.access.group !105
  %48 = getelementptr double, ptr %46, i64 1
  %49 = load double, ptr %48, align 8, !tbaa !13, !llvm.access.group !105
  %50 = getelementptr double, ptr %46, i64 2
  %51 = load double, ptr %50, align 8, !tbaa !13, !llvm.access.group !105
  br i1 %43, label %52, label %55

52:                                               ; preds = %39
  %53 = getelementptr double, ptr %46, i64 3
  %54 = load double, ptr %53, align 8, !tbaa !13, !llvm.access.group !105
  br label %55

55:                                               ; preds = %52, %39
  %56 = phi double [ %54, %52 ], [ %41, %39 ]
  %57 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !105
  %58 = getelementptr inbounds double, ptr %57, i64 %40
  %59 = load double, ptr %58, align 8, !tbaa !13, !llvm.access.group !105
  %60 = fadd double %59, 0xBFB70A3D70A3D70A
  %61 = fdiv double 1.000000e+00, %60
  %62 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !105
  %63 = getelementptr inbounds i32, ptr %62, i64 %40
  %64 = load i32, ptr %63, align 4, !tbaa !6, !llvm.access.group !105
  %65 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !105
  %66 = getelementptr inbounds i32, ptr %65, i64 %40
  %67 = load i32, ptr %66, align 4, !tbaa !6, !llvm.access.group !105
  %68 = add nsw i32 %67, %64
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %221

70:                                               ; preds = %55
  %71 = fmul double %61, 5.000000e-01
  br label %72

72:                                               ; preds = %70, %209
  %73 = phi i64 [ 0, %70 ], [ %211, %209 ]
  %74 = phi double [ 0.000000e+00, %70 ], [ %210, %209 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !105
  %76 = getelementptr inbounds ptr, ptr %75, i64 %40
  %77 = load ptr, ptr %76, align 8, !tbaa !10, !llvm.access.group !105
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !105
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.79, i32 noundef 0) #31, !llvm.access.group !105
  %82 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !105
  %83 = call i32 @fflush(ptr noundef %82) #31, !llvm.access.group !105
  %84 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !105
  %85 = getelementptr inbounds ptr, ptr %84, i64 %40
  %86 = load ptr, ptr %85, align 8, !tbaa !10, !llvm.access.group !105
  br label %87

87:                                               ; preds = %79, %72
  %88 = phi ptr [ %86, %79 ], [ %77, %72 ]
  %89 = getelementptr inbounds i32, ptr %88, i64 %73
  %90 = load i32, ptr %89, align 4, !tbaa !6, !llvm.access.group !105
  %91 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !105
  %92 = load i1, ptr @dim, align 4
  %93 = select i1 %92, i32 4, i32 3
  %94 = mul nsw i32 %93, %90
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, ptr %91, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !13, !llvm.access.group !105
  %98 = fsub double %47, %97
  %99 = getelementptr double, ptr %96, i64 1
  %100 = load double, ptr %99, align 8, !tbaa !13, !llvm.access.group !105
  %101 = fsub double %49, %100
  %102 = getelementptr double, ptr %96, i64 2
  %103 = load double, ptr %102, align 8, !tbaa !13, !llvm.access.group !105
  %104 = fsub double %51, %103
  %105 = fmul double %101, %101
  %106 = call double @llvm.fmuladd.f64(double %98, double %98, double %105)
  %107 = call double @llvm.fmuladd.f64(double %104, double %104, double %106)
  br i1 %92, label %108, label %113

108:                                              ; preds = %87
  %109 = getelementptr double, ptr %96, i64 3
  %110 = load double, ptr %109, align 8, !tbaa !13, !llvm.access.group !105
  %111 = fsub double %56, %110
  %112 = call double @llvm.fmuladd.f64(double %111, double %111, double %107)
  br label %113

113:                                              ; preds = %108, %87
  %114 = phi double [ %112, %108 ], [ %107, %87 ]
  %115 = load double, ptr %7, align 8, !tbaa !13, !llvm.access.group !105
  %116 = fcmp ogt double %114, %115
  br i1 %116, label %209, label %117

117:                                              ; preds = %113
  %118 = call double @sqrt(double noundef %114) #34, !llvm.access.group !105
  %119 = fdiv double 1.000000e+00, %118
  %120 = fmul double %114, %119
  %121 = load ptr, ptr %8, align 8, !tbaa !10, !llvm.access.group !105
  %122 = sext i32 %90 to i64
  %123 = getelementptr inbounds double, ptr %121, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !13, !llvm.access.group !105
  %125 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !105
  %126 = getelementptr inbounds double, ptr %125, i64 %122
  %127 = load double, ptr %126, align 8, !tbaa !13, !llvm.access.group !105
  %128 = fadd double %127, 0xBFB70A3D70A3D70A
  %129 = fmul double %124, %128
  %130 = fmul double %129, %129
  %131 = fadd double %129, 2.000000e+01
  %132 = fcmp ogt double %120, %131
  br i1 %132, label %209, label %133

133:                                              ; preds = %117
  %134 = fsub double 2.000000e+01, %129
  %135 = fcmp ogt double %120, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = fsub double %120, %129
  %138 = fdiv double 1.000000e+00, %137
  %139 = fmul double %120, 2.000000e+00
  %140 = call double @llvm.fmuladd.f64(double %139, double %138, double 1.000000e+00)
  %141 = load double, ptr %9, align 8, !tbaa !13, !llvm.access.group !105
  %142 = call double @llvm.fmuladd.f64(double %120, double -8.000000e+01, double %114)
  %143 = fsub double %142, %130
  %144 = call double @llvm.fmuladd.f64(double %141, double %143, double %140)
  %145 = load double, ptr %10, align 8, !tbaa !13, !llvm.access.group !105
  %146 = fmul double %137, %145
  %147 = call double @log(double noundef %146) #34, !llvm.access.group !105
  %148 = call double @llvm.fmuladd.f64(double %147, double 2.000000e+00, double %144)
  %149 = fmul double %119, -1.250000e-01
  %150 = call double @llvm.fmuladd.f64(double %149, double %148, double %74)
  br label %209

151:                                              ; preds = %133
  %152 = fmul double %129, 4.000000e+00
  %153 = fcmp ogt double %120, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = fmul double %119, %119
  %156 = fmul double %155, %130
  %157 = call double @llvm.fmuladd.f64(double %156, double 0x3FDD1745D1745D17, double 0x3FDC71C71C71C71C)
  %158 = call double @llvm.fmuladd.f64(double %156, double %157, double 0x3FDB6DB6DB6DB6DB)
  %159 = call double @llvm.fmuladd.f64(double %156, double %158, double 4.000000e-01)
  %160 = call double @llvm.fmuladd.f64(double %156, double %159, double 0x3FD5555555555555)
  %161 = fneg double %129
  %162 = fmul double %156, %161
  %163 = fmul double %155, %162
  %164 = call double @llvm.fmuladd.f64(double %163, double %160, double %74)
  br label %209

165:                                              ; preds = %151
  %166 = fadd double %60, %129
  %167 = fcmp ogt double %120, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = fsub double %114, %130
  %170 = fdiv double %129, %169
  %171 = fmul double %119, 5.000000e-01
  %172 = fsub double %120, %129
  %173 = fadd double %120, %129
  %174 = fdiv double %172, %173
  %175 = call double @log(double noundef %174) #34, !llvm.access.group !105
  %176 = call double @llvm.fmuladd.f64(double %171, double %175, double %170)
  %177 = call double @llvm.fmuladd.f64(double %176, double -5.000000e-01, double %74)
  br label %209

178:                                              ; preds = %165
  %179 = fsub double %60, %129
  %180 = call double @llvm.fabs.f64(double %179)
  %181 = fcmp ogt double %120, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = fmul double %71, %119
  %184 = call double @llvm.fmuladd.f64(double %60, double %60, double %114)
  %185 = fsub double %184, %130
  %186 = fmul double %183, %185
  %187 = fadd double %120, %129
  %188 = fdiv double 1.000000e+00, %187
  %189 = fsub double 2.000000e+00, %186
  %190 = fneg double %188
  %191 = call double @llvm.fmuladd.f64(double %61, double %189, double %190)
  %192 = fmul double %60, %188
  %193 = call double @log(double noundef %192) #34, !llvm.access.group !105
  %194 = call double @llvm.fmuladd.f64(double %119, double %193, double %191)
  %195 = call double @llvm.fmuladd.f64(double %194, double -2.500000e-01, double %74)
  br label %209

196:                                              ; preds = %178
  %197 = fcmp olt double %60, %129
  br i1 %197, label %198, label %209

198:                                              ; preds = %196
  %199 = fsub double %114, %130
  %200 = fdiv double %129, %199
  %201 = call double @llvm.fmuladd.f64(double %61, double 2.000000e+00, double %200)
  %202 = fmul double %119, 5.000000e-01
  %203 = fsub double %129, %120
  %204 = fadd double %120, %129
  %205 = fdiv double %203, %204
  %206 = call double @log(double noundef %205) #34, !llvm.access.group !105
  %207 = call double @llvm.fmuladd.f64(double %202, double %206, double %201)
  %208 = call double @llvm.fmuladd.f64(double %207, double -5.000000e-01, double %74)
  br label %209

209:                                              ; preds = %136, %168, %196, %198, %182, %154, %117, %113
  %210 = phi double [ %74, %113 ], [ %74, %117 ], [ %150, %136 ], [ %164, %154 ], [ %177, %168 ], [ %195, %182 ], [ %208, %198 ], [ %74, %196 ]
  %211 = add nuw nsw i64 %73, 1
  %212 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !105
  %213 = getelementptr inbounds i32, ptr %212, i64 %40
  %214 = load i32, ptr %213, align 4, !tbaa !6, !llvm.access.group !105
  %215 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !105
  %216 = getelementptr inbounds i32, ptr %215, i64 %40
  %217 = load i32, ptr %216, align 4, !tbaa !6, !llvm.access.group !105
  %218 = add nsw i32 %217, %214
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %211, %219
  br i1 %220, label %72, label %221, !llvm.loop !106

221:                                              ; preds = %209, %55
  %222 = phi double [ 0.000000e+00, %55 ], [ %210, %209 ]
  %223 = load i32, ptr @gb, align 4, !tbaa !6, !llvm.access.group !105
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = fadd double %61, %222
  %227 = fdiv double 1.000000e+00, %226
  %228 = load ptr, ptr @egb.reff, align 8, !tbaa !10, !llvm.access.group !105
  %229 = getelementptr inbounds double, ptr %228, i64 %40
  store double %227, ptr %229, align 8, !tbaa !13, !llvm.access.group !105
  %230 = fcmp olt double %227, 0.000000e+00
  br i1 %230, label %231, label %254

231:                                              ; preds = %225
  store double 3.000000e+01, ptr %229, align 8, !tbaa !13, !llvm.access.group !105
  br label %254

232:                                              ; preds = %221
  %233 = fneg double %60
  %234 = fmul double %222, %233
  %235 = load ptr, ptr @egb.psi, align 8, !tbaa !10, !llvm.access.group !105
  %236 = getelementptr inbounds double, ptr %235, i64 %40
  store double %234, ptr %236, align 8, !tbaa !13, !llvm.access.group !105
  %237 = load double, ptr @gbalpha, align 8, !tbaa !13, !llvm.access.group !105
  %238 = load double, ptr @gbbeta, align 8, !tbaa !13, !llvm.access.group !105
  %239 = fneg double %238
  %240 = call double @llvm.fmuladd.f64(double %239, double %234, double %237)
  %241 = load double, ptr @gbgamma, align 8, !tbaa !13, !llvm.access.group !105
  %242 = fmul double %234, %241
  %243 = call double @llvm.fmuladd.f64(double %242, double %234, double %240)
  %244 = fmul double %234, %243
  %245 = call double @tanh(double noundef %244) #34, !llvm.access.group !105
  %246 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !105
  %247 = getelementptr inbounds double, ptr %246, i64 %40
  %248 = load double, ptr %247, align 8, !tbaa !13, !llvm.access.group !105
  %249 = fdiv double %245, %248
  %250 = fsub double %61, %249
  %251 = fdiv double 1.000000e+00, %250
  %252 = load ptr, ptr @egb.reff, align 8, !tbaa !10, !llvm.access.group !105
  %253 = getelementptr inbounds double, ptr %252, i64 %40
  store double %251, ptr %253, align 8, !tbaa !13, !llvm.access.group !105
  br label %254

254:                                              ; preds = %232, %231, %225
  %255 = add nsw i64 %40, 1
  %256 = load i32, ptr %13, align 4, !tbaa !6, !llvm.access.group !105
  %257 = sext i32 %256 to i64
  %258 = icmp slt i64 %40, %257
  br i1 %258, label %39, label %28, !llvm.loop !107

259:                                              ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  br label %260

260:                                              ; preds = %259, %11
  call void @__kmpc_barrier(ptr nonnull @2, i32 %22)
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #16

; Function Attrs: nounwind optsize
declare i32 @omp_get_num_threads() local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #15

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare !callback !109 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #21

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @egb.omp_outlined.81(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #20 {
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [4 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store double 0.000000e+00, ptr %15, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  store double 0.000000e+00, ptr %16, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  store double 0.000000e+00, ptr %17, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  store double 0.000000e+00, ptr %18, align 8, !tbaa !13
  %28 = tail call i32 @omp_get_thread_num() #31
  %29 = tail call i32 @omp_get_num_threads() #31
  %30 = load ptr, ptr @prm, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.parm, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !27
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %33, %28
  %35 = icmp eq i32 %28, 0
  %36 = icmp sgt i32 %32, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %42

38:                                               ; preds = %14
  %39 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10
  %40 = zext nneg i32 %32 to i64
  %41 = shl nuw nsw i64 %40, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %41, i1 false), !tbaa !13
  br label %42

42:                                               ; preds = %38, %14
  %43 = load i32, ptr %0, align 4, !tbaa !6
  tail call void @__kmpc_barrier(ptr nonnull @3, i32 %43)
  %44 = load ptr, ptr @prm, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.parm, ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !27
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %381

48:                                               ; preds = %42
  %49 = load ptr, ptr @egb.iexw, align 8, !tbaa !10
  %50 = sext i32 %34 to i64
  %51 = getelementptr i32, ptr %49, i64 %50
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i64 [ -1, %48 ], [ %55, %52 ]
  %54 = getelementptr i32, ptr %51, i64 %53
  store i32 -1, ptr %54, align 4, !tbaa !6
  %55 = add nsw i64 %53, 1
  %56 = load i32, ptr %45, align 8, !tbaa !27
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %52, label %59, !llvm.loop !111

59:                                               ; preds = %52
  %60 = icmp sgt i32 %56, 0
  br i1 %60, label %61, label %381

61:                                               ; preds = %59
  %62 = add nsw i32 %56, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #21
  store i32 0, ptr %19, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #21
  store i32 %62, ptr %20, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #21
  store i32 1, ptr %21, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #21
  store i32 0, ptr %22, align 4, !tbaa !6
  %63 = load i32, ptr @blocksize, align 4, !tbaa !6
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %43, i32 1073741859, i32 0, i32 %62, i32 1, i32 %63)
  %64 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %43, ptr nonnull %22, ptr nonnull %19, ptr nonnull %20, ptr nonnull %21)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %379, label %75

66:                                               ; preds = %368, %75
  %67 = phi double [ %76, %75 ], [ %369, %368 ]
  %68 = phi double [ %77, %75 ], [ %370, %368 ]
  %69 = phi double [ %78, %75 ], [ %371, %368 ]
  %70 = phi double [ %79, %75 ], [ %372, %368 ]
  %71 = phi double [ %81, %75 ], [ %373, %368 ]
  %72 = phi double [ %80, %75 ], [ %374, %368 ]
  %73 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %43, ptr nonnull %22, ptr nonnull %19, ptr nonnull %20, ptr nonnull %21)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %379, label %75

75:                                               ; preds = %61, %66
  %76 = phi double [ %67, %66 ], [ 0.000000e+00, %61 ]
  %77 = phi double [ %68, %66 ], [ 0.000000e+00, %61 ]
  %78 = phi double [ %69, %66 ], [ 0.000000e+00, %61 ]
  %79 = phi double [ %70, %66 ], [ 0.000000e+00, %61 ]
  %80 = phi double [ %72, %66 ], [ undef, %61 ]
  %81 = phi double [ %71, %66 ], [ undef, %61 ]
  %82 = load i32, ptr %19, align 4, !tbaa !6
  %83 = load i32, ptr %20, align 4, !tbaa !6, !llvm.access.group !112
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %66, label %85

85:                                               ; preds = %75
  %86 = sext i32 %82 to i64
  br label %87

87:                                               ; preds = %85, %368
  %88 = phi double [ %76, %85 ], [ %369, %368 ]
  %89 = phi double [ %77, %85 ], [ %370, %368 ]
  %90 = phi double [ %78, %85 ], [ %371, %368 ]
  %91 = phi double [ %79, %85 ], [ %372, %368 ]
  %92 = phi i64 [ %86, %85 ], [ %375, %368 ]
  %93 = phi double [ %80, %85 ], [ %374, %368 ]
  %94 = phi double [ %81, %85 ], [ %373, %368 ]
  %95 = load ptr, ptr @egb.reff, align 8, !tbaa !10, !llvm.access.group !112
  %96 = getelementptr inbounds double, ptr %95, i64 %92
  %97 = load double, ptr %96, align 8, !tbaa !13, !llvm.access.group !112
  %98 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !112
  %99 = getelementptr inbounds double, ptr %98, i64 %92
  %100 = load double, ptr %99, align 8, !tbaa !13, !llvm.access.group !112
  %101 = load ptr, ptr @frozen, align 8, !tbaa !10, !llvm.access.group !112
  %102 = getelementptr inbounds i32, ptr %101, i64 %92
  %103 = load i32, ptr %102, align 4, !tbaa !6, !llvm.access.group !112
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %87
  %106 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !112
  %107 = load double, ptr %106, align 8, !tbaa !13, !llvm.access.group !112
  %108 = fmul double %107, -7.300000e-01
  %109 = fmul double %97, %108
  %110 = call double @exp(double noundef %109) #34, !llvm.access.group !112
  %111 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !112
  %112 = load double, ptr %111, align 8, !tbaa !13, !llvm.access.group !112
  %113 = fdiv double %110, %112
  %114 = fsub double 1.000000e+00, %113
  %115 = fmul double %100, 5.000000e-01
  %116 = fmul double %100, %115
  %117 = fmul double %116, %114
  %118 = fdiv double %117, %97
  %119 = fsub double %91, %118
  store double %119, ptr %15, align 8, !tbaa !13, !llvm.access.group !112
  %120 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !112
  %121 = load double, ptr %120, align 8, !tbaa !13, !llvm.access.group !112
  %122 = fmul double %121, -7.300000e-01
  %123 = fmul double %116, %122
  %124 = fmul double %113, %123
  %125 = call double @llvm.fmuladd.f64(double %124, double %97, double %117)
  %126 = fadd double %125, 0.000000e+00
  %127 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10, !llvm.access.group !112
  %128 = getelementptr inbounds double, ptr %127, i64 %92
  %129 = load double, ptr %128, align 8, !tbaa !13, !llvm.access.group !112
  %130 = fadd double %129, %126
  store double %130, ptr %128, align 8, !tbaa !13, !llvm.access.group !112
  br label %131

131:                                              ; preds = %105, %87
  %132 = phi double [ %119, %105 ], [ %90, %87 ]
  %133 = phi double [ %119, %105 ], [ %91, %87 ]
  %134 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !112
  %135 = getelementptr inbounds i32, ptr %134, i64 %92
  %136 = load i32, ptr %135, align 4, !tbaa !6, !llvm.access.group !112
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %368, label %138

138:                                              ; preds = %131
  %139 = load i1, ptr @dim, align 4
  %140 = select i1 %139, i32 4, i32 3
  %141 = trunc i64 %92 to i32
  %142 = mul nsw i32 %140, %141
  %143 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !112
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds double, ptr %143, i64 %144
  %146 = load <2 x double>, ptr %145, align 8, !tbaa !13
  %147 = add nsw i32 %142, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, ptr %143, i64 %148
  %150 = load double, ptr %149, align 8, !tbaa !13, !llvm.access.group !112
  br i1 %139, label %151, label %154

151:                                              ; preds = %138
  %152 = getelementptr double, ptr %145, i64 3
  %153 = load double, ptr %152, align 8, !tbaa !13, !llvm.access.group !112
  br label %154

154:                                              ; preds = %151, %138
  %155 = phi double [ %153, %151 ], [ %93, %138 ]
  %156 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !112
  %157 = getelementptr inbounds %struct.parm, ptr %156, i64 0, i32 5
  %158 = load i32, ptr %157, align 4, !tbaa !113, !llvm.access.group !112
  %159 = getelementptr inbounds %struct.parm, ptr %156, i64 0, i32 59
  %160 = load ptr, ptr %159, align 8, !tbaa !114, !llvm.access.group !112
  %161 = getelementptr inbounds i32, ptr %160, i64 %92
  %162 = load i32, ptr %161, align 4, !tbaa !6, !llvm.access.group !112
  %163 = add nsw i32 %162, -1
  %164 = mul nsw i32 %163, %158
  %165 = getelementptr inbounds %struct.parm, ptr %156, i64 0, i32 60
  %166 = load ptr, ptr %165, align 8, !tbaa !41, !llvm.access.group !112
  %167 = getelementptr inbounds i32, ptr %166, i64 %92
  %168 = load i32, ptr %167, align 4, !tbaa !6, !llvm.access.group !112
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %154
  %171 = load ptr, ptr @egb.iexw, align 8, !tbaa !10, !llvm.access.group !112
  %172 = load ptr, ptr @IexclAt, align 8, !tbaa !10, !llvm.access.group !112
  %173 = getelementptr inbounds ptr, ptr %172, i64 %92
  %174 = load ptr, ptr %173, align 8, !tbaa !10, !llvm.access.group !112
  %175 = getelementptr i32, ptr %171, i64 -1
  br label %176

176:                                              ; preds = %170, %176
  %177 = phi i64 [ 0, %170 ], [ %183, %176 ]
  %178 = getelementptr inbounds i32, ptr %174, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !6, !llvm.access.group !112
  %180 = add nsw i32 %179, %34
  %181 = sext i32 %180 to i64
  %182 = getelementptr i32, ptr %175, i64 %181
  store i32 %141, ptr %182, align 4, !tbaa !6, !llvm.access.group !112
  %183 = add nuw nsw i64 %177, 1
  %184 = load i32, ptr %167, align 4, !tbaa !6, !llvm.access.group !112
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %176, label %187, !llvm.loop !115

187:                                              ; preds = %176, %154
  %188 = load ptr, ptr %8, align 8, !tbaa !10, !llvm.access.group !112
  %189 = getelementptr inbounds i32, ptr %188, i64 %92
  %190 = load i32, ptr %189, align 4, !tbaa !6, !llvm.access.group !112
  %191 = sext i32 %190 to i64
  br label %192

192:                                              ; preds = %187, %335
  %193 = phi double [ %88, %187 ], [ %336, %335 ]
  %194 = phi double [ %89, %187 ], [ %337, %335 ]
  %195 = phi double [ %132, %187 ], [ %270, %335 ]
  %196 = phi i1 [ %139, %187 ], [ %345, %335 ]
  %197 = phi i64 [ %191, %187 ], [ %349, %335 ]
  %198 = phi double [ %94, %187 ], [ %242, %335 ]
  %199 = phi double [ 0.000000e+00, %187 ], [ %348, %335 ]
  %200 = phi double [ 0.000000e+00, %187 ], [ %344, %335 ]
  %201 = phi <2 x double> [ zeroinitializer, %187 ], [ %343, %335 ]
  %202 = load ptr, ptr %9, align 8, !tbaa !10, !llvm.access.group !112
  %203 = getelementptr inbounds ptr, ptr %202, i64 %92
  %204 = load ptr, ptr %203, align 8, !tbaa !10, !llvm.access.group !112
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %192
  %207 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !112
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.82, i32 noundef 0) #31, !llvm.access.group !112
  %209 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !112
  %210 = call i32 @fflush(ptr noundef %209) #31, !llvm.access.group !112
  %211 = load ptr, ptr %9, align 8, !tbaa !10, !llvm.access.group !112
  %212 = getelementptr inbounds ptr, ptr %211, i64 %92
  %213 = load ptr, ptr %212, align 8, !tbaa !10, !llvm.access.group !112
  %214 = load i1, ptr @dim, align 4
  br label %215

215:                                              ; preds = %206, %192
  %216 = phi i1 [ %214, %206 ], [ %196, %192 ]
  %217 = phi ptr [ %213, %206 ], [ %204, %192 ]
  %218 = getelementptr inbounds i32, ptr %217, i64 %197
  %219 = load i32, ptr %218, align 4, !tbaa !6, !llvm.access.group !112
  %220 = select i1 %216, i32 4, i32 3
  %221 = mul nsw i32 %220, %219
  %222 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !112
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds double, ptr %222, i64 %223
  %225 = load <2 x double>, ptr %224, align 8, !tbaa !13
  %226 = fsub <2 x double> %146, %225
  %227 = getelementptr double, ptr %224, i64 2
  %228 = load double, ptr %227, align 8, !tbaa !13, !llvm.access.group !112
  %229 = fsub double %150, %228
  %230 = fmul <2 x double> %226, %226
  %231 = extractelement <2 x double> %230, i64 1
  %232 = extractelement <2 x double> %226, i64 0
  %233 = call double @llvm.fmuladd.f64(double %232, double %232, double %231)
  %234 = call double @llvm.fmuladd.f64(double %229, double %229, double %233)
  br i1 %216, label %235, label %240

235:                                              ; preds = %215
  %236 = getelementptr double, ptr %224, i64 3
  %237 = load double, ptr %236, align 8, !tbaa !13, !llvm.access.group !112
  %238 = fsub double %155, %237
  %239 = call double @llvm.fmuladd.f64(double %238, double %238, double %234)
  br label %240

240:                                              ; preds = %235, %215
  %241 = phi double [ %239, %235 ], [ %234, %215 ]
  %242 = phi double [ %238, %235 ], [ %198, %215 ]
  %243 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !112
  %244 = sext i32 %219 to i64
  %245 = getelementptr inbounds double, ptr %243, i64 %244
  %246 = load double, ptr %245, align 8, !tbaa !13, !llvm.access.group !112
  %247 = fmul double %100, %246
  %248 = load ptr, ptr @egb.reff, align 8, !tbaa !10, !llvm.access.group !112
  %249 = getelementptr inbounds double, ptr %248, i64 %244
  %250 = load double, ptr %249, align 8, !tbaa !13, !llvm.access.group !112
  %251 = fmul double %97, %250
  %252 = fneg double %241
  %253 = fmul double %251, 4.000000e+00
  %254 = fdiv double %252, %253
  %255 = call double @exp(double noundef %254) #34, !llvm.access.group !112
  %256 = call double @llvm.fmuladd.f64(double %251, double %255, double %241)
  %257 = call double @sqrt(double noundef %256) #34, !llvm.access.group !112
  %258 = fdiv double 1.000000e+00, %257
  %259 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !112
  %260 = load double, ptr %259, align 8, !tbaa !13, !llvm.access.group !112
  %261 = fmul double %260, -7.300000e-01
  %262 = fdiv double %261, %258
  %263 = call double @exp(double noundef %262) #34, !llvm.access.group !112
  %264 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !112
  %265 = load double, ptr %264, align 8, !tbaa !13, !llvm.access.group !112
  %266 = fdiv double %263, %265
  %267 = fsub double 1.000000e+00, %266
  %268 = fneg double %247
  %269 = fmul double %267, %268
  %270 = call double @llvm.fmuladd.f64(double %269, double %258, double %195)
  store double %270, ptr %15, align 8, !tbaa !13, !llvm.access.group !112
  %271 = fmul double %258, %258
  %272 = fmul double %258, %271
  %273 = fmul double %247, %272
  %274 = call double @llvm.fmuladd.f64(double %262, double %266, double %267)
  %275 = fmul double %273, %274
  %276 = call double @llvm.fmuladd.f64(double %255, double -2.500000e-01, double 1.000000e+00)
  %277 = fmul double %276, %275
  %278 = fmul double %255, 5.000000e-01
  %279 = fmul double %278, %275
  %280 = call double @llvm.fmuladd.f64(double %241, double 2.500000e-01, double %251)
  %281 = fmul double %280, %279
  %282 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10, !llvm.access.group !112
  %283 = getelementptr inbounds double, ptr %282, i64 %92
  %284 = load double, ptr %283, align 8, !tbaa !13, !llvm.access.group !112
  %285 = call double @llvm.fmuladd.f64(double %97, double %281, double %284)
  store double %285, ptr %283, align 8, !tbaa !13, !llvm.access.group !112
  %286 = load ptr, ptr @egb.iexw, align 8, !tbaa !10, !llvm.access.group !112
  %287 = add nsw i32 %219, %34
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %286, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !6, !llvm.access.group !112
  %291 = icmp eq i32 %290, %141
  br i1 %291, label %335, label %292

292:                                              ; preds = %240
  %293 = call double @sqrt(double noundef %241) #34, !llvm.access.group !112
  %294 = fdiv double 1.000000e+00, %293
  %295 = fmul double %294, %294
  %296 = fmul double %247, %294
  %297 = fadd double %194, %296
  store double %297, ptr %16, align 8, !tbaa !13, !llvm.access.group !112
  %298 = fneg double %296
  %299 = call double @llvm.fmuladd.f64(double %298, double %295, double %277)
  %300 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !112
  %301 = getelementptr inbounds %struct.parm, ptr %300, i64 0, i32 61
  %302 = load ptr, ptr %301, align 8, !tbaa !116, !llvm.access.group !112
  %303 = getelementptr inbounds %struct.parm, ptr %300, i64 0, i32 59
  %304 = load ptr, ptr %303, align 8, !tbaa !114, !llvm.access.group !112
  %305 = getelementptr inbounds i32, ptr %304, i64 %244
  %306 = load i32, ptr %305, align 4, !tbaa !6, !llvm.access.group !112
  %307 = add nsw i32 %306, %164
  %308 = sext i32 %307 to i64
  %309 = getelementptr i32, ptr %302, i64 %308
  %310 = getelementptr i32, ptr %309, i64 -1
  %311 = load i32, ptr %310, align 4, !tbaa !6, !llvm.access.group !112
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %335

313:                                              ; preds = %292
  %314 = add nsw i32 %311, -1
  %315 = fmul double %295, %295
  %316 = fmul double %295, %315
  %317 = getelementptr inbounds %struct.parm, ptr %300, i64 0, i32 48
  %318 = load ptr, ptr %317, align 8, !tbaa !117, !llvm.access.group !112
  %319 = zext nneg i32 %314 to i64
  %320 = getelementptr inbounds double, ptr %318, i64 %319
  %321 = load double, ptr %320, align 8, !tbaa !13, !llvm.access.group !112
  %322 = fmul double %316, %321
  %323 = getelementptr inbounds %struct.parm, ptr %300, i64 0, i32 47
  %324 = load ptr, ptr %323, align 8, !tbaa !118, !llvm.access.group !112
  %325 = getelementptr inbounds double, ptr %324, i64 %319
  %326 = load double, ptr %325, align 8, !tbaa !13, !llvm.access.group !112
  %327 = fmul double %316, %326
  %328 = fmul double %316, %327
  %329 = fsub double %328, %322
  %330 = fadd double %193, %329
  store double %330, ptr %17, align 8, !tbaa !13, !llvm.access.group !112
  %331 = fmul double %322, -6.000000e+00
  %332 = call double @llvm.fmuladd.f64(double %328, double 1.200000e+01, double %331)
  %333 = fneg double %332
  %334 = call double @llvm.fmuladd.f64(double %333, double %295, double %299)
  br label %335

335:                                              ; preds = %292, %313, %240
  %336 = phi double [ %330, %313 ], [ %193, %292 ], [ %193, %240 ]
  %337 = phi double [ %297, %313 ], [ %297, %292 ], [ %194, %240 ]
  %338 = phi double [ %334, %313 ], [ %299, %292 ], [ %277, %240 ]
  %339 = insertelement <2 x double> poison, double %338, i64 0
  %340 = shufflevector <2 x double> %339, <2 x double> poison, <2 x i32> zeroinitializer
  %341 = fmul <2 x double> %226, %340
  %342 = fmul double %229, %338
  %343 = fadd <2 x double> %201, %341
  %344 = fadd double %200, %342
  %345 = load i1, ptr @dim, align 4
  %346 = fmul double %242, %338
  %347 = select i1 %345, double %346, double -0.000000e+00
  %348 = fadd double %199, %347
  %349 = add nsw i64 %197, 1
  %350 = load ptr, ptr %8, align 8, !tbaa !10, !llvm.access.group !112
  %351 = getelementptr inbounds i32, ptr %350, i64 %92
  %352 = load i32, ptr %351, align 4, !tbaa !6, !llvm.access.group !112
  %353 = add nsw i32 %352, %136
  %354 = sext i32 %353 to i64
  %355 = icmp slt i64 %349, %354
  br i1 %355, label %192, label %356, !llvm.loop !119

356:                                              ; preds = %335
  %357 = load ptr, ptr %12, align 8, !tbaa !10, !llvm.access.group !112
  %358 = getelementptr inbounds double, ptr %357, i64 %144
  %359 = load <2 x double>, ptr %358, align 8, !tbaa !13
  %360 = fadd <2 x double> %343, %359
  store <2 x double> %360, ptr %358, align 8, !tbaa !13
  %361 = getelementptr inbounds double, ptr %357, i64 %148
  %362 = load double, ptr %361, align 8, !tbaa !13, !llvm.access.group !112
  %363 = fadd double %344, %362
  store double %363, ptr %361, align 8, !tbaa !13, !llvm.access.group !112
  br i1 %345, label %364, label %368

364:                                              ; preds = %356
  %365 = getelementptr double, ptr %358, i64 3
  %366 = load double, ptr %365, align 8, !tbaa !13, !llvm.access.group !112
  %367 = fadd double %348, %366
  store double %367, ptr %365, align 8, !tbaa !13, !llvm.access.group !112
  br label %368

368:                                              ; preds = %131, %364, %356
  %369 = phi double [ %88, %131 ], [ %336, %364 ], [ %336, %356 ]
  %370 = phi double [ %89, %131 ], [ %337, %364 ], [ %337, %356 ]
  %371 = phi double [ %132, %131 ], [ %270, %364 ], [ %270, %356 ]
  %372 = phi double [ %133, %131 ], [ %270, %364 ], [ %270, %356 ]
  %373 = phi double [ %94, %131 ], [ %242, %364 ], [ %242, %356 ]
  %374 = phi double [ %93, %131 ], [ %155, %364 ], [ %155, %356 ]
  %375 = add nsw i64 %92, 1
  %376 = load i32, ptr %20, align 4, !tbaa !6, !llvm.access.group !112
  %377 = sext i32 %376 to i64
  %378 = icmp slt i64 %92, %377
  br i1 %378, label %87, label %66, !llvm.loop !120

379:                                              ; preds = %66, %61
  %380 = phi double [ undef, %61 ], [ %71, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #21
  br label %381

381:                                              ; preds = %42, %379, %59
  %382 = phi double [ %380, %379 ], [ undef, %59 ], [ undef, %42 ]
  call void @__kmpc_barrier(ptr nonnull @2, i32 %43)
  %383 = load ptr, ptr @prm, align 8, !tbaa !10
  %384 = getelementptr inbounds %struct.parm, ptr %383, i64 0, i32 4
  %385 = load i32, ptr %384, align 8, !tbaa !27
  %386 = icmp sgt i32 %385, -1
  br i1 %386, label %387, label %650

387:                                              ; preds = %381
  %388 = load ptr, ptr @egb.iexw, align 8, !tbaa !10
  %389 = sext i32 %34 to i64
  %390 = getelementptr i32, ptr %388, i64 %389
  br label %391

391:                                              ; preds = %387, %391
  %392 = phi i64 [ -1, %387 ], [ %394, %391 ]
  %393 = getelementptr i32, ptr %390, i64 %392
  store i32 -1, ptr %393, align 4, !tbaa !6
  %394 = add nsw i64 %392, 1
  %395 = load i32, ptr %384, align 8, !tbaa !27
  %396 = sext i32 %395 to i64
  %397 = icmp slt i64 %394, %396
  br i1 %397, label %391, label %398, !llvm.loop !122

398:                                              ; preds = %391
  %399 = icmp sgt i32 %395, 0
  br i1 %399, label %400, label %650

400:                                              ; preds = %398
  %401 = add nsw i32 %395, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #21
  store i32 0, ptr %23, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #21
  store i32 %401, ptr %24, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #21
  store i32 1, ptr %25, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #21
  store i32 0, ptr %26, align 4, !tbaa !6
  %402 = load i32, ptr @blocksize, align 4, !tbaa !6
  call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %43, i32 1073741859, i32 0, i32 %401, i32 1, i32 %402)
  %403 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %43, ptr nonnull %26, ptr nonnull %23, ptr nonnull %24, ptr nonnull %25)
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %649, label %410

405:                                              ; preds = %642, %410
  %406 = phi double [ %412, %410 ], [ %643, %642 ]
  %407 = phi double [ %411, %410 ], [ %644, %642 ]
  %408 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %43, ptr nonnull %26, ptr nonnull %23, ptr nonnull %24, ptr nonnull %25)
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %649, label %410

410:                                              ; preds = %400, %405
  %411 = phi double [ %407, %405 ], [ undef, %400 ]
  %412 = phi double [ %406, %405 ], [ %382, %400 ]
  %413 = load i32, ptr %23, align 4, !tbaa !6
  %414 = load i32, ptr %24, align 4, !tbaa !6, !llvm.access.group !123
  %415 = icmp sgt i32 %413, %414
  br i1 %415, label %405, label %416

416:                                              ; preds = %410
  %417 = sext i32 %413 to i64
  br label %418

418:                                              ; preds = %416, %642
  %419 = phi i64 [ %417, %416 ], [ %645, %642 ]
  %420 = phi double [ %411, %416 ], [ %644, %642 ]
  %421 = phi double [ %412, %416 ], [ %643, %642 ]
  %422 = load ptr, ptr %8, align 8, !tbaa !10, !llvm.access.group !123
  %423 = getelementptr inbounds i32, ptr %422, i64 %419
  %424 = load i32, ptr %423, align 4, !tbaa !6, !llvm.access.group !123
  %425 = icmp slt i32 %424, 1
  br i1 %425, label %642, label %426

426:                                              ; preds = %418
  %427 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !123
  %428 = getelementptr inbounds double, ptr %427, i64 %419
  %429 = load double, ptr %428, align 8, !tbaa !13, !llvm.access.group !123
  %430 = load ptr, ptr @egb.reff, align 8, !tbaa !10, !llvm.access.group !123
  %431 = getelementptr inbounds double, ptr %430, i64 %419
  %432 = load double, ptr %431, align 8, !tbaa !13, !llvm.access.group !123
  %433 = load i1, ptr @dim, align 4
  %434 = select i1 %433, i32 4, i32 3
  %435 = trunc i64 %419 to i32
  %436 = mul nsw i32 %434, %435
  %437 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !123
  %438 = sext i32 %436 to i64
  %439 = getelementptr inbounds double, ptr %437, i64 %438
  %440 = load <2 x double>, ptr %439, align 8, !tbaa !13
  %441 = add nsw i32 %436, 2
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds double, ptr %437, i64 %442
  %444 = load double, ptr %443, align 8, !tbaa !13, !llvm.access.group !123
  br i1 %433, label %445, label %448

445:                                              ; preds = %426
  %446 = getelementptr double, ptr %439, i64 3
  %447 = load double, ptr %446, align 8, !tbaa !13, !llvm.access.group !123
  br label %448

448:                                              ; preds = %445, %426
  %449 = phi double [ %447, %445 ], [ %420, %426 ]
  %450 = load ptr, ptr @Jblo, align 8, !tbaa !10, !llvm.access.group !123
  %451 = getelementptr inbounds i32, ptr %450, i64 %419
  %452 = load i32, ptr %451, align 4, !tbaa !6, !llvm.access.group !123
  %453 = icmp sgt i32 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %448
  %455 = load ptr, ptr @egb.iexw, align 8, !tbaa !10, !llvm.access.group !123
  %456 = load ptr, ptr @JexclAt, align 8, !tbaa !10, !llvm.access.group !123
  %457 = getelementptr inbounds ptr, ptr %456, i64 %419
  %458 = load ptr, ptr %457, align 8, !tbaa !10, !llvm.access.group !123
  %459 = getelementptr i32, ptr %455, i64 -1
  br label %463

460:                                              ; preds = %463, %448
  %461 = call i32 @llvm.smax.i32(i32 %424, i32 1)
  %462 = zext nneg i32 %461 to i64
  br label %474

463:                                              ; preds = %454, %463
  %464 = phi i64 [ 0, %454 ], [ %470, %463 ]
  %465 = getelementptr inbounds i32, ptr %458, i64 %464
  %466 = load i32, ptr %465, align 4, !tbaa !6, !llvm.access.group !123
  %467 = add nsw i32 %466, %34
  %468 = sext i32 %467 to i64
  %469 = getelementptr i32, ptr %459, i64 %468
  store i32 %435, ptr %469, align 4, !tbaa !6, !llvm.access.group !123
  %470 = add nuw nsw i64 %464, 1
  %471 = load i32, ptr %451, align 4, !tbaa !6, !llvm.access.group !123
  %472 = sext i32 %471 to i64
  %473 = icmp slt i64 %470, %472
  br i1 %473, label %463, label %460, !llvm.loop !124

474:                                              ; preds = %460, %616
  %475 = phi i1 [ %433, %460 ], [ %624, %616 ]
  %476 = phi i64 [ 0, %460 ], [ %628, %616 ]
  %477 = phi double [ %421, %460 ], [ %520, %616 ]
  %478 = phi double [ 0.000000e+00, %460 ], [ %627, %616 ]
  %479 = phi double [ 0.000000e+00, %460 ], [ %623, %616 ]
  %480 = phi <2 x double> [ zeroinitializer, %460 ], [ %622, %616 ]
  %481 = load ptr, ptr %9, align 8, !tbaa !10, !llvm.access.group !123
  %482 = getelementptr inbounds ptr, ptr %481, i64 %419
  %483 = load ptr, ptr %482, align 8, !tbaa !10, !llvm.access.group !123
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %493

485:                                              ; preds = %474
  %486 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i32 noundef 0) #31, !llvm.access.group !123
  %487 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !123
  %488 = call i32 @fflush(ptr noundef %487) #31, !llvm.access.group !123
  %489 = load ptr, ptr %9, align 8, !tbaa !10, !llvm.access.group !123
  %490 = getelementptr inbounds ptr, ptr %489, i64 %419
  %491 = load ptr, ptr %490, align 8, !tbaa !10, !llvm.access.group !123
  %492 = load i1, ptr @dim, align 4
  br label %493

493:                                              ; preds = %485, %474
  %494 = phi i1 [ %492, %485 ], [ %475, %474 ]
  %495 = phi ptr [ %491, %485 ], [ %483, %474 ]
  %496 = getelementptr inbounds i32, ptr %495, i64 %476
  %497 = load i32, ptr %496, align 4, !tbaa !6, !llvm.access.group !123
  %498 = select i1 %494, i32 4, i32 3
  %499 = mul nsw i32 %498, %497
  %500 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !123
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds double, ptr %500, i64 %501
  %503 = load <2 x double>, ptr %502, align 8, !tbaa !13
  %504 = fsub <2 x double> %503, %440
  %505 = getelementptr double, ptr %502, i64 2
  %506 = load double, ptr %505, align 8, !tbaa !13, !llvm.access.group !123
  %507 = fsub double %506, %444
  %508 = fmul <2 x double> %504, %504
  %509 = extractelement <2 x double> %508, i64 1
  %510 = extractelement <2 x double> %504, i64 0
  %511 = call double @llvm.fmuladd.f64(double %510, double %510, double %509)
  %512 = call double @llvm.fmuladd.f64(double %507, double %507, double %511)
  br i1 %494, label %513, label %518

513:                                              ; preds = %493
  %514 = getelementptr double, ptr %502, i64 3
  %515 = load double, ptr %514, align 8, !tbaa !13, !llvm.access.group !123
  %516 = fsub double %515, %449
  %517 = call double @llvm.fmuladd.f64(double %516, double %516, double %512)
  br label %518

518:                                              ; preds = %513, %493
  %519 = phi double [ %517, %513 ], [ %512, %493 ]
  %520 = phi double [ %516, %513 ], [ %477, %493 ]
  %521 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !123
  %522 = getelementptr inbounds %struct.parm, ptr %521, i64 0, i32 5
  %523 = load i32, ptr %522, align 4, !tbaa !113, !llvm.access.group !123
  %524 = getelementptr inbounds %struct.parm, ptr %521, i64 0, i32 59
  %525 = load ptr, ptr %524, align 8, !tbaa !114, !llvm.access.group !123
  %526 = sext i32 %497 to i64
  %527 = getelementptr inbounds i32, ptr %525, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !6, !llvm.access.group !123
  %529 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !123
  %530 = getelementptr inbounds double, ptr %529, i64 %526
  %531 = load double, ptr %530, align 8, !tbaa !13, !llvm.access.group !123
  %532 = fmul double %429, %531
  %533 = load ptr, ptr @egb.reff, align 8, !tbaa !10, !llvm.access.group !123
  %534 = getelementptr inbounds double, ptr %533, i64 %526
  %535 = load double, ptr %534, align 8, !tbaa !13, !llvm.access.group !123
  %536 = fmul double %432, %535
  %537 = fneg double %519
  %538 = fmul double %536, 4.000000e+00
  %539 = fdiv double %537, %538
  %540 = call double @exp(double noundef %539) #34, !llvm.access.group !123
  %541 = call double @llvm.fmuladd.f64(double %536, double %540, double %519)
  %542 = call double @sqrt(double noundef %541) #34, !llvm.access.group !123
  %543 = fdiv double 1.000000e+00, %542
  %544 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !123
  %545 = load double, ptr %544, align 8, !tbaa !13, !llvm.access.group !123
  %546 = fmul double %545, -7.300000e-01
  %547 = fdiv double %546, %543
  %548 = call double @exp(double noundef %547) #34, !llvm.access.group !123
  %549 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !123
  %550 = load double, ptr %549, align 8, !tbaa !13, !llvm.access.group !123
  %551 = fdiv double %548, %550
  %552 = fsub double 1.000000e+00, %551
  %553 = fmul double %543, %543
  %554 = fmul double %543, %553
  %555 = fmul double %532, %554
  %556 = call double @llvm.fmuladd.f64(double %547, double %551, double %552)
  %557 = fmul double %555, %556
  %558 = call double @llvm.fmuladd.f64(double %540, double -2.500000e-01, double 1.000000e+00)
  %559 = fmul double %558, %557
  %560 = fmul double %540, 5.000000e-01
  %561 = fmul double %560, %557
  %562 = call double @llvm.fmuladd.f64(double %519, double 2.500000e-01, double %536)
  %563 = fmul double %562, %561
  %564 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10, !llvm.access.group !123
  %565 = getelementptr inbounds double, ptr %564, i64 %419
  %566 = load double, ptr %565, align 8, !tbaa !13, !llvm.access.group !123
  %567 = call double @llvm.fmuladd.f64(double %432, double %563, double %566)
  store double %567, ptr %565, align 8, !tbaa !13, !llvm.access.group !123
  %568 = load ptr, ptr @egb.iexw, align 8, !tbaa !10, !llvm.access.group !123
  %569 = add nsw i32 %497, %34
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, ptr %568, i64 %570
  %572 = load i32, ptr %571, align 4, !tbaa !6, !llvm.access.group !123
  %573 = icmp eq i32 %572, %435
  br i1 %573, label %616, label %574

574:                                              ; preds = %518
  %575 = add nsw i32 %528, -1
  %576 = mul nsw i32 %575, %523
  %577 = call double @sqrt(double noundef %519) #34, !llvm.access.group !123
  %578 = fdiv double 1.000000e+00, %577
  %579 = fmul double %578, %578
  %580 = fneg double %532
  %581 = fmul double %578, %580
  %582 = call double @llvm.fmuladd.f64(double %581, double %579, double %559)
  %583 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !123
  %584 = getelementptr inbounds %struct.parm, ptr %583, i64 0, i32 61
  %585 = load ptr, ptr %584, align 8, !tbaa !116, !llvm.access.group !123
  %586 = getelementptr inbounds %struct.parm, ptr %583, i64 0, i32 59
  %587 = load ptr, ptr %586, align 8, !tbaa !114, !llvm.access.group !123
  %588 = getelementptr inbounds i32, ptr %587, i64 %419
  %589 = load i32, ptr %588, align 4, !tbaa !6, !llvm.access.group !123
  %590 = add nsw i32 %589, %576
  %591 = sext i32 %590 to i64
  %592 = getelementptr i32, ptr %585, i64 %591
  %593 = getelementptr i32, ptr %592, i64 -1
  %594 = load i32, ptr %593, align 4, !tbaa !6, !llvm.access.group !123
  %595 = icmp sgt i32 %594, 0
  br i1 %595, label %596, label %616

596:                                              ; preds = %574
  %597 = add nsw i32 %594, -1
  %598 = fmul double %579, %579
  %599 = fmul double %579, %598
  %600 = getelementptr inbounds %struct.parm, ptr %583, i64 0, i32 48
  %601 = load ptr, ptr %600, align 8, !tbaa !117, !llvm.access.group !123
  %602 = zext nneg i32 %597 to i64
  %603 = getelementptr inbounds double, ptr %601, i64 %602
  %604 = load double, ptr %603, align 8, !tbaa !13, !llvm.access.group !123
  %605 = fmul double %599, %604
  %606 = getelementptr inbounds %struct.parm, ptr %583, i64 0, i32 47
  %607 = load ptr, ptr %606, align 8, !tbaa !118, !llvm.access.group !123
  %608 = getelementptr inbounds double, ptr %607, i64 %602
  %609 = load double, ptr %608, align 8, !tbaa !13, !llvm.access.group !123
  %610 = fmul double %599, %609
  %611 = fmul double %599, %610
  %612 = fmul double %605, -6.000000e+00
  %613 = call double @llvm.fmuladd.f64(double %611, double 1.200000e+01, double %612)
  %614 = fneg double %613
  %615 = call double @llvm.fmuladd.f64(double %614, double %579, double %582)
  br label %616

616:                                              ; preds = %574, %596, %518
  %617 = phi double [ %615, %596 ], [ %582, %574 ], [ %559, %518 ]
  %618 = insertelement <2 x double> poison, double %617, i64 0
  %619 = shufflevector <2 x double> %618, <2 x double> poison, <2 x i32> zeroinitializer
  %620 = fmul <2 x double> %504, %619
  %621 = fmul double %507, %617
  %622 = fadd <2 x double> %480, %620
  %623 = fadd double %479, %621
  %624 = load i1, ptr @dim, align 4
  %625 = fmul double %520, %617
  %626 = select i1 %624, double %625, double -0.000000e+00
  %627 = fadd double %478, %626
  %628 = add nuw nsw i64 %476, 1
  %629 = icmp eq i64 %628, %462
  br i1 %629, label %630, label %474, !llvm.loop !125

630:                                              ; preds = %616
  %631 = load ptr, ptr %12, align 8, !tbaa !10, !llvm.access.group !123
  %632 = getelementptr inbounds double, ptr %631, i64 %438
  %633 = load <2 x double>, ptr %632, align 8, !tbaa !13
  %634 = fsub <2 x double> %633, %622
  store <2 x double> %634, ptr %632, align 8, !tbaa !13
  %635 = getelementptr inbounds double, ptr %631, i64 %442
  %636 = load double, ptr %635, align 8, !tbaa !13, !llvm.access.group !123
  %637 = fsub double %636, %623
  store double %637, ptr %635, align 8, !tbaa !13, !llvm.access.group !123
  br i1 %624, label %638, label %642

638:                                              ; preds = %630
  %639 = getelementptr double, ptr %632, i64 3
  %640 = load double, ptr %639, align 8, !tbaa !13, !llvm.access.group !123
  %641 = fsub double %640, %627
  store double %641, ptr %639, align 8, !tbaa !13, !llvm.access.group !123
  br label %642

642:                                              ; preds = %418, %638, %630
  %643 = phi double [ %421, %418 ], [ %520, %638 ], [ %520, %630 ]
  %644 = phi double [ %420, %418 ], [ %449, %638 ], [ %449, %630 ]
  %645 = add nsw i64 %419, 1
  %646 = load i32, ptr %24, align 4, !tbaa !6, !llvm.access.group !123
  %647 = sext i32 %646 to i64
  %648 = icmp slt i64 %419, %647
  br i1 %648, label %418, label %405, !llvm.loop !126

649:                                              ; preds = %405, %400
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #21
  br label %650

650:                                              ; preds = %381, %649, %398
  call void @__kmpc_barrier(ptr nonnull @2, i32 %43)
  store ptr %15, ptr %27, align 8
  %651 = getelementptr inbounds [4 x ptr], ptr %27, i64 0, i64 1
  store ptr %16, ptr %651, align 8
  %652 = getelementptr inbounds [4 x ptr], ptr %27, i64 0, i64 2
  store ptr %17, ptr %652, align 8
  %653 = getelementptr inbounds [4 x ptr], ptr %27, i64 0, i64 3
  store ptr %18, ptr %653, align 8
  %654 = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %43, i32 4, i64 32, ptr nonnull %27, ptr nonnull @egb.omp_outlined.81.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %654, label %677 [
    i32 1, label %655
    i32 2, label %668
  ]

655:                                              ; preds = %650
  %656 = load double, ptr %5, align 8, !tbaa !13
  %657 = load double, ptr %15, align 8, !tbaa !13
  %658 = fadd double %656, %657
  store double %658, ptr %5, align 8, !tbaa !13
  %659 = load double, ptr %10, align 8, !tbaa !13
  %660 = load double, ptr %16, align 8, !tbaa !13
  %661 = fadd double %659, %660
  store double %661, ptr %10, align 8, !tbaa !13
  %662 = load double, ptr %11, align 8, !tbaa !13
  %663 = load double, ptr %17, align 8, !tbaa !13
  %664 = fadd double %662, %663
  store double %664, ptr %11, align 8, !tbaa !13
  %665 = load double, ptr %13, align 8, !tbaa !13
  %666 = load double, ptr %18, align 8, !tbaa !13
  %667 = fadd double %665, %666
  store double %667, ptr %13, align 8, !tbaa !13
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %43, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %677

668:                                              ; preds = %650
  %669 = load double, ptr %15, align 8, !tbaa !13
  %670 = atomicrmw fadd ptr %5, double %669 monotonic, align 8
  %671 = load double, ptr %16, align 8, !tbaa !13
  %672 = atomicrmw fadd ptr %10, double %671 monotonic, align 8
  %673 = load double, ptr %17, align 8, !tbaa !13
  %674 = atomicrmw fadd ptr %11, double %673 monotonic, align 8
  %675 = load double, ptr %18, align 8, !tbaa !13
  %676 = atomicrmw fadd ptr %13, double %675 monotonic, align 8
  br label %677

677:                                              ; preds = %668, %655, %650
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @egb.omp_outlined.81.omp.reduction.reduction_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #23 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = load double, ptr %4, align 8, !tbaa !13
  %18 = load double, ptr %3, align 8, !tbaa !13
  %19 = fadd double %17, %18
  store double %19, ptr %4, align 8, !tbaa !13
  %20 = load double, ptr %8, align 8, !tbaa !13
  %21 = load double, ptr %6, align 8, !tbaa !13
  %22 = fadd double %20, %21
  store double %22, ptr %8, align 8, !tbaa !13
  %23 = load double, ptr %12, align 8, !tbaa !13
  %24 = load double, ptr %10, align 8, !tbaa !13
  %25 = fadd double %23, %24
  store double %25, ptr %12, align 8, !tbaa !13
  %26 = load double, ptr %16, align 8, !tbaa !13
  %27 = load double, ptr %14, align 8, !tbaa !13
  %28 = fadd double %26, %27
  store double %28, ptr %16, align 8, !tbaa !13
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #22

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @egb.omp_outlined.84(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10) #20 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = tail call i32 @omp_get_thread_num() #31
  %21 = tail call i32 @omp_get_num_threads() #31
  %22 = load ptr, ptr @prm, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !27
  %25 = icmp sgt i32 %24, 0
  %26 = load i32, ptr %0, align 4, !tbaa !6
  br i1 %25, label %27, label %318

27:                                               ; preds = %11
  %28 = add nsw i32 %24, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  store i32 0, ptr %12, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #21
  store i32 %28, ptr %13, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  store i32 1, ptr %14, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #21
  store i32 0, ptr %15, align 4, !tbaa !6
  %29 = load i32, ptr @blocksize, align 4, !tbaa !6
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %26, i32 1073741859, i32 0, i32 %28, i32 1, i32 %29)
  %30 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %26, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %316, label %37

32:                                               ; preds = %309, %37
  %33 = phi double [ %39, %37 ], [ %310, %309 ]
  %34 = phi double [ %38, %37 ], [ %311, %309 ]
  %35 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %26, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %316, label %37

37:                                               ; preds = %27, %32
  %38 = phi double [ %34, %32 ], [ undef, %27 ]
  %39 = phi double [ %33, %32 ], [ undef, %27 ]
  %40 = load i32, ptr %12, align 4, !tbaa !6
  %41 = load i32, ptr %13, align 4, !tbaa !6, !llvm.access.group !128
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %32, label %43

43:                                               ; preds = %37
  %44 = sext i32 %40 to i64
  br label %45

45:                                               ; preds = %43, %309
  %46 = phi i64 [ %44, %43 ], [ %312, %309 ]
  %47 = phi double [ %38, %43 ], [ %311, %309 ]
  %48 = phi double [ %39, %43 ], [ %310, %309 ]
  %49 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !128
  %50 = getelementptr inbounds i32, ptr %49, i64 %46
  %51 = load i32, ptr %50, align 4, !tbaa !6, !llvm.access.group !128
  %52 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !128
  %53 = getelementptr inbounds i32, ptr %52, i64 %46
  %54 = load i32, ptr %53, align 4, !tbaa !6, !llvm.access.group !128
  %55 = add i32 %54, %51
  %56 = load ptr, ptr @frozen, align 8, !tbaa !10, !llvm.access.group !128
  %57 = getelementptr inbounds i32, ptr %56, i64 %46
  %58 = load i32, ptr %57, align 4, !tbaa !6, !llvm.access.group !128
  %59 = icmp ne i32 %58, 0
  %60 = icmp slt i32 %55, 1
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %309, label %62

62:                                               ; preds = %45
  %63 = load i1, ptr @dim, align 4
  %64 = select i1 %63, i32 4, i32 3
  %65 = trunc i64 %46 to i32
  %66 = mul nsw i32 %64, %65
  %67 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !128
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds double, ptr %67, i64 %68
  %70 = load <2 x double>, ptr %69, align 8, !tbaa !13
  %71 = add nsw i32 %66, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %67, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !13, !llvm.access.group !128
  br i1 %63, label %75, label %78

75:                                               ; preds = %62
  %76 = getelementptr double, ptr %69, i64 3
  %77 = load double, ptr %76, align 8, !tbaa !13, !llvm.access.group !128
  br label %78

78:                                               ; preds = %75, %62
  %79 = phi double [ %77, %75 ], [ %47, %62 ]
  %80 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !128
  %81 = getelementptr inbounds double, ptr %80, i64 %46
  %82 = load double, ptr %81, align 8, !tbaa !13, !llvm.access.group !128
  %83 = fadd double %82, 0xBFB70A3D70A3D70A
  %84 = fdiv double 1.000000e+00, %83
  %85 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10, !llvm.access.group !128
  %86 = getelementptr inbounds double, ptr %85, i64 %46
  %87 = load double, ptr %86, align 8, !tbaa !13, !llvm.access.group !128
  %88 = load i32, ptr @gb, align 4, !tbaa !6, !llvm.access.group !128
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %123

90:                                               ; preds = %78
  %91 = load double, ptr @gbalpha, align 8, !tbaa !13, !llvm.access.group !128
  %92 = load double, ptr @gbbeta, align 8, !tbaa !13, !llvm.access.group !128
  %93 = load ptr, ptr @egb.psi, align 8, !tbaa !10, !llvm.access.group !128
  %94 = getelementptr inbounds double, ptr %93, i64 %46
  %95 = load double, ptr %94, align 8, !tbaa !13, !llvm.access.group !128
  %96 = fneg double %92
  %97 = call double @llvm.fmuladd.f64(double %96, double %95, double %91)
  %98 = load double, ptr @gbgamma, align 8, !tbaa !13, !llvm.access.group !128
  %99 = fmul double %95, %98
  %100 = call double @llvm.fmuladd.f64(double %99, double %95, double %97)
  %101 = fmul double %95, %100
  %102 = call double @tanh(double noundef %101) #34, !llvm.access.group !128
  %103 = load double, ptr @gbalpha, align 8, !tbaa !13, !llvm.access.group !128
  %104 = load double, ptr @gbbeta, align 8, !tbaa !13, !llvm.access.group !128
  %105 = load ptr, ptr @egb.psi, align 8, !tbaa !10, !llvm.access.group !128
  %106 = getelementptr inbounds double, ptr %105, i64 %46
  %107 = load double, ptr %106, align 8, !tbaa !13, !llvm.access.group !128
  %108 = fmul double %104, -2.000000e+00
  %109 = call double @llvm.fmuladd.f64(double %108, double %107, double %103)
  %110 = load double, ptr @gbgamma, align 8, !tbaa !13, !llvm.access.group !128
  %111 = fmul double %110, 3.000000e+00
  %112 = fmul double %107, %111
  %113 = call double @llvm.fmuladd.f64(double %112, double %107, double %109)
  %114 = fneg double %102
  %115 = call double @llvm.fmuladd.f64(double %114, double %102, double 1.000000e+00)
  %116 = fmul double %115, %113
  %117 = fmul double %83, %116
  %118 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !128
  %119 = getelementptr inbounds double, ptr %118, i64 %46
  %120 = load double, ptr %119, align 8, !tbaa !13, !llvm.access.group !128
  %121 = fdiv double %117, %120
  %122 = fmul double %87, %121
  br label %123

123:                                              ; preds = %78, %90
  %124 = phi double [ %122, %90 ], [ %87, %78 ]
  %125 = fneg double %83
  %126 = zext nneg i32 %55 to i64
  br label %127

127:                                              ; preds = %123, %287
  %128 = phi i64 [ 0, %123 ], [ %291, %287 ]
  %129 = phi double [ 0.000000e+00, %123 ], [ %289, %287 ]
  %130 = phi double [ 0.000000e+00, %123 ], [ %288, %287 ]
  %131 = phi double [ %48, %123 ], [ %172, %287 ]
  %132 = phi <2 x double> [ zeroinitializer, %123 ], [ %290, %287 ]
  %133 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !128
  %134 = getelementptr inbounds ptr, ptr %133, i64 %46
  %135 = load ptr, ptr %134, align 8, !tbaa !10, !llvm.access.group !128
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !128
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.85, i32 noundef 0) #31, !llvm.access.group !128
  %140 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !128
  %141 = call i32 @fflush(ptr noundef %140) #31, !llvm.access.group !128
  %142 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !128
  %143 = getelementptr inbounds ptr, ptr %142, i64 %46
  %144 = load ptr, ptr %143, align 8, !tbaa !10, !llvm.access.group !128
  br label %145

145:                                              ; preds = %137, %127
  %146 = phi ptr [ %144, %137 ], [ %135, %127 ]
  %147 = getelementptr inbounds i32, ptr %146, i64 %128
  %148 = load i32, ptr %147, align 4, !tbaa !6, !llvm.access.group !128
  %149 = load i1, ptr @dim, align 4
  %150 = select i1 %149, i32 4, i32 3
  %151 = mul nsw i32 %150, %148
  %152 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !128
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds double, ptr %152, i64 %153
  %155 = load <2 x double>, ptr %154, align 8, !tbaa !13
  %156 = fsub <2 x double> %70, %155
  %157 = getelementptr double, ptr %154, i64 2
  %158 = load double, ptr %157, align 8, !tbaa !13, !llvm.access.group !128
  %159 = fsub double %74, %158
  %160 = fmul <2 x double> %156, %156
  %161 = extractelement <2 x double> %160, i64 1
  %162 = extractelement <2 x double> %156, i64 0
  %163 = call double @llvm.fmuladd.f64(double %162, double %162, double %161)
  %164 = call double @llvm.fmuladd.f64(double %159, double %159, double %163)
  br i1 %149, label %165, label %170

165:                                              ; preds = %145
  %166 = getelementptr double, ptr %154, i64 3
  %167 = load double, ptr %166, align 8, !tbaa !13, !llvm.access.group !128
  %168 = fsub double %79, %167
  %169 = call double @llvm.fmuladd.f64(double %168, double %168, double %164)
  br label %170

170:                                              ; preds = %165, %145
  %171 = phi double [ %169, %165 ], [ %164, %145 ]
  %172 = phi double [ %168, %165 ], [ %131, %145 ]
  %173 = load double, ptr %7, align 8, !tbaa !13, !llvm.access.group !128
  %174 = fcmp ogt double %171, %173
  br i1 %174, label %287, label %175

175:                                              ; preds = %170
  %176 = call double @sqrt(double noundef %171) #34, !llvm.access.group !128
  %177 = fdiv double 1.000000e+00, %176
  %178 = fmul double %177, %177
  %179 = fmul double %171, %177
  %180 = load ptr, ptr %8, align 8, !tbaa !10, !llvm.access.group !128
  %181 = sext i32 %148 to i64
  %182 = getelementptr inbounds double, ptr %180, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !13, !llvm.access.group !128
  %184 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !128
  %185 = getelementptr inbounds double, ptr %184, i64 %181
  %186 = load double, ptr %185, align 8, !tbaa !13, !llvm.access.group !128
  %187 = fadd double %186, 0xBFB70A3D70A3D70A
  %188 = fmul double %183, %187
  %189 = fmul double %188, %188
  %190 = fadd double %188, 2.000000e+01
  %191 = fcmp ogt double %179, %190
  br i1 %191, label %287, label %192

192:                                              ; preds = %175
  %193 = fsub double 2.000000e+01, %188
  %194 = fcmp ogt double %179, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = fsub double %179, %188
  %197 = fdiv double 1.000000e+00, %196
  %198 = fmul double %177, %178
  %199 = fmul double %198, 1.250000e-01
  %200 = fadd double %171, %189
  %201 = load double, ptr %9, align 8, !tbaa !13, !llvm.access.group !128
  %202 = fneg double %201
  %203 = call double @llvm.fmuladd.f64(double %197, double %197, double %202)
  %204 = fmul double %197, 2.000000e+01
  %205 = call double @log(double noundef %204) #34, !llvm.access.group !128
  %206 = fmul double %205, -2.000000e+00
  %207 = call double @llvm.fmuladd.f64(double %200, double %203, double %206)
  %208 = fmul double %199, %207
  br label %278

209:                                              ; preds = %192
  %210 = fmul double %188, 4.000000e+00
  %211 = fcmp ogt double %179, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = fmul double %178, %189
  %214 = call double @llvm.fmuladd.f64(double %213, double 0x4015D1745D1745D1, double 0x4011C71C71C71C72)
  %215 = call double @llvm.fmuladd.f64(double %213, double %214, double 0x400B6DB6DB6DB6DB)
  %216 = call double @llvm.fmuladd.f64(double %213, double %215, double 2.400000e+00)
  %217 = call double @llvm.fmuladd.f64(double %213, double %216, double 0x3FF5555555555555)
  %218 = fmul double %188, %213
  %219 = fmul double %178, %218
  %220 = fmul double %178, %219
  %221 = fmul double %220, %217
  br label %278

222:                                              ; preds = %209
  %223 = fadd double %83, %188
  %224 = fcmp ogt double %179, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = fsub double %171, %189
  %227 = fdiv double 1.000000e+00, %226
  %228 = fmul double %188, %227
  %229 = call double @llvm.fmuladd.f64(double %178, double -5.000000e-01, double %227)
  %230 = fmul double %177, 2.500000e-01
  %231 = fmul double %230, %178
  %232 = fsub double %179, %188
  %233 = fadd double %179, %188
  %234 = fdiv double %232, %233
  %235 = call double @log(double noundef %234) #34, !llvm.access.group !128
  %236 = fmul double %231, %235
  %237 = call double @llvm.fmuladd.f64(double %228, double %229, double %236)
  br label %278

238:                                              ; preds = %222
  %239 = fsub double %83, %188
  %240 = call double @llvm.fabs.f64(double %239)
  %241 = fcmp ogt double %179, %240
  br i1 %241, label %242, label %260

242:                                              ; preds = %238
  %243 = fadd double %179, %188
  %244 = fdiv double 1.000000e+00, %243
  %245 = fmul double %177, %178
  %246 = call double @llvm.fmuladd.f64(double %125, double %83, double %171)
  %247 = fadd double %246, %189
  %248 = fmul double %247, -5.000000e-01
  %249 = fmul double %245, %248
  %250 = fmul double %84, %249
  %251 = fmul double %177, %244
  %252 = fsub double %244, %177
  %253 = fmul double %251, %252
  %254 = call double @llvm.fmuladd.f64(double %250, double %84, double %253)
  %255 = fmul double %83, %244
  %256 = call double @log(double noundef %255) #34, !llvm.access.group !128
  %257 = fneg double %245
  %258 = call double @llvm.fmuladd.f64(double %257, double %256, double %254)
  %259 = fmul double %258, -2.500000e-01
  br label %278

260:                                              ; preds = %238
  %261 = fcmp olt double %83, %188
  br i1 %261, label %262, label %278

262:                                              ; preds = %260
  %263 = fsub double %171, %189
  %264 = fdiv double 1.000000e+00, %263
  %265 = fmul double %178, %188
  %266 = fmul double %188, -2.000000e+00
  %267 = fmul double %266, %264
  %268 = fmul double %264, %267
  %269 = call double @llvm.fmuladd.f64(double %265, double %264, double %268)
  %270 = fsub double %188, %179
  %271 = fadd double %179, %188
  %272 = fdiv double %270, %271
  %273 = call double @log(double noundef %272) #34, !llvm.access.group !128
  %274 = fmul double %178, -5.000000e-01
  %275 = fmul double %177, %274
  %276 = call double @llvm.fmuladd.f64(double %275, double %273, double %269)
  %277 = fmul double %276, -5.000000e-01
  br label %278

278:                                              ; preds = %260, %212, %242, %262, %225, %195
  %279 = phi double [ %208, %195 ], [ %221, %212 ], [ %237, %225 ], [ %259, %242 ], [ %277, %262 ], [ 0.000000e+00, %260 ]
  %280 = insertelement <2 x double> poison, double %279, i64 0
  %281 = shufflevector <2 x double> %280, <2 x double> poison, <2 x i32> zeroinitializer
  %282 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %156, <2 x double> %281, <2 x double> %132)
  %283 = call double @llvm.fmuladd.f64(double %159, double %279, double %130)
  %284 = load i1, ptr @dim, align 4
  br i1 %284, label %285, label %287

285:                                              ; preds = %278
  %286 = call double @llvm.fmuladd.f64(double %172, double %279, double %129)
  br label %287

287:                                              ; preds = %278, %285, %175, %170
  %288 = phi double [ %130, %170 ], [ %130, %175 ], [ %283, %285 ], [ %283, %278 ]
  %289 = phi double [ %129, %170 ], [ %129, %175 ], [ %286, %285 ], [ %129, %278 ]
  %290 = phi <2 x double> [ %132, %170 ], [ %132, %175 ], [ %282, %285 ], [ %282, %278 ]
  %291 = add nuw nsw i64 %128, 1
  %292 = icmp eq i64 %291, %126
  br i1 %292, label %293, label %127, !llvm.loop !129

293:                                              ; preds = %287
  %294 = load ptr, ptr %10, align 8, !tbaa !10, !llvm.access.group !128
  %295 = getelementptr inbounds double, ptr %294, i64 %68
  %296 = fneg double %124
  %297 = load <2 x double>, ptr %295, align 8, !tbaa !13
  %298 = insertelement <2 x double> poison, double %296, i64 0
  %299 = shufflevector <2 x double> %298, <2 x double> poison, <2 x i32> zeroinitializer
  %300 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %299, <2 x double> %290, <2 x double> %297)
  store <2 x double> %300, ptr %295, align 8, !tbaa !13
  %301 = getelementptr inbounds double, ptr %294, i64 %72
  %302 = load double, ptr %301, align 8, !tbaa !13, !llvm.access.group !128
  %303 = call double @llvm.fmuladd.f64(double %296, double %288, double %302)
  store double %303, ptr %301, align 8, !tbaa !13, !llvm.access.group !128
  %304 = load i1, ptr @dim, align 4
  br i1 %304, label %305, label %309

305:                                              ; preds = %293
  %306 = getelementptr double, ptr %295, i64 3
  %307 = load double, ptr %306, align 8, !tbaa !13, !llvm.access.group !128
  %308 = call double @llvm.fmuladd.f64(double %296, double %289, double %307)
  store double %308, ptr %306, align 8, !tbaa !13, !llvm.access.group !128
  br label %309

309:                                              ; preds = %45, %305, %293
  %310 = phi double [ %48, %45 ], [ %172, %305 ], [ %172, %293 ]
  %311 = phi double [ %47, %45 ], [ %79, %305 ], [ %79, %293 ]
  %312 = add nsw i64 %46, 1
  %313 = load i32, ptr %13, align 4, !tbaa !6, !llvm.access.group !128
  %314 = sext i32 %313 to i64
  %315 = icmp slt i64 %46, %314
  br i1 %315, label %45, label %32, !llvm.loop !130

316:                                              ; preds = %32, %27
  %317 = phi double [ undef, %27 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  br label %318

318:                                              ; preds = %316, %11
  %319 = phi double [ %317, %316 ], [ undef, %11 ]
  call void @__kmpc_barrier(ptr nonnull @2, i32 %26)
  %320 = load ptr, ptr @prm, align 8, !tbaa !10
  %321 = getelementptr inbounds %struct.parm, ptr %320, i64 0, i32 4
  %322 = load i32, ptr %321, align 8, !tbaa !27
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %616

324:                                              ; preds = %318
  %325 = add nsw i32 %322, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #21
  store i32 0, ptr %16, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #21
  store i32 %325, ptr %17, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #21
  store i32 1, ptr %18, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #21
  store i32 0, ptr %19, align 4, !tbaa !6
  %326 = load i32, ptr @blocksize, align 4, !tbaa !6
  call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %26, i32 1073741859, i32 0, i32 %325, i32 1, i32 %326)
  %327 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %26, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %615, label %334

329:                                              ; preds = %608, %334
  %330 = phi double [ %336, %334 ], [ %609, %608 ]
  %331 = phi double [ %335, %334 ], [ %610, %608 ]
  %332 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %26, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18)
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %615, label %334

334:                                              ; preds = %324, %329
  %335 = phi double [ %331, %329 ], [ undef, %324 ]
  %336 = phi double [ %330, %329 ], [ %319, %324 ]
  %337 = load i32, ptr %16, align 4, !tbaa !6
  %338 = load i32, ptr %17, align 4, !tbaa !6, !llvm.access.group !132
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %329, label %340

340:                                              ; preds = %334
  %341 = sext i32 %337 to i64
  br label %342

342:                                              ; preds = %340, %608
  %343 = phi i64 [ %341, %340 ], [ %611, %608 ]
  %344 = phi double [ %335, %340 ], [ %610, %608 ]
  %345 = phi double [ %336, %340 ], [ %609, %608 ]
  %346 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !132
  %347 = getelementptr inbounds i32, ptr %346, i64 %343
  %348 = load i32, ptr %347, align 4, !tbaa !6, !llvm.access.group !132
  %349 = load ptr, ptr %3, align 8, !tbaa !10, !llvm.access.group !132
  %350 = getelementptr inbounds i32, ptr %349, i64 %343
  %351 = load i32, ptr %350, align 4, !tbaa !6, !llvm.access.group !132
  %352 = add nsw i32 %351, %348
  %353 = icmp slt i32 %352, 1
  br i1 %353, label %608, label %354

354:                                              ; preds = %342
  %355 = load i1, ptr @dim, align 4
  %356 = select i1 %355, i32 4, i32 3
  %357 = trunc i64 %343 to i32
  %358 = mul nsw i32 %356, %357
  %359 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !132
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds double, ptr %359, i64 %360
  %362 = load <2 x double>, ptr %361, align 8, !tbaa !13
  %363 = add nsw i32 %358, 2
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, ptr %359, i64 %364
  %366 = load double, ptr %365, align 8, !tbaa !13, !llvm.access.group !132
  br i1 %355, label %367, label %370

367:                                              ; preds = %354
  %368 = getelementptr double, ptr %361, i64 3
  %369 = load double, ptr %368, align 8, !tbaa !13, !llvm.access.group !132
  br label %370

370:                                              ; preds = %354, %367
  %371 = phi double [ %369, %367 ], [ %344, %354 ]
  %372 = load ptr, ptr %8, align 8, !tbaa !10, !llvm.access.group !132
  %373 = getelementptr inbounds double, ptr %372, i64 %343
  %374 = load double, ptr %373, align 8, !tbaa !13, !llvm.access.group !132
  %375 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !132
  %376 = getelementptr inbounds double, ptr %375, i64 %343
  %377 = load double, ptr %376, align 8, !tbaa !13, !llvm.access.group !132
  %378 = fadd double %377, 0xBFB70A3D70A3D70A
  %379 = fmul double %374, %378
  %380 = fmul double %379, %379
  %381 = fadd double %379, 2.000000e+01
  %382 = fsub double 2.000000e+01, %379
  %383 = fmul double %379, 4.000000e+00
  %384 = fmul double %379, -2.000000e+00
  %385 = zext nneg i32 %352 to i64
  br label %386

386:                                              ; preds = %370, %588
  %387 = phi i64 [ 0, %370 ], [ %593, %588 ]
  %388 = phi double [ 0.000000e+00, %370 ], [ %591, %588 ]
  %389 = phi double [ 0.000000e+00, %370 ], [ %590, %588 ]
  %390 = phi double [ %345, %370 ], [ %589, %588 ]
  %391 = phi <2 x double> [ zeroinitializer, %370 ], [ %592, %588 ]
  %392 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !132
  %393 = getelementptr inbounds ptr, ptr %392, i64 %343
  %394 = load ptr, ptr %393, align 8, !tbaa !10, !llvm.access.group !132
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %386
  %397 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef 0) #31, !llvm.access.group !132
  %398 = load ptr, ptr @stdout, align 8, !tbaa !10, !llvm.access.group !132
  %399 = call i32 @fflush(ptr noundef %398) #31, !llvm.access.group !132
  %400 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !132
  %401 = getelementptr inbounds ptr, ptr %400, i64 %343
  %402 = load ptr, ptr %401, align 8, !tbaa !10, !llvm.access.group !132
  br label %403

403:                                              ; preds = %396, %386
  %404 = phi ptr [ %402, %396 ], [ %394, %386 ]
  %405 = getelementptr inbounds i32, ptr %404, i64 %387
  %406 = load i32, ptr %405, align 4, !tbaa !6, !llvm.access.group !132
  %407 = load ptr, ptr @frozen, align 8, !tbaa !10, !llvm.access.group !132
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i32, ptr %407, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !6, !llvm.access.group !132
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %588

412:                                              ; preds = %403
  %413 = load i1, ptr @dim, align 4
  %414 = select i1 %413, i32 4, i32 3
  %415 = mul nsw i32 %414, %406
  %416 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !132
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds double, ptr %416, i64 %417
  %419 = load <2 x double>, ptr %418, align 8, !tbaa !13
  %420 = fsub <2 x double> %419, %362
  %421 = getelementptr double, ptr %418, i64 2
  %422 = load double, ptr %421, align 8, !tbaa !13, !llvm.access.group !132
  %423 = fsub double %422, %366
  %424 = fmul <2 x double> %420, %420
  %425 = extractelement <2 x double> %424, i64 1
  %426 = extractelement <2 x double> %420, i64 0
  %427 = call double @llvm.fmuladd.f64(double %426, double %426, double %425)
  %428 = call double @llvm.fmuladd.f64(double %423, double %423, double %427)
  br i1 %413, label %429, label %434

429:                                              ; preds = %412
  %430 = getelementptr double, ptr %418, i64 3
  %431 = load double, ptr %430, align 8, !tbaa !13, !llvm.access.group !132
  %432 = fsub double %431, %371
  %433 = call double @llvm.fmuladd.f64(double %432, double %432, double %428)
  br label %434

434:                                              ; preds = %429, %412
  %435 = phi double [ %433, %429 ], [ %428, %412 ]
  %436 = phi double [ %432, %429 ], [ %390, %412 ]
  %437 = load double, ptr %7, align 8, !tbaa !13, !llvm.access.group !132
  %438 = fcmp ogt double %435, %437
  br i1 %438, label %588, label %439

439:                                              ; preds = %434
  %440 = call double @sqrt(double noundef %435) #34, !llvm.access.group !132
  %441 = fdiv double 1.000000e+00, %440
  %442 = fmul double %441, %441
  %443 = fmul double %435, %441
  %444 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !132
  %445 = getelementptr inbounds double, ptr %444, i64 %408
  %446 = load double, ptr %445, align 8, !tbaa !13, !llvm.access.group !132
  %447 = fadd double %446, 0xBFB70A3D70A3D70A
  %448 = fdiv double 1.000000e+00, %447
  %449 = fcmp ogt double %443, %381
  br i1 %449, label %588, label %450

450:                                              ; preds = %439
  %451 = fcmp ogt double %443, %382
  br i1 %451, label %452, label %466

452:                                              ; preds = %450
  %453 = fsub double %443, %379
  %454 = fdiv double 1.000000e+00, %453
  %455 = fmul double %441, %442
  %456 = fmul double %455, 1.250000e-01
  %457 = fadd double %380, %435
  %458 = load double, ptr %9, align 8, !tbaa !13, !llvm.access.group !132
  %459 = fneg double %458
  %460 = call double @llvm.fmuladd.f64(double %454, double %454, double %459)
  %461 = fmul double %454, 2.000000e+01
  %462 = call double @log(double noundef %461) #34, !llvm.access.group !132
  %463 = fmul double %462, -2.000000e+00
  %464 = call double @llvm.fmuladd.f64(double %457, double %460, double %463)
  %465 = fmul double %456, %464
  br label %534

466:                                              ; preds = %450
  %467 = fcmp ogt double %443, %383
  br i1 %467, label %468, label %478

468:                                              ; preds = %466
  %469 = fmul double %380, %442
  %470 = call double @llvm.fmuladd.f64(double %469, double 0x4015D1745D1745D1, double 0x4011C71C71C71C72)
  %471 = call double @llvm.fmuladd.f64(double %469, double %470, double 0x400B6DB6DB6DB6DB)
  %472 = call double @llvm.fmuladd.f64(double %469, double %471, double 2.400000e+00)
  %473 = call double @llvm.fmuladd.f64(double %469, double %472, double 0x3FF5555555555555)
  %474 = fmul double %379, %469
  %475 = fmul double %442, %474
  %476 = fmul double %442, %475
  %477 = fmul double %476, %473
  br label %534

478:                                              ; preds = %466
  %479 = fadd double %379, %447
  %480 = fcmp ogt double %443, %479
  br i1 %480, label %481, label %494

481:                                              ; preds = %478
  %482 = fsub double %435, %380
  %483 = fdiv double 1.000000e+00, %482
  %484 = fmul double %379, %483
  %485 = call double @llvm.fmuladd.f64(double %442, double -5.000000e-01, double %483)
  %486 = fmul double %441, 2.500000e-01
  %487 = fmul double %486, %442
  %488 = fsub double %443, %379
  %489 = fadd double %379, %443
  %490 = fdiv double %488, %489
  %491 = call double @log(double noundef %490) #34, !llvm.access.group !132
  %492 = fmul double %487, %491
  %493 = call double @llvm.fmuladd.f64(double %484, double %485, double %492)
  br label %534

494:                                              ; preds = %478
  %495 = fsub double %447, %379
  %496 = call double @llvm.fabs.f64(double %495)
  %497 = fcmp ogt double %443, %496
  br i1 %497, label %498, label %517

498:                                              ; preds = %494
  %499 = fadd double %379, %443
  %500 = fdiv double 1.000000e+00, %499
  %501 = fmul double %441, %442
  %502 = fneg double %447
  %503 = call double @llvm.fmuladd.f64(double %502, double %447, double %435)
  %504 = fadd double %380, %503
  %505 = fmul double %504, -5.000000e-01
  %506 = fmul double %501, %505
  %507 = fmul double %448, %506
  %508 = fmul double %441, %500
  %509 = fsub double %500, %441
  %510 = fmul double %508, %509
  %511 = call double @llvm.fmuladd.f64(double %507, double %448, double %510)
  %512 = fmul double %447, %500
  %513 = call double @log(double noundef %512) #34, !llvm.access.group !132
  %514 = fneg double %501
  %515 = call double @llvm.fmuladd.f64(double %514, double %513, double %511)
  %516 = fmul double %515, -2.500000e-01
  br label %534

517:                                              ; preds = %494
  %518 = fcmp olt double %447, %379
  br i1 %518, label %519, label %534

519:                                              ; preds = %517
  %520 = fsub double %435, %380
  %521 = fdiv double 1.000000e+00, %520
  %522 = fmul double %379, %442
  %523 = fmul double %384, %521
  %524 = fmul double %521, %523
  %525 = call double @llvm.fmuladd.f64(double %522, double %521, double %524)
  %526 = fsub double %379, %443
  %527 = fadd double %379, %443
  %528 = fdiv double %526, %527
  %529 = call double @log(double noundef %528) #34, !llvm.access.group !132
  %530 = fmul double %442, -5.000000e-01
  %531 = fmul double %441, %530
  %532 = call double @llvm.fmuladd.f64(double %531, double %529, double %525)
  %533 = fmul double %532, -5.000000e-01
  br label %534

534:                                              ; preds = %517, %468, %498, %519, %481, %452
  %535 = phi double [ %465, %452 ], [ %477, %468 ], [ %493, %481 ], [ %516, %498 ], [ %533, %519 ], [ 0.000000e+00, %517 ]
  %536 = load ptr, ptr @egb.sumdeijda, align 8, !tbaa !10, !llvm.access.group !132
  %537 = getelementptr inbounds double, ptr %536, i64 %408
  %538 = load double, ptr %537, align 8, !tbaa !13, !llvm.access.group !132
  %539 = load i32, ptr @gb, align 4, !tbaa !6, !llvm.access.group !132
  %540 = icmp sgt i32 %539, 1
  br i1 %540, label %541, label %578

541:                                              ; preds = %534
  %542 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !132
  %543 = getelementptr inbounds double, ptr %542, i64 %408
  %544 = load double, ptr %543, align 8, !tbaa !13, !llvm.access.group !132
  %545 = fadd double %544, 0xBFB70A3D70A3D70A
  %546 = load double, ptr @gbalpha, align 8, !tbaa !13, !llvm.access.group !132
  %547 = load double, ptr @gbbeta, align 8, !tbaa !13, !llvm.access.group !132
  %548 = load ptr, ptr @egb.psi, align 8, !tbaa !10, !llvm.access.group !132
  %549 = getelementptr inbounds double, ptr %548, i64 %408
  %550 = load double, ptr %549, align 8, !tbaa !13, !llvm.access.group !132
  %551 = fneg double %547
  %552 = call double @llvm.fmuladd.f64(double %551, double %550, double %546)
  %553 = load double, ptr @gbgamma, align 8, !tbaa !13, !llvm.access.group !132
  %554 = fmul double %550, %553
  %555 = call double @llvm.fmuladd.f64(double %554, double %550, double %552)
  %556 = fmul double %550, %555
  %557 = call double @tanh(double noundef %556) #34, !llvm.access.group !132
  %558 = load double, ptr @gbalpha, align 8, !tbaa !13, !llvm.access.group !132
  %559 = load double, ptr @gbbeta, align 8, !tbaa !13, !llvm.access.group !132
  %560 = load ptr, ptr @egb.psi, align 8, !tbaa !10, !llvm.access.group !132
  %561 = getelementptr inbounds double, ptr %560, i64 %408
  %562 = load double, ptr %561, align 8, !tbaa !13, !llvm.access.group !132
  %563 = fmul double %559, -2.000000e+00
  %564 = call double @llvm.fmuladd.f64(double %563, double %562, double %558)
  %565 = load double, ptr @gbgamma, align 8, !tbaa !13, !llvm.access.group !132
  %566 = fmul double %565, 3.000000e+00
  %567 = fmul double %562, %566
  %568 = call double @llvm.fmuladd.f64(double %567, double %562, double %564)
  %569 = fneg double %557
  %570 = call double @llvm.fmuladd.f64(double %569, double %557, double 1.000000e+00)
  %571 = fmul double %570, %568
  %572 = fmul double %545, %571
  %573 = load ptr, ptr %5, align 8, !tbaa !10, !llvm.access.group !132
  %574 = getelementptr inbounds double, ptr %573, i64 %408
  %575 = load double, ptr %574, align 8, !tbaa !13, !llvm.access.group !132
  %576 = fdiv double %572, %575
  %577 = fmul double %538, %576
  br label %578

578:                                              ; preds = %541, %534
  %579 = phi double [ %577, %541 ], [ %538, %534 ]
  %580 = fmul double %535, %579
  %581 = insertelement <2 x double> poison, double %580, i64 0
  %582 = shufflevector <2 x double> %581, <2 x double> poison, <2 x i32> zeroinitializer
  %583 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %420, <2 x double> %582, <2 x double> %391)
  %584 = call double @llvm.fmuladd.f64(double %423, double %580, double %389)
  %585 = load i1, ptr @dim, align 4
  br i1 %585, label %586, label %588

586:                                              ; preds = %578
  %587 = call double @llvm.fmuladd.f64(double %436, double %580, double %388)
  br label %588

588:                                              ; preds = %578, %586, %439, %434, %403
  %589 = phi double [ %390, %403 ], [ %436, %434 ], [ %436, %439 ], [ %436, %586 ], [ %436, %578 ]
  %590 = phi double [ %389, %403 ], [ %389, %434 ], [ %389, %439 ], [ %584, %586 ], [ %584, %578 ]
  %591 = phi double [ %388, %403 ], [ %388, %434 ], [ %388, %439 ], [ %587, %586 ], [ %388, %578 ]
  %592 = phi <2 x double> [ %391, %403 ], [ %391, %434 ], [ %391, %439 ], [ %583, %586 ], [ %583, %578 ]
  %593 = add nuw nsw i64 %387, 1
  %594 = icmp eq i64 %593, %385
  br i1 %594, label %595, label %386, !llvm.loop !133

595:                                              ; preds = %588
  %596 = load i1, ptr @dim, align 4
  %597 = load ptr, ptr %10, align 8, !tbaa !10, !llvm.access.group !132
  %598 = getelementptr inbounds double, ptr %597, i64 %360
  %599 = load <2 x double>, ptr %598, align 8, !tbaa !13
  %600 = fadd <2 x double> %592, %599
  store <2 x double> %600, ptr %598, align 8, !tbaa !13
  %601 = getelementptr inbounds double, ptr %597, i64 %364
  %602 = load double, ptr %601, align 8, !tbaa !13, !llvm.access.group !132
  %603 = fadd double %590, %602
  store double %603, ptr %601, align 8, !tbaa !13, !llvm.access.group !132
  br i1 %596, label %604, label %608

604:                                              ; preds = %595
  %605 = getelementptr double, ptr %598, i64 3
  %606 = load double, ptr %605, align 8, !tbaa !13, !llvm.access.group !132
  %607 = fadd double %591, %606
  store double %607, ptr %605, align 8, !tbaa !13, !llvm.access.group !132
  br label %608

608:                                              ; preds = %342, %604, %595
  %609 = phi double [ %345, %342 ], [ %589, %604 ], [ %589, %595 ]
  %610 = phi double [ %344, %342 ], [ %371, %604 ], [ %371, %595 ]
  %611 = add nsw i64 %343, 1
  %612 = load i32, ptr %17, align 4, !tbaa !6, !llvm.access.group !132
  %613 = sext i32 %612 to i64
  %614 = icmp slt i64 %343, %613
  br i1 %614, label %342, label %329, !llvm.loop !134

615:                                              ; preds = %329, %324
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #21
  br label %616

616:                                              ; preds = %615, %318
  call void @__kmpc_barrier(ptr nonnull @2, i32 %26)
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal void @nbond.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12) #24 {
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  store double 0.000000e+00, ptr %14, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  store double 0.000000e+00, ptr %15, align 8, !tbaa !13
  %25 = load ptr, ptr @prm, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.parm, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !27
  %28 = tail call ptr @ivector(i32 noundef -1, i32 noundef %27) #34
  %29 = load ptr, ptr @prm, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.parm, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33

33:                                               ; preds = %13
  %34 = load i32, ptr %0, align 4, !tbaa !6
  br label %393

35:                                               ; preds = %13, %35
  %36 = phi i64 [ %38, %35 ], [ -1, %13 ]
  %37 = getelementptr inbounds i32, ptr %28, i64 %36
  store i32 -1, ptr %37, align 4, !tbaa !6
  %38 = add nsw i64 %36, 1
  %39 = load i32, ptr %30, align 8, !tbaa !27
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %35, label %42, !llvm.loop !136

42:                                               ; preds = %35
  %43 = icmp sgt i32 %39, 1
  %44 = load i32, ptr %0, align 4, !tbaa !6
  br i1 %43, label %45, label %393

45:                                               ; preds = %42
  %46 = add nsw i32 %39, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #21
  store i32 0, ptr %16, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #21
  store i32 %46, ptr %17, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #21
  store i32 1, ptr %18, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #21
  store i32 0, ptr %19, align 4, !tbaa !6
  %47 = load i32, ptr @blocksize, align 4, !tbaa !6
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %44, i32 1073741859, i32 0, i32 %46, i32 1, i32 %47)
  %48 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %44, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %390, label %50

50:                                               ; preds = %45
  %51 = getelementptr i32, ptr %28, i64 -1
  br label %60

52:                                               ; preds = %380, %60
  %53 = phi double [ %61, %60 ], [ %381, %380 ]
  %54 = phi double [ %62, %60 ], [ %382, %380 ]
  %55 = phi double [ %65, %60 ], [ %383, %380 ]
  %56 = phi double [ %64, %60 ], [ %384, %380 ]
  %57 = phi double [ %63, %60 ], [ %385, %380 ]
  %58 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %44, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %390, label %60

60:                                               ; preds = %50, %52
  %61 = phi double [ 0.000000e+00, %50 ], [ %53, %52 ]
  %62 = phi double [ 0.000000e+00, %50 ], [ %54, %52 ]
  %63 = phi double [ undef, %50 ], [ %57, %52 ]
  %64 = phi double [ undef, %50 ], [ %56, %52 ]
  %65 = phi double [ undef, %50 ], [ %55, %52 ]
  %66 = load i32, ptr %16, align 4, !tbaa !6
  %67 = load i32, ptr %17, align 4, !tbaa !6, !llvm.access.group !137
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %52, label %69

69:                                               ; preds = %60
  %70 = sext i32 %66 to i64
  br label %71

71:                                               ; preds = %69, %380
  %72 = phi double [ %61, %69 ], [ %381, %380 ]
  %73 = phi double [ %62, %69 ], [ %382, %380 ]
  %74 = phi i64 [ %70, %69 ], [ %386, %380 ]
  %75 = phi double [ %63, %69 ], [ %385, %380 ]
  %76 = phi double [ %64, %69 ], [ %384, %380 ]
  %77 = phi double [ %65, %69 ], [ %383, %380 ]
  %78 = load ptr, ptr %2, align 8, !tbaa !10, !llvm.access.group !137
  %79 = getelementptr inbounds i32, ptr %78, i64 %74
  %80 = load i32, ptr %79, align 4, !tbaa !6, !llvm.access.group !137
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %380, label %82

82:                                               ; preds = %71
  %83 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !137
  %84 = getelementptr inbounds %struct.parm, ptr %83, i64 0, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !113, !llvm.access.group !137
  %86 = getelementptr inbounds %struct.parm, ptr %83, i64 0, i32 59
  %87 = load ptr, ptr %86, align 8, !tbaa !114, !llvm.access.group !137
  %88 = getelementptr inbounds i32, ptr %87, i64 %74
  %89 = load i32, ptr %88, align 4, !tbaa !6, !llvm.access.group !137
  %90 = add nsw i32 %89, -1
  %91 = mul nsw i32 %90, %85
  %92 = load double, ptr %3, align 8, !tbaa !13, !llvm.access.group !137
  %93 = getelementptr inbounds %struct.parm, ptr %83, i64 0, i32 37
  %94 = load ptr, ptr %93, align 8, !tbaa !57, !llvm.access.group !137
  %95 = getelementptr inbounds double, ptr %94, i64 %74
  %96 = load double, ptr %95, align 8, !tbaa !13, !llvm.access.group !137
  %97 = fmul double %92, %96
  %98 = load i1, ptr @dim, align 4
  %99 = select i1 %98, i32 4, i32 3
  %100 = trunc i64 %74 to i32
  %101 = mul nsw i32 %99, %100
  %102 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !137
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds double, ptr %102, i64 %103
  %105 = load <2 x double>, ptr %104, align 8, !tbaa !13
  %106 = add nsw i32 %101, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, ptr %102, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !13, !llvm.access.group !137
  br i1 %98, label %110, label %113

110:                                              ; preds = %82
  %111 = getelementptr double, ptr %104, i64 3
  %112 = load double, ptr %111, align 8, !tbaa !13, !llvm.access.group !137
  br label %113

113:                                              ; preds = %110, %82
  %114 = phi double [ 0.000000e+00, %110 ], [ %77, %82 ]
  %115 = phi double [ %112, %110 ], [ %75, %82 ]
  %116 = getelementptr inbounds %struct.parm, ptr %83, i64 0, i32 60
  %117 = load ptr, ptr %116, align 8, !tbaa !41, !llvm.access.group !137
  %118 = getelementptr inbounds i32, ptr %117, i64 %74
  %119 = load i32, ptr %118, align 4, !tbaa !6, !llvm.access.group !137
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %113
  %122 = load ptr, ptr @IexclAt, align 8, !tbaa !10, !llvm.access.group !137
  %123 = getelementptr inbounds ptr, ptr %122, i64 %74
  %124 = load ptr, ptr %123, align 8, !tbaa !10, !llvm.access.group !137
  br label %125

125:                                              ; preds = %121, %125
  %126 = phi i64 [ 0, %121 ], [ %131, %125 ]
  %127 = getelementptr inbounds i32, ptr %124, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !6, !llvm.access.group !137
  %129 = sext i32 %128 to i64
  %130 = getelementptr i32, ptr %51, i64 %129
  store i32 %100, ptr %130, align 4, !tbaa !6, !llvm.access.group !137
  %131 = add nuw nsw i64 %126, 1
  %132 = load i32, ptr %118, align 4, !tbaa !6, !llvm.access.group !137
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %125, label %135, !llvm.loop !138

135:                                              ; preds = %125, %113
  %136 = load i32, ptr %5, align 4, !tbaa !6, !llvm.access.group !137
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !137
  %140 = getelementptr inbounds i32, ptr %139, i64 %74
  %141 = load i32, ptr %140, align 4, !tbaa !6, !llvm.access.group !137
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i32 [ %141, %138 ], [ 0, %135 ]
  %144 = sext i32 %143 to i64
  %145 = call i32 @llvm.smax.i32(i32 %80, i32 1)
  %146 = zext nneg i32 %145 to i64
  br label %147

147:                                              ; preds = %142, %356
  %148 = phi i1 [ %98, %142 ], [ %357, %356 ]
  %149 = phi double [ %72, %142 ], [ %358, %356 ]
  %150 = phi double [ %73, %142 ], [ %359, %356 ]
  %151 = phi i32 [ %136, %142 ], [ %360, %356 ]
  %152 = phi i1 [ %98, %142 ], [ %361, %356 ]
  %153 = phi i64 [ 0, %142 ], [ %366, %356 ]
  %154 = phi double [ %76, %142 ], [ %364, %356 ]
  %155 = phi double [ 0.000000e+00, %142 ], [ %363, %356 ]
  %156 = phi double [ %114, %142 ], [ %362, %356 ]
  %157 = phi <2 x double> [ zeroinitializer, %142 ], [ %365, %356 ]
  %158 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !137
  %159 = getelementptr inbounds ptr, ptr %158, i64 %74
  %160 = load ptr, ptr %159, align 8, !tbaa !10, !llvm.access.group !137
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %172

162:                                              ; preds = %147
  %163 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !137
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.88, i32 noundef 0) #31, !llvm.access.group !137
  %165 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !137
  %166 = call i32 @fflush(ptr noundef %165) #31, !llvm.access.group !137
  %167 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !137
  %168 = getelementptr inbounds ptr, ptr %167, i64 %74
  %169 = load ptr, ptr %168, align 8, !tbaa !10, !llvm.access.group !137
  %170 = load i1, ptr @dim, align 4
  %171 = load i32, ptr %5, align 4, !tbaa !6, !llvm.access.group !137
  br label %172

172:                                              ; preds = %162, %147
  %173 = phi i1 [ %170, %162 ], [ %148, %147 ]
  %174 = phi i32 [ %171, %162 ], [ %151, %147 ]
  %175 = phi i1 [ %170, %162 ], [ %152, %147 ]
  %176 = phi ptr [ %169, %162 ], [ %160, %147 ]
  %177 = add nsw i64 %153, %144
  %178 = getelementptr inbounds i32, ptr %176, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !6, !llvm.access.group !137
  %180 = select i1 %175, i32 4, i32 3
  %181 = mul nsw i32 %180, %179
  %182 = icmp eq i32 %174, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %172
  %184 = sext i32 %179 to i64
  %185 = getelementptr inbounds i32, ptr %28, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !6, !llvm.access.group !137
  %187 = icmp eq i32 %186, %100
  br i1 %187, label %356, label %188

188:                                              ; preds = %183, %172
  %189 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !137
  %190 = sext i32 %181 to i64
  %191 = getelementptr inbounds double, ptr %189, i64 %190
  %192 = load double, ptr %191, align 8, !tbaa !13, !llvm.access.group !137
  %193 = add nsw i32 %181, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, ptr %189, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !13, !llvm.access.group !137
  %197 = insertelement <2 x double> poison, double %192, i64 0
  %198 = insertelement <2 x double> %197, double %196, i64 1
  %199 = fsub <2 x double> %105, %198
  %200 = add nsw i32 %181, 2
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, ptr %189, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !13, !llvm.access.group !137
  %204 = fsub double %109, %203
  %205 = fmul <2 x double> %199, %199
  %206 = extractelement <2 x double> %205, i64 1
  %207 = extractelement <2 x double> %199, i64 0
  %208 = call double @llvm.fmuladd.f64(double %207, double %207, double %206)
  %209 = call double @llvm.fmuladd.f64(double %204, double %204, double %208)
  br i1 %175, label %210, label %215

210:                                              ; preds = %188
  %211 = getelementptr double, ptr %191, i64 3
  %212 = load double, ptr %211, align 8, !tbaa !13, !llvm.access.group !137
  %213 = fsub double %115, %212
  %214 = call double @llvm.fmuladd.f64(double %213, double %213, double %209)
  br label %215

215:                                              ; preds = %210, %188
  %216 = phi double [ %214, %210 ], [ %209, %188 ]
  %217 = phi double [ %213, %210 ], [ %154, %188 ]
  %218 = fdiv double 1.000000e+00, %216
  %219 = call double @sqrt(double noundef %216) #34, !llvm.access.group !137
  %220 = fmul double %218, %219
  %221 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !137
  %222 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 37
  %223 = load ptr, ptr %222, align 8, !tbaa !57, !llvm.access.group !137
  %224 = sext i32 %179 to i64
  %225 = getelementptr inbounds double, ptr %223, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !13, !llvm.access.group !137
  %227 = fmul double %97, %226
  %228 = fmul double %220, %227
  %229 = fneg double %228
  %230 = fadd double %150, %228
  store double %230, ptr %15, align 8, !tbaa !13, !llvm.access.group !137
  %231 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 61
  %232 = load ptr, ptr %231, align 8, !tbaa !116, !llvm.access.group !137
  %233 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 59
  %234 = load ptr, ptr %233, align 8, !tbaa !114, !llvm.access.group !137
  %235 = getelementptr inbounds i32, ptr %234, i64 %224
  %236 = load i32, ptr %235, align 4, !tbaa !6, !llvm.access.group !137
  %237 = add nsw i32 %236, %91
  %238 = sext i32 %237 to i64
  %239 = getelementptr i32, ptr %232, i64 %238
  %240 = getelementptr i32, ptr %239, i64 -1
  %241 = load i32, ptr %240, align 4, !tbaa !6, !llvm.access.group !137
  %242 = icmp sgt i32 %241, 0
  %243 = load double, ptr %11, align 8
  %244 = fcmp une double %243, 1.000000e+00
  %245 = select i1 %242, i1 true, i1 %244
  br i1 %245, label %246, label %285

246:                                              ; preds = %215
  br i1 %242, label %256, label %247

247:                                              ; preds = %246
  %248 = getelementptr inbounds i32, ptr %234, i64 %74
  %249 = load i32, ptr %248, align 4, !tbaa !6, !llvm.access.group !137
  %250 = call i32 @llvm.smax.i32(i32 %249, i32 %236)
  %251 = call i32 @llvm.smin.i32(i32 %249, i32 %236)
  %252 = add nsw i32 %250, -1
  %253 = mul nsw i32 %252, %250
  %254 = sdiv i32 %253, 2
  %255 = add nsw i32 %254, %251
  br label %256

256:                                              ; preds = %246, %247
  %257 = phi i32 [ %255, %247 ], [ %241, %246 ]
  %258 = add nsw i32 %257, -1
  %259 = fmul double %218, %218
  %260 = fmul double %218, %259
  %261 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 48
  %262 = load ptr, ptr %261, align 8, !tbaa !117, !llvm.access.group !137
  %263 = sext i32 %258 to i64
  %264 = getelementptr inbounds double, ptr %262, i64 %263
  %265 = load double, ptr %264, align 8, !tbaa !13, !llvm.access.group !137
  %266 = fmul double %260, %265
  %267 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 47
  %268 = load ptr, ptr %267, align 8, !tbaa !118, !llvm.access.group !137
  %269 = getelementptr inbounds double, ptr %268, i64 %263
  %270 = load double, ptr %269, align 8, !tbaa !13, !llvm.access.group !137
  %271 = fmul double %260, %270
  %272 = fmul double %260, %271
  %273 = fsub double %272, %266
  %274 = load double, ptr %10, align 8, !tbaa !13, !llvm.access.group !137
  %275 = fmul double %272, -1.200000e+01
  %276 = call double @llvm.fmuladd.f64(double %266, double 6.000000e+00, double %275)
  %277 = insertelement <2 x double> poison, double %273, i64 0
  %278 = insertelement <2 x double> %277, double %276, i64 1
  %279 = insertelement <2 x double> poison, double %274, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = insertelement <2 x double> poison, double %149, i64 0
  %282 = insertelement <2 x double> %281, double %229, i64 1
  %283 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> %280, <2 x double> %282)
  %284 = extractelement <2 x double> %283, i64 0
  br label %315

285:                                              ; preds = %215
  %286 = xor i32 %241, -1
  %287 = fmul double %218, %218
  %288 = fmul double %218, %287
  %289 = fmul double %218, %288
  %290 = fmul double %218, %289
  %291 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 50
  %292 = load ptr, ptr %291, align 8, !tbaa !139, !llvm.access.group !137
  %293 = sext i32 %286 to i64
  %294 = getelementptr inbounds double, ptr %292, i64 %293
  %295 = load double, ptr %294, align 8, !tbaa !13, !llvm.access.group !137
  %296 = fmul double %290, %295
  %297 = getelementptr inbounds %struct.parm, ptr %221, i64 0, i32 49
  %298 = load ptr, ptr %297, align 8, !tbaa !140, !llvm.access.group !137
  %299 = getelementptr inbounds double, ptr %298, i64 %293
  %300 = load double, ptr %299, align 8, !tbaa !13, !llvm.access.group !137
  %301 = fmul double %290, %300
  %302 = fmul double %218, %301
  %303 = fsub double %302, %296
  %304 = load double, ptr %10, align 8, !tbaa !13, !llvm.access.group !137
  %305 = fmul double %302, -1.200000e+01
  %306 = call double @llvm.fmuladd.f64(double %296, double 1.000000e+01, double %305)
  %307 = insertelement <2 x double> poison, double %303, i64 0
  %308 = insertelement <2 x double> %307, double %306, i64 1
  %309 = insertelement <2 x double> poison, double %304, i64 0
  %310 = shufflevector <2 x double> %309, <2 x double> poison, <2 x i32> zeroinitializer
  %311 = insertelement <2 x double> poison, double %149, i64 0
  %312 = insertelement <2 x double> %311, double %229, i64 1
  %313 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %308, <2 x double> %310, <2 x double> %312)
  %314 = extractelement <2 x double> %313, i64 0
  br label %315

315:                                              ; preds = %256, %285
  %316 = phi double [ %314, %285 ], [ %284, %256 ]
  %317 = phi <2 x double> [ %313, %285 ], [ %283, %256 ]
  store double %316, ptr %14, align 8, !tbaa !13
  %318 = extractelement <2 x double> %317, i64 1
  %319 = fmul double %220, %318
  %320 = fmul double %220, %319
  %321 = insertelement <2 x double> poison, double %320, i64 0
  %322 = shufflevector <2 x double> %321, <2 x double> poison, <2 x i32> zeroinitializer
  %323 = fmul <2 x double> %199, %322
  %324 = fmul double %204, %320
  %325 = fadd <2 x double> %157, %323
  %326 = fadd double %155, %324
  %327 = load i32, ptr %5, align 4, !tbaa !6, !llvm.access.group !137
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %315
  %330 = load i1, ptr @dim, align 4
  %331 = extractelement <2 x double> %317, i64 0
  br i1 %330, label %347, label %356

332:                                              ; preds = %315
  %333 = load ptr, ptr %12, align 8, !tbaa !10, !llvm.access.group !137
  %334 = getelementptr double, ptr %333, i64 %190
  %335 = load double, ptr %334, align 8, !tbaa !13, !llvm.access.group !137
  %336 = extractelement <2 x double> %323, i64 0
  %337 = fsub double %335, %336
  store double %337, ptr %334, align 8, !tbaa !13, !llvm.access.group !137
  %338 = getelementptr inbounds double, ptr %333, i64 %194
  %339 = load double, ptr %338, align 8, !tbaa !13, !llvm.access.group !137
  %340 = extractelement <2 x double> %323, i64 1
  %341 = fsub double %339, %340
  store double %341, ptr %338, align 8, !tbaa !13, !llvm.access.group !137
  %342 = getelementptr inbounds double, ptr %333, i64 %201
  %343 = load double, ptr %342, align 8, !tbaa !13, !llvm.access.group !137
  %344 = fsub double %343, %324
  store double %344, ptr %342, align 8, !tbaa !13, !llvm.access.group !137
  %345 = load i1, ptr @dim, align 4
  %346 = extractelement <2 x double> %317, i64 0
  br i1 %345, label %350, label %356

347:                                              ; preds = %329
  %348 = fmul double %217, %320
  %349 = fadd double %156, %348
  br label %356

350:                                              ; preds = %332
  %351 = fmul double %217, %320
  %352 = fadd double %156, %351
  %353 = getelementptr double, ptr %334, i64 3
  %354 = load double, ptr %353, align 8, !tbaa !13, !llvm.access.group !137
  %355 = fsub double %354, %351
  store double %355, ptr %353, align 8, !tbaa !13, !llvm.access.group !137
  br label %356

356:                                              ; preds = %347, %332, %183, %350, %329
  %357 = phi i1 [ true, %350 ], [ true, %347 ], [ false, %329 ], [ %173, %183 ], [ false, %332 ]
  %358 = phi double [ %346, %350 ], [ %331, %347 ], [ %331, %329 ], [ %149, %183 ], [ %346, %332 ]
  %359 = phi double [ %230, %350 ], [ %230, %347 ], [ %230, %329 ], [ %150, %183 ], [ %230, %332 ]
  %360 = phi i32 [ %327, %350 ], [ 0, %347 ], [ 0, %329 ], [ 0, %183 ], [ %327, %332 ]
  %361 = phi i1 [ true, %350 ], [ true, %347 ], [ false, %329 ], [ %175, %183 ], [ false, %332 ]
  %362 = phi double [ %352, %350 ], [ %349, %347 ], [ %156, %329 ], [ %156, %183 ], [ %156, %332 ]
  %363 = phi double [ %326, %350 ], [ %326, %347 ], [ %326, %329 ], [ %155, %183 ], [ %326, %332 ]
  %364 = phi double [ %217, %350 ], [ %217, %347 ], [ %217, %329 ], [ %154, %183 ], [ %217, %332 ]
  %365 = phi <2 x double> [ %325, %350 ], [ %325, %347 ], [ %325, %329 ], [ %157, %183 ], [ %325, %332 ]
  %366 = add nuw nsw i64 %153, 1
  %367 = icmp eq i64 %366, %146
  br i1 %367, label %368, label %147, !llvm.loop !141

368:                                              ; preds = %356
  %369 = load ptr, ptr %12, align 8, !tbaa !10, !llvm.access.group !137
  %370 = getelementptr inbounds double, ptr %369, i64 %103
  %371 = load <2 x double>, ptr %370, align 8, !tbaa !13
  %372 = fadd <2 x double> %365, %371
  store <2 x double> %372, ptr %370, align 8, !tbaa !13
  %373 = getelementptr inbounds double, ptr %369, i64 %107
  %374 = load double, ptr %373, align 8, !tbaa !13, !llvm.access.group !137
  %375 = fadd double %363, %374
  store double %375, ptr %373, align 8, !tbaa !13, !llvm.access.group !137
  br i1 %357, label %376, label %380

376:                                              ; preds = %368
  %377 = getelementptr double, ptr %370, i64 3
  %378 = load double, ptr %377, align 8, !tbaa !13, !llvm.access.group !137
  %379 = fadd double %362, %378
  store double %379, ptr %377, align 8, !tbaa !13, !llvm.access.group !137
  br label %380

380:                                              ; preds = %71, %376, %368
  %381 = phi double [ %72, %71 ], [ %358, %376 ], [ %358, %368 ]
  %382 = phi double [ %73, %71 ], [ %359, %376 ], [ %359, %368 ]
  %383 = phi double [ %77, %71 ], [ %362, %376 ], [ %362, %368 ]
  %384 = phi double [ %76, %71 ], [ %364, %376 ], [ %364, %368 ]
  %385 = phi double [ %75, %71 ], [ %115, %376 ], [ %115, %368 ]
  %386 = add nsw i64 %74, 1
  %387 = load i32, ptr %17, align 4, !tbaa !6, !llvm.access.group !137
  %388 = sext i32 %387 to i64
  %389 = icmp slt i64 %74, %388
  br i1 %389, label %71, label %52, !llvm.loop !142

390:                                              ; preds = %52, %45
  %391 = phi double [ undef, %45 ], [ %55, %52 ]
  %392 = phi double [ undef, %45 ], [ %56, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #21
  br label %393

393:                                              ; preds = %33, %390, %42
  %394 = phi i32 [ %44, %390 ], [ %44, %42 ], [ %34, %33 ]
  %395 = phi double [ %391, %390 ], [ undef, %42 ], [ undef, %33 ]
  %396 = phi double [ %392, %390 ], [ undef, %42 ], [ undef, %33 ]
  call void @__kmpc_barrier(ptr nonnull @2, i32 %394)
  %397 = load i32, ptr %5, align 4, !tbaa !6
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %671

399:                                              ; preds = %393
  %400 = load ptr, ptr @prm, align 8, !tbaa !10
  %401 = getelementptr inbounds %struct.parm, ptr %400, i64 0, i32 4
  %402 = load i32, ptr %401, align 8, !tbaa !27
  %403 = icmp sgt i32 %402, -1
  br i1 %403, label %404, label %670

404:                                              ; preds = %399, %404
  %405 = phi i64 [ %407, %404 ], [ -1, %399 ]
  %406 = getelementptr inbounds i32, ptr %28, i64 %405
  store i32 -1, ptr %406, align 4, !tbaa !6
  %407 = add nsw i64 %405, 1
  %408 = load i32, ptr %401, align 8, !tbaa !27
  %409 = sext i32 %408 to i64
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %404, label %411, !llvm.loop !144

411:                                              ; preds = %404
  %412 = icmp sgt i32 %408, 1
  br i1 %412, label %413, label %670

413:                                              ; preds = %411
  %414 = add nsw i32 %408, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #21
  store i32 0, ptr %20, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #21
  store i32 %414, ptr %21, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #21
  store i32 1, ptr %22, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #21
  store i32 0, ptr %23, align 4, !tbaa !6
  %415 = load i32, ptr @blocksize, align 4, !tbaa !6
  call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %394, i32 1073741859, i32 0, i32 %414, i32 1, i32 %415)
  %416 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %394, ptr nonnull %23, ptr nonnull %20, ptr nonnull %21, ptr nonnull %22)
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %669, label %418

418:                                              ; preds = %413
  %419 = getelementptr i32, ptr %28, i64 -1
  br label %426

420:                                              ; preds = %662, %426
  %421 = phi double [ %429, %426 ], [ %663, %662 ]
  %422 = phi double [ %428, %426 ], [ %664, %662 ]
  %423 = phi double [ %427, %426 ], [ %665, %662 ]
  %424 = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %394, ptr nonnull %23, ptr nonnull %20, ptr nonnull %21, ptr nonnull %22)
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %669, label %426

426:                                              ; preds = %418, %420
  %427 = phi double [ undef, %418 ], [ %423, %420 ]
  %428 = phi double [ %396, %418 ], [ %422, %420 ]
  %429 = phi double [ %395, %418 ], [ %421, %420 ]
  %430 = load i32, ptr %20, align 4, !tbaa !6
  %431 = load i32, ptr %21, align 4, !tbaa !6, !llvm.access.group !145
  %432 = icmp sgt i32 %430, %431
  br i1 %432, label %420, label %433

433:                                              ; preds = %426
  %434 = sext i32 %430 to i64
  br label %435

435:                                              ; preds = %433, %662
  %436 = phi i64 [ %434, %433 ], [ %440, %662 ]
  %437 = phi double [ %427, %433 ], [ %665, %662 ]
  %438 = phi double [ %428, %433 ], [ %664, %662 ]
  %439 = phi double [ %429, %433 ], [ %663, %662 ]
  %440 = add nsw i64 %436, 1
  %441 = load ptr, ptr %6, align 8, !tbaa !10, !llvm.access.group !145
  %442 = getelementptr inbounds i32, ptr %441, i64 %440
  %443 = load i32, ptr %442, align 4, !tbaa !6, !llvm.access.group !145
  %444 = icmp slt i32 %443, 1
  br i1 %444, label %662, label %445

445:                                              ; preds = %435
  %446 = load i1, ptr @dim, align 4
  %447 = select i1 %446, i32 4, i32 3
  %448 = trunc i64 %440 to i32
  %449 = mul nsw i32 %447, %448
  %450 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !145
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds double, ptr %450, i64 %451
  %453 = load <2 x double>, ptr %452, align 8, !tbaa !13
  %454 = add nsw i32 %449, 2
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds double, ptr %450, i64 %455
  %457 = load double, ptr %456, align 8, !tbaa !13, !llvm.access.group !145
  br i1 %446, label %458, label %461

458:                                              ; preds = %445
  %459 = getelementptr double, ptr %452, i64 3
  %460 = load double, ptr %459, align 8, !tbaa !13, !llvm.access.group !145
  br label %461

461:                                              ; preds = %458, %445
  %462 = phi double [ 0.000000e+00, %458 ], [ %439, %445 ]
  %463 = phi double [ %460, %458 ], [ %437, %445 ]
  %464 = load ptr, ptr @Jblo, align 8, !tbaa !10, !llvm.access.group !145
  %465 = getelementptr inbounds i32, ptr %464, i64 %440
  %466 = load i32, ptr %465, align 4, !tbaa !6, !llvm.access.group !145
  %467 = icmp sgt i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %461
  %469 = load ptr, ptr @JexclAt, align 8, !tbaa !10, !llvm.access.group !145
  %470 = getelementptr inbounds ptr, ptr %469, i64 %440
  %471 = load ptr, ptr %470, align 8, !tbaa !10, !llvm.access.group !145
  br label %475

472:                                              ; preds = %475, %461
  %473 = call i32 @llvm.smax.i32(i32 %443, i32 1)
  %474 = zext nneg i32 %473 to i64
  br label %485

475:                                              ; preds = %468, %475
  %476 = phi i64 [ 0, %468 ], [ %481, %475 ]
  %477 = getelementptr inbounds i32, ptr %471, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !6, !llvm.access.group !145
  %479 = sext i32 %478 to i64
  %480 = getelementptr i32, ptr %419, i64 %479
  store i32 %448, ptr %480, align 4, !tbaa !6, !llvm.access.group !145
  %481 = add nuw nsw i64 %476, 1
  %482 = load i32, ptr %465, align 4, !tbaa !6, !llvm.access.group !145
  %483 = sext i32 %482 to i64
  %484 = icmp slt i64 %481, %483
  br i1 %484, label %475, label %472, !llvm.loop !146

485:                                              ; preds = %472, %642
  %486 = phi i64 [ 0, %472 ], [ %647, %642 ]
  %487 = phi double [ %438, %472 ], [ %645, %642 ]
  %488 = phi double [ 0.000000e+00, %472 ], [ %644, %642 ]
  %489 = phi double [ %462, %472 ], [ %643, %642 ]
  %490 = phi <2 x double> [ zeroinitializer, %472 ], [ %646, %642 ]
  %491 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !145
  %492 = getelementptr inbounds ptr, ptr %491, i64 %440
  %493 = load ptr, ptr %492, align 8, !tbaa !10, !llvm.access.group !145
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %503

495:                                              ; preds = %485
  %496 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !145
  %497 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %496, ptr noundef nonnull @.str.89, i32 noundef 0) #31, !llvm.access.group !145
  %498 = load ptr, ptr @nabout, align 8, !tbaa !10, !llvm.access.group !145
  %499 = call i32 @fflush(ptr noundef %498) #31, !llvm.access.group !145
  %500 = load ptr, ptr %7, align 8, !tbaa !10, !llvm.access.group !145
  %501 = getelementptr inbounds ptr, ptr %500, i64 %440
  %502 = load ptr, ptr %501, align 8, !tbaa !10, !llvm.access.group !145
  br label %503

503:                                              ; preds = %495, %485
  %504 = phi ptr [ %502, %495 ], [ %493, %485 ]
  %505 = getelementptr inbounds i32, ptr %504, i64 %486
  %506 = load i32, ptr %505, align 4, !tbaa !6, !llvm.access.group !145
  %507 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !145
  %508 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 5
  %509 = load i32, ptr %508, align 4, !tbaa !113, !llvm.access.group !145
  %510 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 59
  %511 = load ptr, ptr %510, align 8, !tbaa !114, !llvm.access.group !145
  %512 = sext i32 %506 to i64
  %513 = getelementptr inbounds i32, ptr %511, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !6, !llvm.access.group !145
  %515 = add nsw i32 %514, -1
  %516 = mul nsw i32 %515, %509
  %517 = load double, ptr %3, align 8, !tbaa !13, !llvm.access.group !145
  %518 = getelementptr inbounds %struct.parm, ptr %507, i64 0, i32 37
  %519 = load ptr, ptr %518, align 8, !tbaa !57, !llvm.access.group !145
  %520 = getelementptr inbounds double, ptr %519, i64 %512
  %521 = load double, ptr %520, align 8, !tbaa !13, !llvm.access.group !145
  %522 = getelementptr inbounds i32, ptr %28, i64 %512
  %523 = load i32, ptr %522, align 4, !tbaa !6, !llvm.access.group !145
  %524 = icmp eq i32 %523, %448
  br i1 %524, label %642, label %525

525:                                              ; preds = %503
  %526 = load i1, ptr @dim, align 4
  %527 = select i1 %526, i32 4, i32 3
  %528 = mul nsw i32 %527, %506
  %529 = load ptr, ptr %4, align 8, !tbaa !10, !llvm.access.group !145
  %530 = sext i32 %528 to i64
  %531 = getelementptr inbounds double, ptr %529, i64 %530
  %532 = load <2 x double>, ptr %531, align 8, !tbaa !13
  %533 = fsub <2 x double> %532, %453
  %534 = getelementptr double, ptr %531, i64 2
  %535 = load double, ptr %534, align 8, !tbaa !13, !llvm.access.group !145
  %536 = fsub double %535, %457
  %537 = fmul <2 x double> %533, %533
  %538 = extractelement <2 x double> %537, i64 1
  %539 = extractelement <2 x double> %533, i64 0
  %540 = call double @llvm.fmuladd.f64(double %539, double %539, double %538)
  %541 = call double @llvm.fmuladd.f64(double %536, double %536, double %540)
  br i1 %526, label %542, label %547

542:                                              ; preds = %525
  %543 = getelementptr double, ptr %531, i64 3
  %544 = load double, ptr %543, align 8, !tbaa !13, !llvm.access.group !145
  %545 = fsub double %544, %463
  %546 = call double @llvm.fmuladd.f64(double %545, double %545, double %541)
  br label %547

547:                                              ; preds = %542, %525
  %548 = phi double [ %546, %542 ], [ %541, %525 ]
  %549 = phi double [ %545, %542 ], [ %487, %525 ]
  %550 = fdiv double 1.000000e+00, %548
  %551 = call double @sqrt(double noundef %548) #34, !llvm.access.group !145
  %552 = fmul double %550, %551
  %553 = load ptr, ptr @prm, align 8, !tbaa !10, !llvm.access.group !145
  %554 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 37
  %555 = load ptr, ptr %554, align 8, !tbaa !57, !llvm.access.group !145
  %556 = getelementptr inbounds double, ptr %555, i64 %440
  %557 = load double, ptr %556, align 8, !tbaa !13, !llvm.access.group !145
  %558 = fneg double %517
  %559 = fmul double %521, %558
  %560 = fmul double %559, %557
  %561 = fmul double %552, %560
  %562 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 61
  %563 = load ptr, ptr %562, align 8, !tbaa !116, !llvm.access.group !145
  %564 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 59
  %565 = load ptr, ptr %564, align 8, !tbaa !114, !llvm.access.group !145
  %566 = getelementptr inbounds i32, ptr %565, i64 %440
  %567 = load i32, ptr %566, align 4, !tbaa !6, !llvm.access.group !145
  %568 = add nsw i32 %567, %516
  %569 = sext i32 %568 to i64
  %570 = getelementptr i32, ptr %563, i64 %569
  %571 = getelementptr i32, ptr %570, i64 -1
  %572 = load i32, ptr %571, align 4, !tbaa !6, !llvm.access.group !145
  %573 = icmp sgt i32 %572, 0
  %574 = load double, ptr %11, align 8
  %575 = fcmp une double %574, 1.000000e+00
  %576 = select i1 %573, i1 true, i1 %575
  br i1 %576, label %577, label %606

577:                                              ; preds = %547
  br i1 %573, label %587, label %578

578:                                              ; preds = %577
  %579 = getelementptr inbounds i32, ptr %565, i64 %512
  %580 = load i32, ptr %579, align 4, !tbaa !6, !llvm.access.group !145
  %581 = call i32 @llvm.smax.i32(i32 %580, i32 %567)
  %582 = call i32 @llvm.smin.i32(i32 %580, i32 %567)
  %583 = add nsw i32 %581, -1
  %584 = mul nsw i32 %583, %581
  %585 = sdiv i32 %584, 2
  %586 = add nsw i32 %585, %582
  br label %587

587:                                              ; preds = %577, %578
  %588 = phi i32 [ %586, %578 ], [ %572, %577 ]
  %589 = add nsw i32 %588, -1
  %590 = fmul double %550, %550
  %591 = fmul double %550, %590
  %592 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 48
  %593 = load ptr, ptr %592, align 8, !tbaa !117, !llvm.access.group !145
  %594 = sext i32 %589 to i64
  %595 = getelementptr inbounds double, ptr %593, i64 %594
  %596 = load double, ptr %595, align 8, !tbaa !13, !llvm.access.group !145
  %597 = fmul double %591, %596
  %598 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 47
  %599 = load ptr, ptr %598, align 8, !tbaa !118, !llvm.access.group !145
  %600 = getelementptr inbounds double, ptr %599, i64 %594
  %601 = load double, ptr %600, align 8, !tbaa !13, !llvm.access.group !145
  %602 = fmul double %591, %601
  %603 = fmul double %591, %602
  %604 = fmul double %603, -1.200000e+01
  %605 = call double @llvm.fmuladd.f64(double %597, double 6.000000e+00, double %604)
  br label %626

606:                                              ; preds = %547
  %607 = xor i32 %572, -1
  %608 = fmul double %550, %550
  %609 = fmul double %550, %608
  %610 = fmul double %550, %609
  %611 = fmul double %550, %610
  %612 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 50
  %613 = load ptr, ptr %612, align 8, !tbaa !139, !llvm.access.group !145
  %614 = sext i32 %607 to i64
  %615 = getelementptr inbounds double, ptr %613, i64 %614
  %616 = load double, ptr %615, align 8, !tbaa !13, !llvm.access.group !145
  %617 = fmul double %611, %616
  %618 = getelementptr inbounds %struct.parm, ptr %553, i64 0, i32 49
  %619 = load ptr, ptr %618, align 8, !tbaa !140, !llvm.access.group !145
  %620 = getelementptr inbounds double, ptr %619, i64 %614
  %621 = load double, ptr %620, align 8, !tbaa !13, !llvm.access.group !145
  %622 = fmul double %611, %621
  %623 = fmul double %550, %622
  %624 = fmul double %623, -1.200000e+01
  %625 = call double @llvm.fmuladd.f64(double %617, double 1.000000e+01, double %624)
  br label %626

626:                                              ; preds = %587, %606
  %627 = phi double [ %605, %587 ], [ %625, %606 ]
  %628 = load double, ptr %10, align 8, !tbaa !13, !llvm.access.group !145
  %629 = call double @llvm.fmuladd.f64(double %627, double %628, double %561)
  %630 = fmul double %552, %629
  %631 = fmul double %552, %630
  %632 = insertelement <2 x double> poison, double %631, i64 0
  %633 = shufflevector <2 x double> %632, <2 x double> poison, <2 x i32> zeroinitializer
  %634 = fmul <2 x double> %533, %633
  %635 = fmul double %536, %631
  %636 = fadd <2 x double> %490, %634
  %637 = fadd double %488, %635
  %638 = load i1, ptr @dim, align 4
  br i1 %638, label %639, label %642

639:                                              ; preds = %626
  %640 = fmul double %549, %631
  %641 = fadd double %489, %640
  br label %642

642:                                              ; preds = %503, %639, %626
  %643 = phi double [ %641, %639 ], [ %489, %626 ], [ %489, %503 ]
  %644 = phi double [ %637, %639 ], [ %637, %626 ], [ %488, %503 ]
  %645 = phi double [ %549, %639 ], [ %549, %626 ], [ %487, %503 ]
  %646 = phi <2 x double> [ %636, %639 ], [ %636, %626 ], [ %490, %503 ]
  %647 = add nuw nsw i64 %486, 1
  %648 = icmp eq i64 %647, %474
  br i1 %648, label %649, label %485, !llvm.loop !147

649:                                              ; preds = %642
  %650 = load i1, ptr @dim, align 4
  %651 = load ptr, ptr %12, align 8, !tbaa !10, !llvm.access.group !145
  %652 = getelementptr inbounds double, ptr %651, i64 %451
  %653 = load <2 x double>, ptr %652, align 8, !tbaa !13
  %654 = fsub <2 x double> %653, %646
  store <2 x double> %654, ptr %652, align 8, !tbaa !13
  %655 = getelementptr inbounds double, ptr %651, i64 %455
  %656 = load double, ptr %655, align 8, !tbaa !13, !llvm.access.group !145
  %657 = fsub double %656, %644
  store double %657, ptr %655, align 8, !tbaa !13, !llvm.access.group !145
  br i1 %650, label %658, label %662

658:                                              ; preds = %649
  %659 = getelementptr double, ptr %652, i64 3
  %660 = load double, ptr %659, align 8, !tbaa !13, !llvm.access.group !145
  %661 = fsub double %660, %643
  store double %661, ptr %659, align 8, !tbaa !13, !llvm.access.group !145
  br label %662

662:                                              ; preds = %435, %658, %649
  %663 = phi double [ %439, %435 ], [ %643, %658 ], [ %643, %649 ]
  %664 = phi double [ %438, %435 ], [ %645, %658 ], [ %645, %649 ]
  %665 = phi double [ %437, %435 ], [ %463, %658 ], [ %463, %649 ]
  %666 = load i32, ptr %21, align 4, !tbaa !6, !llvm.access.group !145
  %667 = sext i32 %666 to i64
  %668 = icmp slt i64 %436, %667
  br i1 %668, label %435, label %420, !llvm.loop !148

669:                                              ; preds = %420, %413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #21
  br label %670

670:                                              ; preds = %399, %669, %411
  call void @__kmpc_barrier(ptr nonnull @2, i32 %394)
  br label %671

671:                                              ; preds = %670, %393
  %672 = load ptr, ptr @prm, align 8, !tbaa !10
  %673 = getelementptr inbounds %struct.parm, ptr %672, i64 0, i32 4
  %674 = load i32, ptr %673, align 8, !tbaa !27
  call void @free_ivector(ptr noundef %28, i32 noundef -1, i32 noundef %674) #34
  store ptr %14, ptr %24, align 8
  %675 = getelementptr inbounds [2 x ptr], ptr %24, i64 0, i64 1
  store ptr %15, ptr %675, align 8
  %676 = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %394, i32 2, i64 16, ptr nonnull %24, ptr nonnull @nbond.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %676, label %689 [
    i32 1, label %677
    i32 2, label %684
  ]

677:                                              ; preds = %671
  %678 = load double, ptr %9, align 8, !tbaa !13
  %679 = load double, ptr %14, align 8, !tbaa !13
  %680 = fadd double %678, %679
  store double %680, ptr %9, align 8, !tbaa !13
  %681 = load double, ptr %8, align 8, !tbaa !13
  %682 = load double, ptr %15, align 8, !tbaa !13
  %683 = fadd double %681, %682
  store double %683, ptr %8, align 8, !tbaa !13
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %394, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %689

684:                                              ; preds = %671
  %685 = load double, ptr %14, align 8, !tbaa !13
  %686 = atomicrmw fadd ptr %9, double %685 monotonic, align 8
  %687 = load double, ptr %15, align 8, !tbaa !13
  %688 = atomicrmw fadd ptr %8, double %687 monotonic, align 8
  br label %689

689:                                              ; preds = %684, %677, %671
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @nbond.omp_outlined.omp.reduction.reduction_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #23 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds [2 x ptr], ptr %1, i64 0, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds [2 x ptr], ptr %0, i64 0, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = load double, ptr %4, align 8, !tbaa !13
  %10 = load double, ptr %3, align 8, !tbaa !13
  %11 = fadd double %9, %10
  store double %11, ptr %4, align 8, !tbaa !13
  %12 = load double, ptr %8, align 8, !tbaa !13
  %13 = load double, ptr %6, align 8, !tbaa !13
  %14 = fadd double %12, %13
  store double %14, ptr %8, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #21

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @mme(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  store i1 false, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2) #31
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @mme4(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  store i1 true, ptr @dim, align 4
  %4 = tail call fastcc double @mme34(ptr noundef %0, ptr noundef %1, ptr noundef %2) #31
  ret double %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @mm_set_checkpoint(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc ptr @spec_strdup(ptr noundef %2) #31
  store ptr %3, ptr @chknm, align 8, !tbaa !10
  %4 = load ptr, ptr @nabout, align 8, !tbaa !10
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.90, ptr noundef %5) #31
  %7 = load ptr, ptr @nabout, align 8, !tbaa !10
  %8 = tail call i32 @fflush(ptr noundef %7) #31
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc noundef ptr @spec_strdup(ptr nocapture noundef readonly %0) unnamed_addr #25 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #34
  br label %8

8:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @md(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #2 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  %10 = load ptr, ptr @md.minv, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr @md.nold, align 4
  %13 = icmp slt i32 %12, %0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  tail call void @free(ptr noundef %10) #34
  %16 = sext i32 %0 to i64
  %17 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 8) #36
  store ptr %17, ptr @md.minv, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr @stderr, align 8, !tbaa !10
  %21 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 34, i64 1, ptr %20) #37
  %22 = load ptr, ptr @stderr, align 8, !tbaa !10
  %23 = tail call i32 @fflush(ptr noundef %22) #31
  %24 = tail call i32 @mpierror(i32 noundef -1) #31
  %25 = load i32, ptr @md.nold, align 4
  br label %26

26:                                               ; preds = %6, %15, %19
  %27 = phi i32 [ %12, %6 ], [ %12, %15 ], [ %25, %19 ]
  %28 = load ptr, ptr @md.xold, align 8, !tbaa !10
  %29 = icmp eq ptr %28, null
  %30 = icmp slt i32 %27, %0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  tail call void @free(ptr noundef %28) #34
  %33 = sext i32 %0 to i64
  %34 = tail call noalias ptr @calloc(i64 noundef %33, i64 noundef 8) #36
  store ptr %34, ptr @md.xold, align 8, !tbaa !10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !10
  %38 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 34, i64 1, ptr %37) #37
  %39 = load ptr, ptr @stderr, align 8, !tbaa !10
  %40 = tail call i32 @fflush(ptr noundef %39) #31
  %41 = tail call i32 @mpierror(i32 noundef -1) #31
  %42 = load i32, ptr @md.nold, align 4
  br label %43

43:                                               ; preds = %36, %32, %26
  %44 = phi i32 [ %42, %36 ], [ %27, %32 ], [ %27, %26 ]
  %45 = load ptr, ptr @md.accel, align 8, !tbaa !10
  %46 = icmp eq ptr %45, null
  %47 = icmp slt i32 %44, %0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  tail call void @free(ptr noundef %45) #34
  %50 = sext i32 %0 to i64
  %51 = tail call noalias ptr @calloc(i64 noundef %50, i64 noundef 8) #36
  store ptr %51, ptr @md.accel, align 8, !tbaa !10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load ptr, ptr @stderr, align 8, !tbaa !10
  %55 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 35, i64 1, ptr %54) #37
  %56 = load ptr, ptr @stderr, align 8, !tbaa !10
  %57 = tail call i32 @fflush(ptr noundef %56) #31
  %58 = tail call i32 @mpierror(i32 noundef -1) #31
  br label %59

59:                                               ; preds = %43, %49, %53
  store i32 %0, ptr @md.nold, align 4, !tbaa !6
  %60 = load i32, ptr @nfrozen, align 4, !tbaa !6
  %61 = mul i32 %60, -3
  %62 = add i32 %61, %0
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 0x3F50477081F334C0
  %65 = fmul double %64, 1.000000e+02
  store double 0.000000e+00, ptr %8, align 8, !tbaa !13
  %66 = load ptr, ptr @prm, align 8, !tbaa !10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %59
  %69 = icmp sgt i32 %0, 0
  br i1 %69, label %70, label %138

70:                                               ; preds = %68
  %71 = load ptr, ptr @md.minv, align 8, !tbaa !10
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
  store double 1.000000e-01, ptr %84, align 8, !tbaa !13
  br label %85

85:                                               ; preds = %83, %78
  %86 = extractelement <2 x i1> %81, i64 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or disjoint i64 %79, 1
  %89 = getelementptr inbounds double, ptr %71, i64 %88
  store double 1.000000e-01, ptr %89, align 8, !tbaa !13
  br label %90

90:                                               ; preds = %87, %85
  %91 = add i64 %79, 2
  %92 = add <2 x i64> %80, <i64 2, i64 2>
  %93 = icmp eq i64 %91, %74
  br i1 %93, label %96, label %78, !llvm.loop !150

94:                                               ; preds = %59
  %95 = load ptr, ptr @md.minv, align 8, !tbaa !10
  tail call fastcc void @get_masses(ptr noundef %95) #31
  br label %96

96:                                               ; preds = %90, %94
  %97 = icmp sgt i32 %0, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %96
  %99 = zext nneg i32 %0 to i64
  %100 = load ptr, ptr @frozen, align 8, !tbaa !10
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
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %102
  %115 = getelementptr inbounds double, ptr %4, i64 %105
  store double 0.000000e+00, ptr %115, align 8, !tbaa !13
  br label %132

116:                                              ; preds = %102
  %117 = load ptr, ptr @md.minv, align 8, !tbaa !10
  %118 = getelementptr inbounds double, ptr %117, i64 %105
  %119 = load double, ptr %118, align 8, !tbaa !13
  %120 = fmul double %119, 0x3FB96F9FCB0C026C
  %121 = call double @sqrt(double noundef %120) #34
  store double %121, ptr %7, align 8, !tbaa !13
  %122 = call double @gauss(ptr noundef nonnull %8, ptr noundef nonnull %7) #34
  %123 = getelementptr inbounds double, ptr %4, i64 %105
  store double %122, ptr %123, align 8, !tbaa !13
  %124 = fmul double %122, %122
  %125 = load ptr, ptr @md.minv, align 8, !tbaa !10
  %126 = getelementptr inbounds double, ptr %125, i64 %105
  %127 = load double, ptr %126, align 8, !tbaa !13
  %128 = fdiv double %124, %127
  %129 = fadd double %106, %128
  %130 = load ptr, ptr @frozen, align 8, !tbaa !10
  %131 = load i1, ptr @dim, align 4
  br label %132

132:                                              ; preds = %114, %116
  %133 = phi i1 [ %103, %114 ], [ %131, %116 ]
  %134 = phi ptr [ %104, %114 ], [ %130, %116 ]
  %135 = phi double [ %106, %114 ], [ %129, %116 ]
  %136 = add nuw nsw i64 %105, 1
  %137 = icmp eq i64 %136, %99
  br i1 %137, label %140, label %102, !llvm.loop !153

138:                                              ; preds = %96, %68
  store i32 0, ptr %9, align 4, !tbaa !6
  %139 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #34
  br label %158

140:                                              ; preds = %132
  store i32 0, ptr %9, align 4, !tbaa !6
  %141 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #34
  br i1 %97, label %142, label %158

142:                                              ; preds = %140
  %143 = load ptr, ptr @md.minv, align 8, !tbaa !10
  %144 = load ptr, ptr @md.accel, align 8, !tbaa !10
  %145 = zext nneg i32 %0 to i64
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %156, %146 ]
  %148 = getelementptr inbounds double, ptr %3, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !13
  %150 = fneg double %149
  %151 = getelementptr inbounds double, ptr %143, i64 %147
  %152 = load double, ptr %151, align 8, !tbaa !13
  %153 = fmul double %152, %150
  %154 = fmul double %153, 0x3F84F227D028A1DF
  %155 = getelementptr inbounds double, ptr %144, i64 %147
  store double %154, ptr %155, align 8, !tbaa !13
  %156 = add nuw nsw i64 %147, 1
  %157 = icmp eq i64 %156, %145
  br i1 %157, label %158, label %146, !llvm.loop !154

158:                                              ; preds = %146, %138, %140
  %159 = phi double [ 0.000000e+00, %138 ], [ %135, %140 ], [ %135, %146 ]
  %160 = phi i1 [ false, %138 ], [ false, %140 ], [ %97, %146 ]
  store i32 %1, ptr @max_step, align 4, !tbaa !6
  store i32 1, ptr %9, align 4, !tbaa !6
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
  %175 = call double @sqrt(double noundef %174) #34
  br label %176

176:                                              ; preds = %167, %171
  %177 = phi double [ %175, %171 ], [ 1.000000e+00, %167 ]
  br i1 %160, label %178, label %207

178:                                              ; preds = %176
  %179 = load ptr, ptr @md.xold, align 8, !tbaa !10
  br label %183

180:                                              ; preds = %183
  br i1 %160, label %181, label %207

181:                                              ; preds = %180
  %182 = load ptr, ptr @md.accel, align 8, !tbaa !10
  br label %190

183:                                              ; preds = %178, %183
  %184 = phi i64 [ 0, %178 ], [ %188, %183 ]
  %185 = getelementptr inbounds double, ptr %2, i64 %184
  %186 = load double, ptr %185, align 8, !tbaa !13
  %187 = getelementptr inbounds double, ptr %179, i64 %184
  store double %186, ptr %187, align 8, !tbaa !13
  %188 = add nuw nsw i64 %184, 1
  %189 = icmp eq i64 %188, %163
  br i1 %189, label %180, label %183, !llvm.loop !155

190:                                              ; preds = %181, %190
  %191 = phi i64 [ 0, %181 ], [ %205, %190 ]
  %192 = getelementptr inbounds double, ptr %4, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !13
  %194 = getelementptr inbounds double, ptr %182, i64 %191
  %195 = load double, ptr %194, align 8, !tbaa !13
  %196 = fadd double %193, %195
  %197 = fmul double %177, %196
  %198 = fcmp ogt double %197, 1.000000e+01
  %199 = select i1 %198, double 1.000000e+01, double %197
  %200 = fcmp olt double %199, -1.000000e+01
  %201 = select i1 %200, double -1.000000e+01, double %199
  store double %201, ptr %192, align 8, !tbaa !13
  %202 = getelementptr inbounds double, ptr %2, i64 %191
  %203 = load double, ptr %202, align 8, !tbaa !13
  %204 = call double @llvm.fmuladd.f64(double %201, double 0x3F94F227D028A1DF, double %203)
  store double %204, ptr %202, align 8, !tbaa !13
  %205 = add nuw nsw i64 %191, 1
  %206 = icmp eq i64 %205, %164
  br i1 %206, label %209, label %190, !llvm.loop !156

207:                                              ; preds = %180, %176
  %208 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #34
  br label %245

209:                                              ; preds = %190
  %210 = call double %5(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %9) #34
  br i1 %160, label %211, label %245

211:                                              ; preds = %209
  %212 = load ptr, ptr @md.minv, align 8, !tbaa !10
  %213 = load ptr, ptr @md.accel, align 8, !tbaa !10
  br label %217

214:                                              ; preds = %217
  br i1 %160, label %215, label %245

215:                                              ; preds = %214
  %216 = load ptr, ptr @md.minv, align 8, !tbaa !10
  br label %233

217:                                              ; preds = %211, %217
  %218 = phi i64 [ 0, %211 ], [ %231, %217 ]
  %219 = getelementptr inbounds double, ptr %3, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !13
  %221 = fneg double %220
  %222 = getelementptr inbounds double, ptr %212, i64 %218
  %223 = load double, ptr %222, align 8, !tbaa !13
  %224 = fmul double %223, %221
  %225 = fmul double %224, 0x3F84F227D028A1DF
  %226 = getelementptr inbounds double, ptr %213, i64 %218
  store double %225, ptr %226, align 8, !tbaa !13
  %227 = getelementptr inbounds double, ptr %4, i64 %218
  %228 = load double, ptr %227, align 8, !tbaa !13
  %229 = fadd double %225, %228
  %230 = fmul double %177, %229
  store double %230, ptr %227, align 8, !tbaa !13
  %231 = add nuw nsw i64 %218, 1
  %232 = icmp eq i64 %231, %165
  br i1 %232, label %214, label %217, !llvm.loop !157

233:                                              ; preds = %215, %233
  %234 = phi i64 [ 0, %215 ], [ %243, %233 ]
  %235 = phi double [ 0.000000e+00, %215 ], [ %242, %233 ]
  %236 = getelementptr inbounds double, ptr %4, i64 %234
  %237 = load double, ptr %236, align 8, !tbaa !13
  %238 = fmul double %237, %237
  %239 = getelementptr inbounds double, ptr %216, i64 %234
  %240 = load double, ptr %239, align 8, !tbaa !13
  %241 = fdiv double %238, %240
  %242 = fadd double %235, %241
  %243 = add nuw nsw i64 %234, 1
  %244 = icmp eq i64 %243, %166
  br i1 %244, label %245, label %233, !llvm.loop !158

245:                                              ; preds = %233, %209, %207, %214
  %246 = phi double [ 0.000000e+00, %214 ], [ 0.000000e+00, %207 ], [ 0.000000e+00, %209 ], [ %242, %233 ]
  %247 = load double, ptr @t, align 8, !tbaa !13
  %248 = fadd double %247, 1.000000e-03
  store double %248, ptr @t, align 8, !tbaa !13
  %249 = load i32, ptr %9, align 4, !tbaa !6
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %9, align 4, !tbaa !6
  %251 = icmp slt i32 %249, %1
  br i1 %251, label %167, label %252, !llvm.loop !159

252:                                              ; preds = %245, %158
  store i32 -3, ptr %9, align 4, !tbaa !6
  %253 = call double %5(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_masses(ptr nocapture noundef writeonly %0) unnamed_addr #18 {
  %2 = load ptr, ptr @prm, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 38
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = load i1, ptr @dim, align 4
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %6, %23
  %12 = phi i64 [ 0, %6 ], [ %26, %23 ]
  %13 = phi i32 [ 0, %6 ], [ %25, %23 ]
  %14 = getelementptr inbounds double, ptr %8, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !13
  %16 = fdiv double 1.000000e+00, %15
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds double, ptr %0, i64 %17
  store double %16, ptr %18, align 8, !tbaa !13
  %19 = getelementptr double, ptr %18, i64 1
  store double %16, ptr %19, align 8, !tbaa !13
  %20 = getelementptr double, ptr %18, i64 2
  store double %16, ptr %20, align 8, !tbaa !13
  br i1 %9, label %21, label %23

21:                                               ; preds = %11
  %22 = getelementptr double, ptr %18, i64 3
  store double %16, ptr %22, align 8, !tbaa !13
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ 4, %21 ], [ 3, %11 ]
  %25 = add nuw nsw i32 %24, %13
  %26 = add nuw nsw i64 %12, 1
  %27 = icmp eq i64 %26, %10
  br i1 %27, label %28, label %11, !llvm.loop !161

28:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare double @gauss(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #28

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
attributes #16 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { convergent nounwind }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { noreturn nounwind optsize }
attributes #31 = { optsize }
attributes #32 = { nounwind optsize willreturn memory(read) }
attributes #33 = { cold optsize }
attributes #34 = { nounwind optsize }
attributes #35 = { nounwind optsize allocsize(0) }
attributes #36 = { nounwind optsize allocsize(0,1) }
attributes #37 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = !{!26, !11, i64 128}
!26 = !{!"molecule_t", !8, i64 0, !7, i64 96, !11, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !11, i64 128}
!27 = !{!28, !7, i64 96}
!28 = !{!"parm", !8, i64 0, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !8, i64 376, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !11, i64 512, !11, i64 520, !11, i64 528, !11, i64 536, !11, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !11, i64 672, !11, i64 680, !11, i64 688, !11, i64 696, !11, i64 704, !11, i64 712}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = !{!28, !11, i64 696}
!37 = !{!28, !11, i64 704}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = !{!28, !11, i64 448}
!42 = !{!28, !11, i64 472}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = !{!49, !7, i64 0}
!49 = !{!"atomstr", !7, i64 0, !11, i64 8}
!50 = !{!49, !11, i64 8}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = !{!28, !11, i64 368}
!56 = !{!28, !11, i64 360}
!57 = !{!28, !11, i64 248}
!58 = !{!28, !7, i64 104}
!59 = !{!28, !11, i64 496}
!60 = !{!28, !11, i64 504}
!61 = !{!28, !11, i64 512}
!62 = !{!28, !11, i64 264}
!63 = !{!28, !11, i64 272}
!64 = !{!28, !7, i64 108}
!65 = !{!28, !11, i64 520}
!66 = !{!28, !11, i64 528}
!67 = !{!28, !11, i64 536}
!68 = !{!28, !7, i64 112}
!69 = !{!28, !11, i64 544}
!70 = !{!28, !11, i64 552}
!71 = !{!28, !11, i64 560}
!72 = !{!28, !11, i64 568}
!73 = !{!28, !11, i64 280}
!74 = !{!28, !11, i64 288}
!75 = !{!28, !7, i64 148}
!76 = !{!28, !11, i64 576}
!77 = !{!28, !11, i64 584}
!78 = !{!28, !11, i64 592}
!79 = !{!28, !11, i64 600}
!80 = !{!28, !7, i64 120}
!81 = !{!28, !11, i64 608}
!82 = !{!28, !11, i64 616}
!83 = !{!28, !11, i64 624}
!84 = !{!28, !11, i64 632}
!85 = !{!28, !11, i64 640}
!86 = !{!28, !11, i64 296}
!87 = !{!28, !11, i64 304}
!88 = !{!28, !11, i64 312}
!89 = !{!28, !7, i64 124}
!90 = !{!28, !11, i64 648}
!91 = !{!28, !11, i64 656}
!92 = !{!28, !11, i64 664}
!93 = !{!28, !11, i64 672}
!94 = !{!28, !11, i64 680}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = !{!28, !14, i64 432}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = !{!28, !7, i64 128}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = distinct !{}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.parallel_accesses", !105}
!109 = !{!110}
!110 = !{i64 2, i64 -1, i64 -1, i1 true}
!111 = distinct !{!111, !16}
!112 = distinct !{}
!113 = !{!28, !7, i64 100}
!114 = !{!28, !11, i64 440}
!115 = distinct !{!115, !16}
!116 = !{!28, !11, i64 456}
!117 = !{!28, !11, i64 336}
!118 = !{!28, !11, i64 328}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.parallel_accesses", !112}
!122 = distinct !{!122, !16}
!123 = distinct !{}
!124 = distinct !{!124, !16}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.parallel_accesses", !123}
!128 = distinct !{}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.parallel_accesses", !128}
!132 = distinct !{}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !135}
!135 = !{!"llvm.loop.parallel_accesses", !132}
!136 = distinct !{!136, !16}
!137 = distinct !{}
!138 = distinct !{!138, !16}
!139 = !{!28, !11, i64 352}
!140 = !{!28, !11, i64 344}
!141 = distinct !{!141, !16}
!142 = distinct !{!142, !143}
!143 = !{!"llvm.loop.parallel_accesses", !137}
!144 = distinct !{!144, !16}
!145 = distinct !{}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !149}
!149 = !{!"llvm.loop.parallel_accesses", !145}
!150 = distinct !{!150, !16, !151, !152}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, !16}
!155 = distinct !{!155, !16}
!156 = distinct !{!156, !16}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, !16}
!159 = distinct !{!159, !16}
!160 = !{!28, !11, i64 256}
!161 = distinct !{!161, !16}
