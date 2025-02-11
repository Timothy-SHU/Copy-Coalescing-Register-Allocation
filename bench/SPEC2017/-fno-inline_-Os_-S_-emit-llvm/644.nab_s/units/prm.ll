; ModuleID = 'prm.c'
source_filename = "prm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x double], double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.molecule_t = type { [4 x [3 x double]], i32, ptr, i32, i32, i32, ptr }
%struct.atom_t = type { ptr, ptr, i32, i32, [8 x i32], ptr, double, double, double, double, ptr, i32, double, double, i32, i32, ptr, [3 x double], double }

@f9118 = dso_local local_unnamed_addr global ptr @.str, align 8
@.str = private unnamed_addr constant [38 x i8] c"%6d%6d%6d%6d%6d%6d%6d%6d%6d%6d%6d%6d\0A\00", align 1
@nabout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Reading .prm file (%s)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot read parm file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"title:\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"POINTERS\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ATOM_NAME\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"CHARGE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" %lf\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"MASS\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %le\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"ATOM_TYPE_INDEX\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"NUMBER_EXCLUDED_ATOMS\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"NONBONDED_PARM_INDEX\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"     Parameter topology includes 10-12 terms:\0A\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"     These are assumed to be zero here (e.g. from TIP3P water)\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"RESIDUE_LABEL\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"RESIDUE_POINTER\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"BOND_FORCE_CONSTANT\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"BOND_EQUIL_VALUE\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"ANGLE_FORCE_CONSTANT\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"ANGLE_EQUIL_VALUE\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"DIHEDRAL_FORCE_CONSTANT\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"DIHEDRAL_PERIODICITY\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"Found an invalid periodicity in the prmtop file: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"DIHEDRAL_PHASE\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"SOLTY\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"LENNARD_JONES_ACOEF\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"LENNARD_JONES_BCOEF\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"BONDS_INC_HYDROGEN\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c" %d %d %d\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"BONDS_WITHOUT_HYDROGEN\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"ANGLES_INC_HYDROGEN\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c" %d %d %d %d\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"ANGLES_WITHOUT_HYDROGEN\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"DIHEDRALS_INC_HYDROGEN\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c" %d %d %d %d %d\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"DIHEDRALS_WITHOUT_HYDROGEN\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"EXCLUDED_ATOMS_LIST\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"HBOND_ACOEF\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"HBOND_BCOEF\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"HBCUT\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"AMBER_ATOM_TYPE\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"TREE_CHAIN_CLASSIFICATION\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"JOIN_ARRAY\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"IROTAT\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"periodic prmtop found, not supported by NAB\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"CAP_INFO\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"CAP_INFO2\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c" %lf %lf %lf %lf\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"RADII\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.58 = private unnamed_addr constant [55 x i8] c"old prmtop format => using old algorithm for GB parms\0A\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"bad atom symbol: %d, %c\0A\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"malloc %lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"malloc err:\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Error: unexpected EOF in %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Error: line too long in %s:\0A%.81s\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"unexpected end in parm file\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1
@SiPerLine = internal unnamed_addr global i32 0, align 4
@SsFormat = internal global [81 x i8] zeroinitializer, align 16
@SiOnLine = internal unnamed_addr global i32 0, align 4
@SbWroteNothing = internal unnamed_addr global i1 false, align 4
@SfFile = internal unnamed_addr global ptr null, align 8
@.str.68 = private unnamed_addr constant [36 x i8] c"writeparm() sees a NULL parmstruct\0A\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"%-80s\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"%FLAG TITLE\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"%FORMAT(20a4)\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"%FLAG POINTERS\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"%FORMAT(10I8)\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"%FLAG ATOM_NAME\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"%-4s\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"%FLAG CHARGE\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"%FORMAT(5E16.8)\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"%16.8lE\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"%FLAG MASS\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"%FLAG ATOM_TYPE_INDEX\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"%FLAG NUMBER_EXCLUDED_ATOMS\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"%FLAG NONBONDED_PARM_INDEX\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"%FLAG RESIDUE_LABEL\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"%FLAG RESIDUE_POINTER\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"%FLAG BOND_FORCE_CONSTANT\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"%FLAG BOND_EQUIL_VALUE\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"%FLAG ANGLE_FORCE_CONSTANT\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"%FLAG ANGLE_EQUIL_VALUE\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"%FLAG DIHEDRAL_FORCE_CONSTANT\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"%FLAG DIHEDRAL_PERIODICITY\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"%FLAG DIHEDRAL_PHASE\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%FLAG SOLTY\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"%FLAG LENNARD_JONES_ACOEF\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"%FLAG LENNARD_JONES_BCOEF\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"%FLAG BONDS_INC_HYDROGEN\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"%FLAG BONDS_WITHOUT_HYDROGEN\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"%FLAG ANGLES_INC_HYDROGEN\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"%FLAG ANGLES_WITHOUT_HYDROGEN\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"%FLAG DIHEDRALS_INC_HYDROGEN\00", align 1
@.str.102 = private unnamed_addr constant [33 x i8] c"%FLAG DIHEDRALS_WITHOUT_HYDROGEN\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"%FLAG EXCLUDED_ATOMS_LIST\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"%FLAG HBOND_ACOEF\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"%FLAG HBOND_BCOEF\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"%FLAG HBCUT\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"%FLAG AMBER_ATOM_TYPE\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"%FLAG TREE_CHAIN_CLASSIFICATION\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"%FLAG JOIN_ARRAY\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"%FLAG IROTAT\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"%FLAG CAP_INFO\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"%FLAG CAP_INFO2\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"%FLAG RADII\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"%FLAG SCREEN\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16
@.str.115 = private unnamed_addr constant [20 x i8] c"new PARMSTRUCT_T %s\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"copyparm AtomNames %s\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"copyparm ResNames %s\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"copyparm AtomSym %s\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"copyparm AtomTree %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ggets(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @get_mytaskid() #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call ptr @fgets(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr null, ptr %0
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %0, %3 ], [ %9, %6 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_mytaskid() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readparm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [81 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %5) #16
  %6 = tail call i32 @get_mytaskid() #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @nabout, align 8, !tbaa !6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef %1) #15
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call fastcc ptr @genopen(ptr noundef %1) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = tail call i32 @get_mytaskid() #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !6
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef %1) #17
  br label %20

20:                                               ; preds = %14, %17, %11
  %21 = phi i32 [ -1, %17 ], [ 0, %14 ], [ 0, %11 ]
  tail call void @reducerror(i32 noundef %21) #14
  %22 = tail call fastcc ptr @get(i64 noundef 720) #15
  call fastcc void @preadln(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %5) #15
  %23 = load i64, ptr %5, align 16
  %24 = icmp eq i64 %23, 5642809480329909797
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call fastcc void @pfind(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.4) #15
  call fastcc void @preadln(ptr noundef %12, ptr noundef %1, ptr noundef %22) #15
  br label %28

26:                                               ; preds = %20
  %27 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %5, i64 noundef 81) #14
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %26 ], [ 1, %25 ]
  %30 = call i32 @get_mytaskid() #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr @nabout, align 8, !tbaa !6
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.5, ptr noundef %22) #15
  br label %35

35:                                               ; preds = %32, %28
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.6) #15
  %36 = call i32 @get_mytaskid() #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 4
  %40 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 5
  %41 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 6
  %42 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 7
  %43 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 8
  %44 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 9
  %45 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 10
  %46 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 11
  %47 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 12
  %48 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 13
  %49 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 14
  %50 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 15
  %51 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 16
  %52 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 17
  %53 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 18
  %54 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 19
  %55 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 20
  %56 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 21
  %57 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 22
  %58 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 23
  %59 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 1
  %60 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 2
  %61 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 3
  %62 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %51, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %58, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %59, ptr noundef nonnull %60, ptr noundef nonnull %61) #14
  br label %63

63:                                               ; preds = %38, %35
  br i1 %24, label %64, label %70

64:                                               ; preds = %63
  %65 = call i32 @get_mytaskid() #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 32
  %69 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull %68) #14
  br label %70

70:                                               ; preds = %64, %67, %63
  call fastcc void @skipeoln(ptr noundef %12) #15
  %71 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !10
  %73 = mul nsw i32 %72, 3
  %74 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 24
  store i32 %73, ptr %74, align 8, !tbaa !14
  %75 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !15
  %77 = mul nsw i32 %76, %76
  %78 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 25
  store i32 %77, ptr %78, align 4, !tbaa !16
  %79 = add nsw i32 %76, 1
  %80 = mul nsw i32 %79, %76
  %81 = sdiv i32 %80, 2
  %82 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 26
  store i32 %81, ptr %82, align 8, !tbaa !17
  %83 = sext i32 %72 to i64
  %84 = shl nsw i64 %83, 2
  %85 = add nsw i64 %84, 81
  %86 = call fastcc ptr @get(i64 noundef %85) #15
  %87 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 33
  store ptr %86, ptr %87, align 8, !tbaa !18
  %88 = load i32, ptr %71, align 8, !tbaa !10
  %89 = sext i32 %88 to i64
  %90 = shl nsw i64 %89, 3
  %91 = call fastcc ptr @get(i64 noundef %90) #15
  %92 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 37
  store ptr %91, ptr %92, align 8, !tbaa !19
  %93 = load i32, ptr %71, align 8, !tbaa !10
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 3
  %96 = call fastcc ptr @get(i64 noundef %95) #15
  %97 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 38
  store ptr %96, ptr %97, align 8, !tbaa !20
  %98 = load i32, ptr %71, align 8, !tbaa !10
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 2
  %101 = call fastcc ptr @get(i64 noundef %100) #15
  %102 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 59
  store ptr %101, ptr %102, align 8, !tbaa !21
  %103 = load i32, ptr %71, align 8, !tbaa !10
  %104 = sext i32 %103 to i64
  %105 = shl nsw i64 %104, 2
  %106 = call fastcc ptr @get(i64 noundef %105) #15
  %107 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 60
  store ptr %106, ptr %107, align 8, !tbaa !22
  %108 = load i32, ptr %78, align 4, !tbaa !16
  %109 = sext i32 %108 to i64
  %110 = shl nsw i64 %109, 2
  %111 = call fastcc ptr @get(i64 noundef %110) #15
  %112 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 61
  store ptr %111, ptr %112, align 8, !tbaa !23
  %113 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 15
  %114 = load i32, ptr %113, align 4, !tbaa !24
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = add nsw i64 %116, 81
  %118 = call fastcc ptr @get(i64 noundef %117) #15
  %119 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 34
  store ptr %118, ptr %119, align 8, !tbaa !25
  %120 = load i32, ptr %113, align 4, !tbaa !24
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = shl nsw i64 %122, 2
  %124 = call fastcc ptr @get(i64 noundef %123) #15
  %125 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 62
  store ptr %124, ptr %125, align 8, !tbaa !26
  %126 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 19
  %127 = load i32, ptr %126, align 4, !tbaa !27
  %128 = sext i32 %127 to i64
  %129 = shl nsw i64 %128, 3
  %130 = call fastcc ptr @get(i64 noundef %129) #15
  %131 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 39
  store ptr %130, ptr %131, align 8, !tbaa !28
  %132 = load i32, ptr %126, align 4, !tbaa !27
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 3
  %135 = call fastcc ptr @get(i64 noundef %134) #15
  %136 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 40
  store ptr %135, ptr %136, align 8, !tbaa !29
  %137 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 20
  %138 = load i32, ptr %137, align 8, !tbaa !30
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 3
  %141 = call fastcc ptr @get(i64 noundef %140) #15
  %142 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 41
  store ptr %141, ptr %142, align 8, !tbaa !31
  %143 = load i32, ptr %137, align 8, !tbaa !30
  %144 = sext i32 %143 to i64
  %145 = shl nsw i64 %144, 3
  %146 = call fastcc ptr @get(i64 noundef %145) #15
  %147 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 42
  store ptr %146, ptr %147, align 8, !tbaa !32
  %148 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 21
  %149 = load i32, ptr %148, align 4, !tbaa !33
  %150 = sext i32 %149 to i64
  %151 = shl nsw i64 %150, 3
  %152 = call fastcc ptr @get(i64 noundef %151) #15
  %153 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 43
  store ptr %152, ptr %153, align 8, !tbaa !34
  %154 = load i32, ptr %148, align 4, !tbaa !33
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 3
  %157 = call fastcc ptr @get(i64 noundef %156) #15
  %158 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 44
  store ptr %157, ptr %158, align 8, !tbaa !35
  %159 = load i32, ptr %148, align 4, !tbaa !33
  %160 = sext i32 %159 to i64
  %161 = shl nsw i64 %160, 3
  %162 = call fastcc ptr @get(i64 noundef %161) #15
  %163 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 45
  store ptr %162, ptr %163, align 8, !tbaa !36
  %164 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 22
  %165 = load i32, ptr %164, align 8, !tbaa !37
  %166 = sext i32 %165 to i64
  %167 = shl nsw i64 %166, 3
  %168 = call fastcc ptr @get(i64 noundef %167) #15
  %169 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 46
  store ptr %168, ptr %169, align 8, !tbaa !38
  %170 = load i32, ptr %82, align 8, !tbaa !17
  %171 = sext i32 %170 to i64
  %172 = shl nsw i64 %171, 3
  %173 = call fastcc ptr @get(i64 noundef %172) #15
  %174 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 47
  store ptr %173, ptr %174, align 8, !tbaa !39
  %175 = load i32, ptr %82, align 8, !tbaa !17
  %176 = sext i32 %175 to i64
  %177 = shl nsw i64 %176, 3
  %178 = call fastcc ptr @get(i64 noundef %177) #15
  %179 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 48
  store ptr %178, ptr %179, align 8, !tbaa !40
  %180 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 6
  %181 = load i32, ptr %180, align 8, !tbaa !41
  %182 = sext i32 %181 to i64
  %183 = shl nsw i64 %182, 2
  %184 = call fastcc ptr @get(i64 noundef %183) #15
  %185 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 66
  store ptr %184, ptr %185, align 8, !tbaa !42
  %186 = load i32, ptr %180, align 8, !tbaa !41
  %187 = sext i32 %186 to i64
  %188 = shl nsw i64 %187, 2
  %189 = call fastcc ptr @get(i64 noundef %188) #15
  %190 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 67
  store ptr %189, ptr %190, align 8, !tbaa !43
  %191 = load i32, ptr %180, align 8, !tbaa !41
  %192 = sext i32 %191 to i64
  %193 = shl nsw i64 %192, 2
  %194 = call fastcc ptr @get(i64 noundef %193) #15
  %195 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 68
  store ptr %194, ptr %195, align 8, !tbaa !44
  %196 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 16
  %197 = load i32, ptr %196, align 8, !tbaa !45
  %198 = sext i32 %197 to i64
  %199 = shl nsw i64 %198, 2
  %200 = call fastcc ptr @get(i64 noundef %199) #15
  %201 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 69
  store ptr %200, ptr %201, align 8, !tbaa !46
  %202 = load i32, ptr %196, align 8, !tbaa !45
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %203, 2
  %205 = call fastcc ptr @get(i64 noundef %204) #15
  %206 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 70
  store ptr %205, ptr %206, align 8, !tbaa !47
  %207 = load i32, ptr %196, align 8, !tbaa !45
  %208 = sext i32 %207 to i64
  %209 = shl nsw i64 %208, 2
  %210 = call fastcc ptr @get(i64 noundef %209) #15
  %211 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 71
  store ptr %210, ptr %211, align 8, !tbaa !48
  %212 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 8
  %213 = load i32, ptr %212, align 8, !tbaa !49
  %214 = sext i32 %213 to i64
  %215 = shl nsw i64 %214, 2
  %216 = call fastcc ptr @get(i64 noundef %215) #15
  %217 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 72
  store ptr %216, ptr %217, align 8, !tbaa !50
  %218 = load i32, ptr %212, align 8, !tbaa !49
  %219 = sext i32 %218 to i64
  %220 = shl nsw i64 %219, 2
  %221 = call fastcc ptr @get(i64 noundef %220) #15
  %222 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 73
  store ptr %221, ptr %222, align 8, !tbaa !51
  %223 = load i32, ptr %212, align 8, !tbaa !49
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 2
  %226 = call fastcc ptr @get(i64 noundef %225) #15
  %227 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 74
  store ptr %226, ptr %227, align 8, !tbaa !52
  %228 = load i32, ptr %212, align 8, !tbaa !49
  %229 = sext i32 %228 to i64
  %230 = shl nsw i64 %229, 2
  %231 = call fastcc ptr @get(i64 noundef %230) #15
  %232 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 75
  store ptr %231, ptr %232, align 8, !tbaa !53
  %233 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 17
  %234 = load i32, ptr %233, align 4, !tbaa !54
  %235 = sext i32 %234 to i64
  %236 = shl nsw i64 %235, 2
  %237 = call fastcc ptr @get(i64 noundef %236) #15
  %238 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 76
  store ptr %237, ptr %238, align 8, !tbaa !55
  %239 = load i32, ptr %233, align 4, !tbaa !54
  %240 = sext i32 %239 to i64
  %241 = shl nsw i64 %240, 2
  %242 = call fastcc ptr @get(i64 noundef %241) #15
  %243 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 77
  store ptr %242, ptr %243, align 8, !tbaa !56
  %244 = load i32, ptr %233, align 4, !tbaa !54
  %245 = sext i32 %244 to i64
  %246 = shl nsw i64 %245, 2
  %247 = call fastcc ptr @get(i64 noundef %246) #15
  %248 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 78
  store ptr %247, ptr %248, align 8, !tbaa !57
  %249 = load i32, ptr %233, align 4, !tbaa !54
  %250 = sext i32 %249 to i64
  %251 = shl nsw i64 %250, 2
  %252 = call fastcc ptr @get(i64 noundef %251) #15
  %253 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 79
  store ptr %252, ptr %253, align 8, !tbaa !58
  %254 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 10
  %255 = load i32, ptr %254, align 8, !tbaa !59
  %256 = sext i32 %255 to i64
  %257 = shl nsw i64 %256, 2
  %258 = call fastcc ptr @get(i64 noundef %257) #15
  %259 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 80
  store ptr %258, ptr %259, align 8, !tbaa !60
  %260 = load i32, ptr %254, align 8, !tbaa !59
  %261 = sext i32 %260 to i64
  %262 = shl nsw i64 %261, 2
  %263 = call fastcc ptr @get(i64 noundef %262) #15
  %264 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 81
  store ptr %263, ptr %264, align 8, !tbaa !61
  %265 = load i32, ptr %254, align 8, !tbaa !59
  %266 = sext i32 %265 to i64
  %267 = shl nsw i64 %266, 2
  %268 = call fastcc ptr @get(i64 noundef %267) #15
  %269 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 82
  store ptr %268, ptr %269, align 8, !tbaa !62
  %270 = load i32, ptr %254, align 8, !tbaa !59
  %271 = sext i32 %270 to i64
  %272 = shl nsw i64 %271, 2
  %273 = call fastcc ptr @get(i64 noundef %272) #15
  %274 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 83
  store ptr %273, ptr %274, align 8, !tbaa !63
  %275 = load i32, ptr %254, align 8, !tbaa !59
  %276 = sext i32 %275 to i64
  %277 = shl nsw i64 %276, 2
  %278 = call fastcc ptr @get(i64 noundef %277) #15
  %279 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 84
  store ptr %278, ptr %279, align 8, !tbaa !64
  %280 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 18
  %281 = load i32, ptr %280, align 8, !tbaa !65
  %282 = sext i32 %281 to i64
  %283 = shl nsw i64 %282, 2
  %284 = call fastcc ptr @get(i64 noundef %283) #15
  %285 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 85
  store ptr %284, ptr %285, align 8, !tbaa !66
  %286 = load i32, ptr %280, align 8, !tbaa !65
  %287 = sext i32 %286 to i64
  %288 = shl nsw i64 %287, 2
  %289 = call fastcc ptr @get(i64 noundef %288) #15
  %290 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 86
  store ptr %289, ptr %290, align 8, !tbaa !67
  %291 = load i32, ptr %280, align 8, !tbaa !65
  %292 = sext i32 %291 to i64
  %293 = shl nsw i64 %292, 2
  %294 = call fastcc ptr @get(i64 noundef %293) #15
  %295 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 87
  store ptr %294, ptr %295, align 8, !tbaa !68
  %296 = load i32, ptr %280, align 8, !tbaa !65
  %297 = sext i32 %296 to i64
  %298 = shl nsw i64 %297, 2
  %299 = call fastcc ptr @get(i64 noundef %298) #15
  %300 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 88
  store ptr %299, ptr %300, align 8, !tbaa !69
  %301 = load i32, ptr %280, align 8, !tbaa !65
  %302 = sext i32 %301 to i64
  %303 = shl nsw i64 %302, 2
  %304 = call fastcc ptr @get(i64 noundef %303) #15
  %305 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 89
  store ptr %304, ptr %305, align 8, !tbaa !70
  %306 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 14
  %307 = load i32, ptr %306, align 8, !tbaa !71
  %308 = sext i32 %307 to i64
  %309 = shl nsw i64 %308, 2
  %310 = call fastcc ptr @get(i64 noundef %309) #15
  %311 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 63
  store ptr %310, ptr %311, align 8, !tbaa !72
  %312 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 23
  %313 = load i32, ptr %312, align 4, !tbaa !73
  %314 = sext i32 %313 to i64
  %315 = shl nsw i64 %314, 3
  %316 = call fastcc ptr @get(i64 noundef %315) #15
  %317 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 49
  store ptr %316, ptr %317, align 8, !tbaa !74
  %318 = load i32, ptr %312, align 4, !tbaa !73
  %319 = sext i32 %318 to i64
  %320 = shl nsw i64 %319, 3
  %321 = call fastcc ptr @get(i64 noundef %320) #15
  %322 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 50
  store ptr %321, ptr %322, align 8, !tbaa !75
  %323 = load i32, ptr %71, align 8, !tbaa !10
  %324 = sext i32 %323 to i64
  %325 = shl nsw i64 %324, 2
  %326 = add nsw i64 %325, 81
  %327 = call fastcc ptr @get(i64 noundef %326) #15
  %328 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 35
  store ptr %327, ptr %328, align 8, !tbaa !76
  %329 = load i32, ptr %71, align 8, !tbaa !10
  %330 = sext i32 %329 to i64
  %331 = shl nsw i64 %330, 2
  %332 = add nsw i64 %331, 81
  %333 = call fastcc ptr @get(i64 noundef %332) #15
  %334 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 36
  store ptr %333, ptr %334, align 8, !tbaa !77
  %335 = load i32, ptr %71, align 8, !tbaa !10
  %336 = sext i32 %335 to i64
  %337 = shl nsw i64 %336, 2
  %338 = call fastcc ptr @get(i64 noundef %337) #15
  %339 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 64
  store ptr %338, ptr %339, align 8, !tbaa !78
  %340 = load i32, ptr %71, align 8, !tbaa !10
  %341 = sext i32 %340 to i64
  %342 = shl nsw i64 %341, 2
  %343 = call fastcc ptr @get(i64 noundef %342) #15
  %344 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 65
  store ptr %343, ptr %344, align 8, !tbaa !79
  %345 = load i32, ptr %71, align 8, !tbaa !10
  %346 = sext i32 %345 to i64
  %347 = shl nsw i64 %346, 2
  %348 = call fastcc ptr @get(i64 noundef %347) #15
  %349 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 91
  store ptr %348, ptr %349, align 8, !tbaa !80
  %350 = load i32, ptr %71, align 8, !tbaa !10
  %351 = sext i32 %350 to i64
  %352 = mul nsw i64 %351, 40
  %353 = call fastcc ptr @get(i64 noundef %352) #15
  %354 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 92
  store ptr %353, ptr %354, align 8, !tbaa !81
  %355 = load i32, ptr %71, align 8, !tbaa !10
  %356 = sext i32 %355 to i64
  %357 = mul nsw i64 %356, 48
  %358 = call fastcc ptr @get(i64 noundef %357) #15
  %359 = load i32, ptr %71, align 8, !tbaa !10
  %360 = sext i32 %359 to i64
  %361 = shl nsw i64 %360, 3
  %362 = call fastcc ptr @get(i64 noundef %361) #15
  %363 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 51
  store ptr %362, ptr %363, align 8, !tbaa !82
  %364 = load i32, ptr %71, align 8, !tbaa !10
  %365 = sext i32 %364 to i64
  %366 = shl nsw i64 %365, 3
  %367 = call fastcc ptr @get(i64 noundef %366) #15
  %368 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 52
  store ptr %367, ptr %368, align 8, !tbaa !83
  %369 = load i32, ptr %71, align 8, !tbaa !10
  %370 = sext i32 %369 to i64
  %371 = shl nsw i64 %370, 3
  %372 = call fastcc ptr @get(i64 noundef %371) #15
  %373 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 93
  store ptr %372, ptr %373, align 8, !tbaa !84
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.9) #15
  %374 = load i32, ptr %71, align 8, !tbaa !10
  %375 = sdiv i32 %374, 20
  %376 = srem i32 %374, 20
  %377 = icmp ne i32 %376, 0
  %378 = zext i1 %377 to i32
  %379 = add nsw i32 %375, %378
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %395

381:                                              ; preds = %70, %381
  %382 = phi i64 [ %386, %381 ], [ 0, %70 ]
  %383 = load ptr, ptr %87, align 8, !tbaa !18
  %384 = mul nuw nsw i64 %382, 80
  %385 = getelementptr inbounds i8, ptr %383, i64 %384
  call fastcc void @preadln(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %385) #15
  %386 = add nuw nsw i64 %382, 1
  %387 = load i32, ptr %71, align 8, !tbaa !10
  %388 = sdiv i32 %387, 20
  %389 = srem i32 %387, 20
  %390 = icmp ne i32 %389, 0
  %391 = zext i1 %390 to i32
  %392 = add nsw i32 %388, %391
  %393 = sext i32 %392 to i64
  %394 = icmp slt i64 %386, %393
  br i1 %394, label %381, label %395, !llvm.loop !85

395:                                              ; preds = %381, %70
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.11) #15
  %396 = load i32, ptr %71, align 8, !tbaa !10
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %411

398:                                              ; preds = %395, %406
  %399 = phi i64 [ %407, %406 ], [ 0, %395 ]
  %400 = call i32 @get_mytaskid() #14
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %398
  %403 = load ptr, ptr %92, align 8, !tbaa !19
  %404 = getelementptr inbounds double, ptr %403, i64 %399
  %405 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %404) #14
  br label %406

406:                                              ; preds = %398, %402
  %407 = add nuw nsw i64 %399, 1
  %408 = load i32, ptr %71, align 8, !tbaa !10
  %409 = sext i32 %408 to i64
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %398, label %411, !llvm.loop !87

411:                                              ; preds = %406, %395
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.13) #15
  %412 = load i32, ptr %71, align 8, !tbaa !10
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %411, %422
  %415 = phi i64 [ %423, %422 ], [ 0, %411 ]
  %416 = call i32 @get_mytaskid() #14
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %414
  %419 = load ptr, ptr %97, align 8, !tbaa !20
  %420 = getelementptr inbounds double, ptr %419, i64 %415
  %421 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef %420) #14
  br label %422

422:                                              ; preds = %414, %418
  %423 = add nuw nsw i64 %415, 1
  %424 = load i32, ptr %71, align 8, !tbaa !10
  %425 = sext i32 %424 to i64
  %426 = icmp slt i64 %423, %425
  br i1 %426, label %414, label %427, !llvm.loop !88

427:                                              ; preds = %422, %411
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.15) #15
  %428 = load i32, ptr %71, align 8, !tbaa !10
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %430, label %443

430:                                              ; preds = %427, %438
  %431 = phi i64 [ %439, %438 ], [ 0, %427 ]
  %432 = call i32 @get_mytaskid() #14
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %430
  %435 = load ptr, ptr %102, align 8, !tbaa !21
  %436 = getelementptr inbounds i32, ptr %435, i64 %431
  %437 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %436) #14
  br label %438

438:                                              ; preds = %430, %434
  %439 = add nuw nsw i64 %431, 1
  %440 = load i32, ptr %71, align 8, !tbaa !10
  %441 = sext i32 %440 to i64
  %442 = icmp slt i64 %439, %441
  br i1 %442, label %430, label %443, !llvm.loop !89

443:                                              ; preds = %438, %427
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.17) #15
  %444 = load i32, ptr %71, align 8, !tbaa !10
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %459

446:                                              ; preds = %443, %454
  %447 = phi i64 [ %455, %454 ], [ 0, %443 ]
  %448 = call i32 @get_mytaskid() #14
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %446
  %451 = load ptr, ptr %107, align 8, !tbaa !22
  %452 = getelementptr inbounds i32, ptr %451, i64 %447
  %453 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %452) #14
  br label %454

454:                                              ; preds = %446, %450
  %455 = add nuw nsw i64 %447, 1
  %456 = load i32, ptr %71, align 8, !tbaa !10
  %457 = sext i32 %456 to i64
  %458 = icmp slt i64 %455, %457
  br i1 %458, label %446, label %459, !llvm.loop !90

459:                                              ; preds = %454, %443
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.18) #15
  %460 = load i32, ptr %78, align 4, !tbaa !16
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %488

462:                                              ; preds = %459, %482
  %463 = phi i64 [ %484, %482 ], [ 0, %459 ]
  %464 = phi i32 [ %483, %482 ], [ 0, %459 ]
  %465 = call i32 @get_mytaskid() #14
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %482

467:                                              ; preds = %462
  %468 = load ptr, ptr %112, align 8, !tbaa !23
  %469 = getelementptr inbounds i32, ptr %468, i64 %463
  %470 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %469) #14
  %471 = load ptr, ptr %112, align 8, !tbaa !23
  %472 = getelementptr inbounds i32, ptr %471, i64 %463
  %473 = load i32, ptr %472, align 4, !tbaa !91
  %474 = icmp sgt i32 %473, -1
  %475 = icmp ne i32 %464, 0
  %476 = select i1 %474, i1 true, i1 %475
  br i1 %476, label %482, label %477

477:                                              ; preds = %467
  %478 = load ptr, ptr @nabout, align 8, !tbaa !6
  %479 = call i64 @fwrite(ptr nonnull @.str.19, i64 46, i64 1, ptr %478)
  %480 = load ptr, ptr @nabout, align 8, !tbaa !6
  %481 = call i64 @fwrite(ptr nonnull @.str.20, i64 63, i64 1, ptr %480)
  br label %482

482:                                              ; preds = %462, %477, %467
  %483 = phi i32 [ %464, %467 ], [ 1, %477 ], [ %464, %462 ]
  %484 = add nuw nsw i64 %463, 1
  %485 = load i32, ptr %78, align 4, !tbaa !16
  %486 = sext i32 %485 to i64
  %487 = icmp slt i64 %484, %486
  br i1 %487, label %462, label %488, !llvm.loop !92

488:                                              ; preds = %482, %459
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.21) #15
  %489 = load i32, ptr %113, align 4, !tbaa !24
  %490 = sdiv i32 %489, 20
  %491 = srem i32 %489, 20
  %492 = icmp ne i32 %491, 0
  %493 = zext i1 %492 to i32
  %494 = add nsw i32 %490, %493
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %510

496:                                              ; preds = %488, %496
  %497 = phi i64 [ %501, %496 ], [ 0, %488 ]
  %498 = load ptr, ptr %119, align 8, !tbaa !25
  %499 = mul nuw nsw i64 %497, 80
  %500 = getelementptr inbounds i8, ptr %498, i64 %499
  call fastcc void @preadln(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %500) #15
  %501 = add nuw nsw i64 %497, 1
  %502 = load i32, ptr %113, align 4, !tbaa !24
  %503 = sdiv i32 %502, 20
  %504 = srem i32 %502, 20
  %505 = icmp ne i32 %504, 0
  %506 = zext i1 %505 to i32
  %507 = add nsw i32 %503, %506
  %508 = sext i32 %507 to i64
  %509 = icmp slt i64 %501, %508
  br i1 %509, label %496, label %510, !llvm.loop !93

510:                                              ; preds = %496, %488
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.22) #15
  %511 = load i32, ptr %113, align 4, !tbaa !24
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %515, label %513

513:                                              ; preds = %510
  %514 = sext i32 %511 to i64
  br label %528

515:                                              ; preds = %510, %523
  %516 = phi i64 [ %524, %523 ], [ 0, %510 ]
  %517 = call i32 @get_mytaskid() #14
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %515
  %520 = load ptr, ptr %125, align 8, !tbaa !26
  %521 = getelementptr inbounds i32, ptr %520, i64 %516
  %522 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %521) #14
  br label %523

523:                                              ; preds = %515, %519
  %524 = add nuw nsw i64 %516, 1
  %525 = load i32, ptr %113, align 4, !tbaa !24
  %526 = sext i32 %525 to i64
  %527 = icmp slt i64 %524, %526
  br i1 %527, label %515, label %528, !llvm.loop !94

528:                                              ; preds = %523, %513
  %529 = phi i64 [ %514, %513 ], [ %526, %523 ]
  %530 = load i32, ptr %71, align 8, !tbaa !10
  %531 = add nsw i32 %530, 1
  %532 = load ptr, ptr %125, align 8, !tbaa !26
  %533 = getelementptr inbounds i32, ptr %532, i64 %529
  store i32 %531, ptr %533, align 4, !tbaa !91
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.23) #15
  %534 = load i32, ptr %126, align 4, !tbaa !27
  %535 = icmp sgt i32 %534, 0
  br i1 %535, label %536, label %549

536:                                              ; preds = %528, %544
  %537 = phi i64 [ %545, %544 ], [ 0, %528 ]
  %538 = call i32 @get_mytaskid() #14
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %544

540:                                              ; preds = %536
  %541 = load ptr, ptr %131, align 8, !tbaa !28
  %542 = getelementptr inbounds double, ptr %541, i64 %537
  %543 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %542) #14
  br label %544

544:                                              ; preds = %536, %540
  %545 = add nuw nsw i64 %537, 1
  %546 = load i32, ptr %126, align 4, !tbaa !27
  %547 = sext i32 %546 to i64
  %548 = icmp slt i64 %545, %547
  br i1 %548, label %536, label %549, !llvm.loop !95

549:                                              ; preds = %544, %528
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.24) #15
  %550 = load i32, ptr %126, align 4, !tbaa !27
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %565

552:                                              ; preds = %549, %560
  %553 = phi i64 [ %561, %560 ], [ 0, %549 ]
  %554 = call i32 @get_mytaskid() #14
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %560

556:                                              ; preds = %552
  %557 = load ptr, ptr %136, align 8, !tbaa !29
  %558 = getelementptr inbounds double, ptr %557, i64 %553
  %559 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %558) #14
  br label %560

560:                                              ; preds = %552, %556
  %561 = add nuw nsw i64 %553, 1
  %562 = load i32, ptr %126, align 4, !tbaa !27
  %563 = sext i32 %562 to i64
  %564 = icmp slt i64 %561, %563
  br i1 %564, label %552, label %565, !llvm.loop !96

565:                                              ; preds = %560, %549
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.25) #15
  %566 = load i32, ptr %137, align 8, !tbaa !30
  %567 = icmp sgt i32 %566, 0
  br i1 %567, label %568, label %581

568:                                              ; preds = %565, %576
  %569 = phi i64 [ %577, %576 ], [ 0, %565 ]
  %570 = call i32 @get_mytaskid() #14
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %576

572:                                              ; preds = %568
  %573 = load ptr, ptr %142, align 8, !tbaa !31
  %574 = getelementptr inbounds double, ptr %573, i64 %569
  %575 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %574) #14
  br label %576

576:                                              ; preds = %568, %572
  %577 = add nuw nsw i64 %569, 1
  %578 = load i32, ptr %137, align 8, !tbaa !30
  %579 = sext i32 %578 to i64
  %580 = icmp slt i64 %577, %579
  br i1 %580, label %568, label %581, !llvm.loop !97

581:                                              ; preds = %576, %565
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.26) #15
  %582 = load i32, ptr %137, align 8, !tbaa !30
  %583 = icmp sgt i32 %582, 0
  br i1 %583, label %584, label %597

584:                                              ; preds = %581, %592
  %585 = phi i64 [ %593, %592 ], [ 0, %581 ]
  %586 = call i32 @get_mytaskid() #14
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %584
  %589 = load ptr, ptr %147, align 8, !tbaa !32
  %590 = getelementptr inbounds double, ptr %589, i64 %585
  %591 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %590) #14
  br label %592

592:                                              ; preds = %584, %588
  %593 = add nuw nsw i64 %585, 1
  %594 = load i32, ptr %137, align 8, !tbaa !30
  %595 = sext i32 %594 to i64
  %596 = icmp slt i64 %593, %595
  br i1 %596, label %584, label %597, !llvm.loop !98

597:                                              ; preds = %592, %581
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.27) #15
  %598 = load i32, ptr %148, align 4, !tbaa !33
  %599 = icmp sgt i32 %598, 0
  br i1 %599, label %600, label %613

600:                                              ; preds = %597, %608
  %601 = phi i64 [ %609, %608 ], [ 0, %597 ]
  %602 = call i32 @get_mytaskid() #14
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %608

604:                                              ; preds = %600
  %605 = load ptr, ptr %153, align 8, !tbaa !34
  %606 = getelementptr inbounds double, ptr %605, i64 %601
  %607 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %606) #14
  br label %608

608:                                              ; preds = %600, %604
  %609 = add nuw nsw i64 %601, 1
  %610 = load i32, ptr %148, align 4, !tbaa !33
  %611 = sext i32 %610 to i64
  %612 = icmp slt i64 %609, %611
  br i1 %612, label %600, label %613, !llvm.loop !99

613:                                              ; preds = %608, %597
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.28) #15
  %614 = load i32, ptr %148, align 4, !tbaa !33
  %615 = icmp sgt i32 %614, 0
  br i1 %615, label %616, label %637

616:                                              ; preds = %613, %632
  %617 = phi i64 [ %633, %632 ], [ 0, %613 ]
  %618 = call i32 @get_mytaskid() #14
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %632

620:                                              ; preds = %616
  %621 = load ptr, ptr %158, align 8, !tbaa !35
  %622 = getelementptr inbounds double, ptr %621, i64 %617
  %623 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %622) #14
  %624 = load ptr, ptr %158, align 8, !tbaa !35
  %625 = getelementptr inbounds double, ptr %624, i64 %617
  %626 = load double, ptr %625, align 8, !tbaa !100
  %627 = fcmp oeq double %626, 0.000000e+00
  br i1 %627, label %628, label %632

628:                                              ; preds = %620
  %629 = trunc i64 %617 to i32
  %630 = load ptr, ptr @stderr, align 8, !tbaa !6
  %631 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %630, ptr noundef nonnull @.str.29, i32 noundef %629) #17
  call void @exit(i32 noundef 1) #18
  unreachable

632:                                              ; preds = %616, %620
  %633 = add nuw nsw i64 %617, 1
  %634 = load i32, ptr %148, align 4, !tbaa !33
  %635 = sext i32 %634 to i64
  %636 = icmp slt i64 %633, %635
  br i1 %636, label %616, label %637, !llvm.loop !101

637:                                              ; preds = %632, %613
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.30) #15
  %638 = load i32, ptr %148, align 4, !tbaa !33
  %639 = icmp sgt i32 %638, 0
  br i1 %639, label %640, label %653

640:                                              ; preds = %637, %648
  %641 = phi i64 [ %649, %648 ], [ 0, %637 ]
  %642 = call i32 @get_mytaskid() #14
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %648

644:                                              ; preds = %640
  %645 = load ptr, ptr %163, align 8, !tbaa !36
  %646 = getelementptr inbounds double, ptr %645, i64 %641
  %647 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %646) #14
  br label %648

648:                                              ; preds = %640, %644
  %649 = add nuw nsw i64 %641, 1
  %650 = load i32, ptr %148, align 4, !tbaa !33
  %651 = sext i32 %650 to i64
  %652 = icmp slt i64 %649, %651
  br i1 %652, label %640, label %653, !llvm.loop !102

653:                                              ; preds = %648, %637
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.31) #15
  %654 = load i32, ptr %164, align 8, !tbaa !37
  %655 = icmp sgt i32 %654, 0
  br i1 %655, label %656, label %669

656:                                              ; preds = %653, %664
  %657 = phi i64 [ %665, %664 ], [ 0, %653 ]
  %658 = call i32 @get_mytaskid() #14
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %664

660:                                              ; preds = %656
  %661 = load ptr, ptr %169, align 8, !tbaa !38
  %662 = getelementptr inbounds double, ptr %661, i64 %657
  %663 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %662) #14
  br label %664

664:                                              ; preds = %656, %660
  %665 = add nuw nsw i64 %657, 1
  %666 = load i32, ptr %164, align 8, !tbaa !37
  %667 = sext i32 %666 to i64
  %668 = icmp slt i64 %665, %667
  br i1 %668, label %656, label %669, !llvm.loop !103

669:                                              ; preds = %664, %653
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.32) #15
  %670 = load i32, ptr %82, align 8, !tbaa !17
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %672, label %685

672:                                              ; preds = %669, %680
  %673 = phi i64 [ %681, %680 ], [ 0, %669 ]
  %674 = call i32 @get_mytaskid() #14
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %680

676:                                              ; preds = %672
  %677 = load ptr, ptr %174, align 8, !tbaa !39
  %678 = getelementptr inbounds double, ptr %677, i64 %673
  %679 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %678) #14
  br label %680

680:                                              ; preds = %672, %676
  %681 = add nuw nsw i64 %673, 1
  %682 = load i32, ptr %82, align 8, !tbaa !17
  %683 = sext i32 %682 to i64
  %684 = icmp slt i64 %681, %683
  br i1 %684, label %672, label %685, !llvm.loop !104

685:                                              ; preds = %680, %669
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.33) #15
  %686 = load i32, ptr %82, align 8, !tbaa !17
  %687 = icmp sgt i32 %686, 0
  br i1 %687, label %688, label %701

688:                                              ; preds = %685, %696
  %689 = phi i64 [ %697, %696 ], [ 0, %685 ]
  %690 = call i32 @get_mytaskid() #14
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %696

692:                                              ; preds = %688
  %693 = load ptr, ptr %179, align 8, !tbaa !40
  %694 = getelementptr inbounds double, ptr %693, i64 %689
  %695 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %694) #14
  br label %696

696:                                              ; preds = %688, %692
  %697 = add nuw nsw i64 %689, 1
  %698 = load i32, ptr %82, align 8, !tbaa !17
  %699 = sext i32 %698 to i64
  %700 = icmp slt i64 %697, %699
  br i1 %700, label %688, label %701, !llvm.loop !105

701:                                              ; preds = %696, %685
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.34) #15
  %702 = load i32, ptr %180, align 8, !tbaa !41
  %703 = icmp sgt i32 %702, 0
  br i1 %703, label %704, label %721

704:                                              ; preds = %701, %716
  %705 = phi i64 [ %717, %716 ], [ 0, %701 ]
  %706 = call i32 @get_mytaskid() #14
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %716

708:                                              ; preds = %704
  %709 = load ptr, ptr %185, align 8, !tbaa !42
  %710 = getelementptr inbounds i32, ptr %709, i64 %705
  %711 = load ptr, ptr %190, align 8, !tbaa !43
  %712 = getelementptr inbounds i32, ptr %711, i64 %705
  %713 = load ptr, ptr %195, align 8, !tbaa !44
  %714 = getelementptr inbounds i32, ptr %713, i64 %705
  %715 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.35, ptr noundef %710, ptr noundef %712, ptr noundef %714) #14
  br label %716

716:                                              ; preds = %704, %708
  %717 = add nuw nsw i64 %705, 1
  %718 = load i32, ptr %180, align 8, !tbaa !41
  %719 = sext i32 %718 to i64
  %720 = icmp slt i64 %717, %719
  br i1 %720, label %704, label %721, !llvm.loop !106

721:                                              ; preds = %716, %701
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.36) #15
  %722 = load i32, ptr %196, align 8, !tbaa !45
  %723 = icmp sgt i32 %722, 0
  br i1 %723, label %724, label %741

724:                                              ; preds = %721, %736
  %725 = phi i64 [ %737, %736 ], [ 0, %721 ]
  %726 = call i32 @get_mytaskid() #14
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %736

728:                                              ; preds = %724
  %729 = load ptr, ptr %201, align 8, !tbaa !46
  %730 = getelementptr inbounds i32, ptr %729, i64 %725
  %731 = load ptr, ptr %206, align 8, !tbaa !47
  %732 = getelementptr inbounds i32, ptr %731, i64 %725
  %733 = load ptr, ptr %211, align 8, !tbaa !48
  %734 = getelementptr inbounds i32, ptr %733, i64 %725
  %735 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.35, ptr noundef %730, ptr noundef %732, ptr noundef %734) #14
  br label %736

736:                                              ; preds = %724, %728
  %737 = add nuw nsw i64 %725, 1
  %738 = load i32, ptr %196, align 8, !tbaa !45
  %739 = sext i32 %738 to i64
  %740 = icmp slt i64 %737, %739
  br i1 %740, label %724, label %741, !llvm.loop !107

741:                                              ; preds = %736, %721
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.37) #15
  %742 = load i32, ptr %212, align 8, !tbaa !49
  %743 = icmp sgt i32 %742, 0
  br i1 %743, label %744, label %763

744:                                              ; preds = %741, %758
  %745 = phi i64 [ %759, %758 ], [ 0, %741 ]
  %746 = call i32 @get_mytaskid() #14
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %758

748:                                              ; preds = %744
  %749 = load ptr, ptr %217, align 8, !tbaa !50
  %750 = getelementptr inbounds i32, ptr %749, i64 %745
  %751 = load ptr, ptr %222, align 8, !tbaa !51
  %752 = getelementptr inbounds i32, ptr %751, i64 %745
  %753 = load ptr, ptr %227, align 8, !tbaa !52
  %754 = getelementptr inbounds i32, ptr %753, i64 %745
  %755 = load ptr, ptr %232, align 8, !tbaa !53
  %756 = getelementptr inbounds i32, ptr %755, i64 %745
  %757 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.38, ptr noundef %750, ptr noundef %752, ptr noundef %754, ptr noundef %756) #14
  br label %758

758:                                              ; preds = %744, %748
  %759 = add nuw nsw i64 %745, 1
  %760 = load i32, ptr %212, align 8, !tbaa !49
  %761 = sext i32 %760 to i64
  %762 = icmp slt i64 %759, %761
  br i1 %762, label %744, label %763, !llvm.loop !108

763:                                              ; preds = %758, %741
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.39) #15
  %764 = load i32, ptr %233, align 4, !tbaa !54
  %765 = icmp sgt i32 %764, 0
  br i1 %765, label %766, label %785

766:                                              ; preds = %763, %780
  %767 = phi i64 [ %781, %780 ], [ 0, %763 ]
  %768 = call i32 @get_mytaskid() #14
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %780

770:                                              ; preds = %766
  %771 = load ptr, ptr %238, align 8, !tbaa !55
  %772 = getelementptr inbounds i32, ptr %771, i64 %767
  %773 = load ptr, ptr %243, align 8, !tbaa !56
  %774 = getelementptr inbounds i32, ptr %773, i64 %767
  %775 = load ptr, ptr %248, align 8, !tbaa !57
  %776 = getelementptr inbounds i32, ptr %775, i64 %767
  %777 = load ptr, ptr %253, align 8, !tbaa !58
  %778 = getelementptr inbounds i32, ptr %777, i64 %767
  %779 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.38, ptr noundef %772, ptr noundef %774, ptr noundef %776, ptr noundef %778) #14
  br label %780

780:                                              ; preds = %766, %770
  %781 = add nuw nsw i64 %767, 1
  %782 = load i32, ptr %233, align 4, !tbaa !54
  %783 = sext i32 %782 to i64
  %784 = icmp slt i64 %781, %783
  br i1 %784, label %766, label %785, !llvm.loop !109

785:                                              ; preds = %780, %763
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.40) #15
  %786 = load i32, ptr %254, align 8, !tbaa !59
  %787 = icmp sgt i32 %786, 0
  br i1 %787, label %788, label %809

788:                                              ; preds = %785, %804
  %789 = phi i64 [ %805, %804 ], [ 0, %785 ]
  %790 = call i32 @get_mytaskid() #14
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %804

792:                                              ; preds = %788
  %793 = load ptr, ptr %259, align 8, !tbaa !60
  %794 = getelementptr inbounds i32, ptr %793, i64 %789
  %795 = load ptr, ptr %264, align 8, !tbaa !61
  %796 = getelementptr inbounds i32, ptr %795, i64 %789
  %797 = load ptr, ptr %269, align 8, !tbaa !62
  %798 = getelementptr inbounds i32, ptr %797, i64 %789
  %799 = load ptr, ptr %274, align 8, !tbaa !63
  %800 = getelementptr inbounds i32, ptr %799, i64 %789
  %801 = load ptr, ptr %279, align 8, !tbaa !64
  %802 = getelementptr inbounds i32, ptr %801, i64 %789
  %803 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef %794, ptr noundef %796, ptr noundef %798, ptr noundef %800, ptr noundef %802) #14
  br label %804

804:                                              ; preds = %788, %792
  %805 = add nuw nsw i64 %789, 1
  %806 = load i32, ptr %254, align 8, !tbaa !59
  %807 = sext i32 %806 to i64
  %808 = icmp slt i64 %805, %807
  br i1 %808, label %788, label %809, !llvm.loop !110

809:                                              ; preds = %804, %785
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.42) #15
  %810 = load i32, ptr %280, align 8, !tbaa !65
  %811 = icmp sgt i32 %810, 0
  br i1 %811, label %812, label %833

812:                                              ; preds = %809, %828
  %813 = phi i64 [ %829, %828 ], [ 0, %809 ]
  %814 = call i32 @get_mytaskid() #14
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %828

816:                                              ; preds = %812
  %817 = load ptr, ptr %285, align 8, !tbaa !66
  %818 = getelementptr inbounds i32, ptr %817, i64 %813
  %819 = load ptr, ptr %290, align 8, !tbaa !67
  %820 = getelementptr inbounds i32, ptr %819, i64 %813
  %821 = load ptr, ptr %295, align 8, !tbaa !68
  %822 = getelementptr inbounds i32, ptr %821, i64 %813
  %823 = load ptr, ptr %300, align 8, !tbaa !69
  %824 = getelementptr inbounds i32, ptr %823, i64 %813
  %825 = load ptr, ptr %305, align 8, !tbaa !70
  %826 = getelementptr inbounds i32, ptr %825, i64 %813
  %827 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef %818, ptr noundef %820, ptr noundef %822, ptr noundef %824, ptr noundef %826) #14
  br label %828

828:                                              ; preds = %812, %816
  %829 = add nuw nsw i64 %813, 1
  %830 = load i32, ptr %280, align 8, !tbaa !65
  %831 = sext i32 %830 to i64
  %832 = icmp slt i64 %829, %831
  br i1 %832, label %812, label %833, !llvm.loop !111

833:                                              ; preds = %828, %809
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.43) #15
  %834 = load i32, ptr %306, align 8, !tbaa !71
  %835 = icmp sgt i32 %834, 0
  br i1 %835, label %836, label %849

836:                                              ; preds = %833, %844
  %837 = phi i64 [ %845, %844 ], [ 0, %833 ]
  %838 = call i32 @get_mytaskid() #14
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %840, label %844

840:                                              ; preds = %836
  %841 = load ptr, ptr %311, align 8, !tbaa !72
  %842 = getelementptr inbounds i32, ptr %841, i64 %837
  %843 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %842) #14
  br label %844

844:                                              ; preds = %836, %840
  %845 = add nuw nsw i64 %837, 1
  %846 = load i32, ptr %306, align 8, !tbaa !71
  %847 = sext i32 %846 to i64
  %848 = icmp slt i64 %845, %847
  br i1 %848, label %836, label %849, !llvm.loop !112

849:                                              ; preds = %844, %833
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.44) #15
  %850 = load i32, ptr %312, align 4, !tbaa !73
  %851 = icmp sgt i32 %850, 0
  br i1 %851, label %852, label %865

852:                                              ; preds = %849, %860
  %853 = phi i64 [ %861, %860 ], [ 0, %849 ]
  %854 = call i32 @get_mytaskid() #14
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %860

856:                                              ; preds = %852
  %857 = load ptr, ptr %317, align 8, !tbaa !74
  %858 = getelementptr inbounds double, ptr %857, i64 %853
  %859 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %858) #14
  br label %860

860:                                              ; preds = %852, %856
  %861 = add nuw nsw i64 %853, 1
  %862 = load i32, ptr %312, align 4, !tbaa !73
  %863 = sext i32 %862 to i64
  %864 = icmp slt i64 %861, %863
  br i1 %864, label %852, label %865, !llvm.loop !113

865:                                              ; preds = %860, %849
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.45) #15
  %866 = load i32, ptr %312, align 4, !tbaa !73
  %867 = icmp sgt i32 %866, 0
  br i1 %867, label %868, label %881

868:                                              ; preds = %865, %876
  %869 = phi i64 [ %877, %876 ], [ 0, %865 ]
  %870 = call i32 @get_mytaskid() #14
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %876

872:                                              ; preds = %868
  %873 = load ptr, ptr %322, align 8, !tbaa !75
  %874 = getelementptr inbounds double, ptr %873, i64 %869
  %875 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %874) #14
  br label %876

876:                                              ; preds = %868, %872
  %877 = add nuw nsw i64 %869, 1
  %878 = load i32, ptr %312, align 4, !tbaa !73
  %879 = sext i32 %878 to i64
  %880 = icmp slt i64 %877, %879
  br i1 %880, label %868, label %881, !llvm.loop !114

881:                                              ; preds = %876, %865
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.46) #15
  %882 = load i32, ptr %312, align 4, !tbaa !73
  %883 = sext i32 %882 to i64
  %884 = shl nsw i64 %883, 3
  %885 = call fastcc ptr @get(i64 noundef %884) #15
  %886 = load i32, ptr %312, align 4, !tbaa !73
  %887 = icmp sgt i32 %886, 0
  br i1 %887, label %888, label %900

888:                                              ; preds = %881, %895
  %889 = phi i64 [ %896, %895 ], [ 0, %881 ]
  %890 = call i32 @get_mytaskid() #14
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %895

892:                                              ; preds = %888
  %893 = getelementptr inbounds double, ptr %885, i64 %889
  %894 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %893) #14
  br label %895

895:                                              ; preds = %888, %892
  %896 = add nuw nsw i64 %889, 1
  %897 = load i32, ptr %312, align 4, !tbaa !73
  %898 = sext i32 %897 to i64
  %899 = icmp slt i64 %896, %898
  br i1 %899, label %888, label %900, !llvm.loop !115

900:                                              ; preds = %895, %881
  %901 = icmp eq ptr %885, null
  br i1 %901, label %903, label %902

902:                                              ; preds = %900
  call void @free(ptr noundef nonnull %885) #14
  br label %903

903:                                              ; preds = %902, %900
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.47) #15
  %904 = load i32, ptr %71, align 8, !tbaa !10
  %905 = sdiv i32 %904, 20
  %906 = srem i32 %904, 20
  %907 = icmp ne i32 %906, 0
  %908 = zext i1 %907 to i32
  %909 = add nsw i32 %905, %908
  %910 = icmp sgt i32 %909, 0
  br i1 %910, label %911, label %925

911:                                              ; preds = %903, %911
  %912 = phi i64 [ %916, %911 ], [ 0, %903 ]
  %913 = load ptr, ptr %328, align 8, !tbaa !76
  %914 = mul nuw nsw i64 %912, 80
  %915 = getelementptr inbounds i8, ptr %913, i64 %914
  call fastcc void @preadln(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %915) #15
  %916 = add nuw nsw i64 %912, 1
  %917 = load i32, ptr %71, align 8, !tbaa !10
  %918 = sdiv i32 %917, 20
  %919 = srem i32 %917, 20
  %920 = icmp ne i32 %919, 0
  %921 = zext i1 %920 to i32
  %922 = add nsw i32 %918, %921
  %923 = sext i32 %922 to i64
  %924 = icmp slt i64 %916, %923
  br i1 %924, label %911, label %925, !llvm.loop !116

925:                                              ; preds = %911, %903
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.48) #15
  %926 = load i32, ptr %71, align 8, !tbaa !10
  %927 = sdiv i32 %926, 20
  %928 = srem i32 %926, 20
  %929 = icmp ne i32 %928, 0
  %930 = zext i1 %929 to i32
  %931 = add nsw i32 %927, %930
  %932 = icmp sgt i32 %931, 0
  br i1 %932, label %933, label %947

933:                                              ; preds = %925, %933
  %934 = phi i64 [ %938, %933 ], [ 0, %925 ]
  %935 = load ptr, ptr %334, align 8, !tbaa !77
  %936 = mul nuw nsw i64 %934, 80
  %937 = getelementptr inbounds i8, ptr %935, i64 %936
  call fastcc void @preadln(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %937) #15
  %938 = add nuw nsw i64 %934, 1
  %939 = load i32, ptr %71, align 8, !tbaa !10
  %940 = sdiv i32 %939, 20
  %941 = srem i32 %939, 20
  %942 = icmp ne i32 %941, 0
  %943 = zext i1 %942 to i32
  %944 = add nsw i32 %940, %943
  %945 = sext i32 %944 to i64
  %946 = icmp slt i64 %938, %945
  br i1 %946, label %933, label %947, !llvm.loop !117

947:                                              ; preds = %933, %925
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.49) #15
  %948 = load i32, ptr %71, align 8, !tbaa !10
  %949 = icmp sgt i32 %948, 0
  br i1 %949, label %950, label %963

950:                                              ; preds = %947, %958
  %951 = phi i64 [ %959, %958 ], [ 0, %947 ]
  %952 = call i32 @get_mytaskid() #14
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %958

954:                                              ; preds = %950
  %955 = load ptr, ptr %339, align 8, !tbaa !78
  %956 = getelementptr inbounds i32, ptr %955, i64 %951
  %957 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %956) #14
  br label %958

958:                                              ; preds = %950, %954
  %959 = add nuw nsw i64 %951, 1
  %960 = load i32, ptr %71, align 8, !tbaa !10
  %961 = sext i32 %960 to i64
  %962 = icmp slt i64 %959, %961
  br i1 %962, label %950, label %963, !llvm.loop !118

963:                                              ; preds = %958, %947
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.50) #15
  %964 = load i32, ptr %71, align 8, !tbaa !10
  %965 = icmp sgt i32 %964, 0
  br i1 %965, label %966, label %979

966:                                              ; preds = %963, %974
  %967 = phi i64 [ %975, %974 ], [ 0, %963 ]
  %968 = call i32 @get_mytaskid() #14
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %970, label %974

970:                                              ; preds = %966
  %971 = load ptr, ptr %344, align 8, !tbaa !79
  %972 = getelementptr inbounds i32, ptr %971, i64 %967
  %973 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef %972) #14
  br label %974

974:                                              ; preds = %966, %970
  %975 = add nuw nsw i64 %967, 1
  %976 = load i32, ptr %71, align 8, !tbaa !10
  %977 = sext i32 %976 to i64
  %978 = icmp slt i64 %975, %977
  br i1 %978, label %966, label %979, !llvm.loop !119

979:                                              ; preds = %974, %963
  call fastcc void @skipeoln(ptr noundef %12) #15
  %980 = load i32, ptr %71, align 8, !tbaa !10
  %981 = icmp sgt i32 %980, 0
  br i1 %981, label %982, label %1000

982:                                              ; preds = %979
  %983 = load ptr, ptr %125, align 8, !tbaa !26
  %984 = load ptr, ptr %344, align 8, !tbaa !79
  br label %985

985:                                              ; preds = %982, %985
  %986 = phi i64 [ 0, %982 ], [ %988, %985 ]
  %987 = phi i32 [ 0, %982 ], [ %995, %985 ]
  %988 = add nuw nsw i64 %986, 1
  %989 = add nsw i32 %987, 1
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds i32, ptr %983, i64 %990
  %992 = load i32, ptr %991, align 4, !tbaa !91
  %993 = zext i32 %992 to i64
  %994 = icmp eq i64 %988, %993
  %995 = select i1 %994, i32 %989, i32 %987
  %996 = getelementptr inbounds i32, ptr %984, i64 %986
  store i32 %995, ptr %996, align 4, !tbaa !91
  %997 = load i32, ptr %71, align 8, !tbaa !10
  %998 = sext i32 %997 to i64
  %999 = icmp slt i64 %988, %998
  br i1 %999, label %985, label %1000, !llvm.loop !120

1000:                                             ; preds = %985, %979
  %1001 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 1
  %1002 = load i32, ptr %1001, align 4, !tbaa !121
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1012

1004:                                             ; preds = %1000
  %1005 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 27
  store i32 1, ptr %1005, align 4, !tbaa !122
  %1006 = call fastcc ptr @get(i64 noundef 4) #15
  %1007 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 90
  store ptr %1006, ptr %1007, align 8, !tbaa !123
  %1008 = load i32, ptr %71, align 8, !tbaa !10
  store i32 %1008, ptr %1006, align 4, !tbaa !91
  %1009 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 3
  %1010 = load i32, ptr %1009, align 4, !tbaa !124
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1034, label %1019

1012:                                             ; preds = %1000
  %1013 = call i32 @get_mytaskid() #14
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1018

1015:                                             ; preds = %1012
  %1016 = load ptr, ptr @nabout, align 8, !tbaa !6
  %1017 = call i64 @fwrite(ptr nonnull @.str.51, i64 44, i64 1, ptr %1016)
  br label %1018

1018:                                             ; preds = %1015, %1012
  call void @exit(i32 noundef 1) #18
  unreachable

1019:                                             ; preds = %1004
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.52) #15
  %1020 = call i32 @get_mytaskid() #14
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1025

1022:                                             ; preds = %1019
  %1023 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 31
  %1024 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.53, ptr noundef nonnull %1023) #14
  br label %1025

1025:                                             ; preds = %1022, %1019
  call fastcc void @pfind(ptr noundef %12, i32 noundef %29, ptr noundef nonnull @.str.54) #15
  %1026 = call i32 @get_mytaskid() #14
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1034

1028:                                             ; preds = %1025
  %1029 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 54
  %1030 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 55
  %1031 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 56
  %1032 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 57
  %1033 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.55, ptr noundef nonnull %1029, ptr noundef nonnull %1030, ptr noundef nonnull %1031, ptr noundef nonnull %1032) #14
  br label %1034

1034:                                             ; preds = %1025, %1028, %1004
  br i1 %24, label %1035, label %1088

1035:                                             ; preds = %1034
  call fastcc void @pfind(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.56) #15
  %1036 = load i32, ptr %71, align 8, !tbaa !10
  %1037 = icmp sgt i32 %1036, 0
  br i1 %1037, label %1038, label %1051

1038:                                             ; preds = %1035, %1046
  %1039 = phi i64 [ %1047, %1046 ], [ 0, %1035 ]
  %1040 = call i32 @get_mytaskid() #14
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1046

1042:                                             ; preds = %1038
  %1043 = load ptr, ptr %363, align 8, !tbaa !82
  %1044 = getelementptr inbounds double, ptr %1043, i64 %1039
  %1045 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %1044) #14
  br label %1046

1046:                                             ; preds = %1038, %1042
  %1047 = add nuw nsw i64 %1039, 1
  %1048 = load i32, ptr %71, align 8, !tbaa !10
  %1049 = sext i32 %1048 to i64
  %1050 = icmp slt i64 %1047, %1049
  br i1 %1050, label %1038, label %1051, !llvm.loop !125

1051:                                             ; preds = %1046, %1035
  call fastcc void @skipeoln(ptr noundef %12) #15
  call fastcc void @pfind(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.57) #15
  %1052 = load i32, ptr %71, align 8, !tbaa !10
  %1053 = icmp sgt i32 %1052, 0
  br i1 %1053, label %1054, label %1067

1054:                                             ; preds = %1051, %1062
  %1055 = phi i64 [ %1063, %1062 ], [ 0, %1051 ]
  %1056 = call i32 @get_mytaskid() #14
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1058, label %1062

1058:                                             ; preds = %1054
  %1059 = load ptr, ptr %368, align 8, !tbaa !83
  %1060 = getelementptr inbounds double, ptr %1059, i64 %1055
  %1061 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %1060) #14
  br label %1062

1062:                                             ; preds = %1054, %1058
  %1063 = add nuw nsw i64 %1055, 1
  %1064 = load i32, ptr %71, align 8, !tbaa !10
  %1065 = sext i32 %1064 to i64
  %1066 = icmp slt i64 %1063, %1065
  br i1 %1066, label %1054, label %1067, !llvm.loop !126

1067:                                             ; preds = %1062, %1051
  call fastcc void @skipeoln(ptr noundef %12) #15
  %1068 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 58
  store double 0.000000e+00, ptr %1068, align 8, !tbaa !127
  %1069 = load i32, ptr %71, align 8, !tbaa !10
  %1070 = icmp sgt i32 %1069, 0
  br i1 %1070, label %1071, label %1173

1071:                                             ; preds = %1067
  %1072 = load ptr, ptr %368, align 8, !tbaa !83
  %1073 = load ptr, ptr %363, align 8, !tbaa !82
  %1074 = zext nneg i32 %1069 to i64
  br label %1075

1075:                                             ; preds = %1071, %1075
  %1076 = phi i64 [ 0, %1071 ], [ %1086, %1075 ]
  %1077 = phi double [ 0.000000e+00, %1071 ], [ %1085, %1075 ]
  %1078 = getelementptr inbounds double, ptr %1072, i64 %1076
  %1079 = load double, ptr %1078, align 8, !tbaa !100
  %1080 = getelementptr inbounds double, ptr %1073, i64 %1076
  %1081 = load double, ptr %1080, align 8, !tbaa !100
  %1082 = fadd double %1081, 0xBFB70A3D70A3D70A
  %1083 = fmul double %1079, %1082
  %1084 = fcmp ogt double %1083, %1077
  %1085 = select i1 %1084, double %1083, double %1077
  store double %1085, ptr %1068, align 8, !tbaa !127
  %1086 = add nuw nsw i64 %1076, 1
  %1087 = icmp eq i64 %1086, %1074
  br i1 %1087, label %1173, label %1075, !llvm.loop !128

1088:                                             ; preds = %1034
  %1089 = call i32 @get_mytaskid() #14
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1094

1091:                                             ; preds = %1088
  %1092 = load ptr, ptr @nabout, align 8, !tbaa !6
  %1093 = call i64 @fwrite(ptr nonnull @.str.58, i64 54, i64 1, ptr %1092)
  br label %1094

1094:                                             ; preds = %1091, %1088
  %1095 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 58
  store double 0.000000e+00, ptr %1095, align 8, !tbaa !127
  %1096 = load i32, ptr %71, align 8, !tbaa !10
  %1097 = icmp sgt i32 %1096, 0
  br i1 %1097, label %1098, label %1173

1098:                                             ; preds = %1094
  %1099 = load ptr, ptr %87, align 8, !tbaa !18
  %1100 = zext nneg i32 %1096 to i64
  br label %1101

1101:                                             ; preds = %1098, %1159
  %1102 = phi i64 [ 0, %1098 ], [ %1171, %1159 ]
  %1103 = shl nsw i64 %1102, 2
  %1104 = getelementptr inbounds i8, ptr %1099, i64 %1103
  %1105 = load i8, ptr %1104, align 1, !tbaa !129
  switch i8 %1105, label %1149 [
    i8 72, label %1106
    i8 67, label %1122
    i8 78, label %1125
    i8 79, label %1128
    i8 70, label %1131
    i8 80, label %1134
    i8 83, label %1137
    i8 76, label %1140
    i8 90, label %1143
    i8 77, label %1146
  ]

1106:                                             ; preds = %1101
  %1107 = load ptr, ptr %368, align 8, !tbaa !83
  %1108 = getelementptr inbounds double, ptr %1107, i64 %1102
  store double 8.500000e-01, ptr %1108, align 8, !tbaa !100
  %1109 = icmp eq i64 %1102, 0
  br i1 %1109, label %1159, label %1113

1110:                                             ; preds = %1113
  %1111 = add nuw nsw i64 %1114, 1
  %1112 = icmp eq i64 %1111, 4
  br i1 %1112, label %1159, label %1113, !llvm.loop !130

1113:                                             ; preds = %1106, %1110
  %1114 = phi i64 [ %1111, %1110 ], [ 1, %1106 ]
  %1115 = sub nsw i64 %1102, %1114
  %1116 = trunc i64 %1115 to i32
  %1117 = shl nsw i32 %1116, 2
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds i8, ptr %1099, i64 %1118
  %1120 = load i8, ptr %1119, align 1, !tbaa !129
  switch i8 %1120, label %1159 [
    i8 72, label %1110
    i8 79, label %1158
    i8 67, label %1121
  ]

1121:                                             ; preds = %1113
  br label %1159

1122:                                             ; preds = %1101
  %1123 = load ptr, ptr %368, align 8, !tbaa !83
  %1124 = getelementptr inbounds double, ptr %1123, i64 %1102
  store double 0x3FE70A3D70A3D70A, ptr %1124, align 8, !tbaa !100
  br label %1159

1125:                                             ; preds = %1101
  %1126 = load ptr, ptr %368, align 8, !tbaa !83
  %1127 = getelementptr inbounds double, ptr %1126, i64 %1102
  store double 7.900000e-01, ptr %1127, align 8, !tbaa !100
  br label %1159

1128:                                             ; preds = %1101
  %1129 = load ptr, ptr %368, align 8, !tbaa !83
  %1130 = getelementptr inbounds double, ptr %1129, i64 %1102
  store double 8.500000e-01, ptr %1130, align 8, !tbaa !100
  br label %1159

1131:                                             ; preds = %1101
  %1132 = load ptr, ptr %368, align 8, !tbaa !83
  %1133 = getelementptr inbounds double, ptr %1132, i64 %1102
  store double 8.800000e-01, ptr %1133, align 8, !tbaa !100
  br label %1159

1134:                                             ; preds = %1101
  %1135 = load ptr, ptr %368, align 8, !tbaa !83
  %1136 = getelementptr inbounds double, ptr %1135, i64 %1102
  store double 8.600000e-01, ptr %1136, align 8, !tbaa !100
  br label %1159

1137:                                             ; preds = %1101
  %1138 = load ptr, ptr %368, align 8, !tbaa !83
  %1139 = getelementptr inbounds double, ptr %1138, i64 %1102
  store double 0x3FEEB851EB851EB8, ptr %1139, align 8, !tbaa !100
  br label %1159

1140:                                             ; preds = %1101
  %1141 = load ptr, ptr %368, align 8, !tbaa !83
  %1142 = getelementptr inbounds double, ptr %1141, i64 %1102
  store double 0x3FEEB851EB851EB8, ptr %1142, align 8, !tbaa !100
  br label %1159

1143:                                             ; preds = %1101
  %1144 = load ptr, ptr %368, align 8, !tbaa !83
  %1145 = getelementptr inbounds double, ptr %1144, i64 %1102
  store double 0x3FEEB851EB851EB8, ptr %1145, align 8, !tbaa !100
  br label %1159

1146:                                             ; preds = %1101
  %1147 = load ptr, ptr %368, align 8, !tbaa !83
  %1148 = getelementptr inbounds double, ptr %1147, i64 %1102
  store double 0x3FEEB851EB851EB8, ptr %1148, align 8, !tbaa !100
  br label %1159

1149:                                             ; preds = %1101
  %1150 = call i32 @get_mytaskid() #14
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1152, label %1157

1152:                                             ; preds = %1149
  %1153 = trunc i64 %1102 to i32
  %1154 = sext i8 %1105 to i32
  %1155 = load ptr, ptr @stderr, align 8, !tbaa !6
  %1156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1155, ptr noundef nonnull @.str.59, i32 noundef %1153, i32 noundef %1154) #17
  br label %1157

1157:                                             ; preds = %1152, %1149
  call void @exit(i32 noundef 1) #18
  unreachable

1158:                                             ; preds = %1113
  br label %1159

1159:                                             ; preds = %1113, %1110, %1158, %1106, %1122, %1128, %1134, %1140, %1146, %1143, %1137, %1131, %1125, %1121
  %1160 = phi double [ 1.700000e+00, %1122 ], [ 1.500000e+00, %1128 ], [ 1.850000e+00, %1134 ], [ 1.000000e+00, %1140 ], [ 1.400000e+00, %1146 ], [ 1.400000e+00, %1143 ], [ 1.800000e+00, %1137 ], [ 1.470000e+00, %1131 ], [ 1.550000e+00, %1125 ], [ 1.300000e+00, %1121 ], [ 8.000000e-01, %1106 ], [ 8.000000e-01, %1158 ], [ 1.200000e+00, %1110 ], [ 1.200000e+00, %1113 ]
  %1161 = phi double [ 0x3FF9C28F5C28F5C2, %1122 ], [ 1.410000e+00, %1128 ], [ 1.760000e+00, %1134 ], [ 9.100000e-01, %1140 ], [ 0x3FF4F5C28F5C28F5, %1146 ], [ 0x3FF4F5C28F5C28F5, %1143 ], [ 1.710000e+00, %1137 ], [ 1.380000e+00, %1131 ], [ 1.460000e+00, %1125 ], [ 1.210000e+00, %1121 ], [ 0x3FE6B851EB851EB9, %1106 ], [ 0x3FE6B851EB851EB9, %1158 ], [ 0x3FF1C28F5C28F5C2, %1110 ], [ 0x3FF1C28F5C28F5C2, %1113 ]
  %1162 = phi ptr [ %1123, %1122 ], [ %1129, %1128 ], [ %1135, %1134 ], [ %1141, %1140 ], [ %1147, %1146 ], [ %1144, %1143 ], [ %1138, %1137 ], [ %1132, %1131 ], [ %1126, %1125 ], [ %1107, %1121 ], [ %1107, %1106 ], [ %1107, %1158 ], [ %1107, %1110 ], [ %1107, %1113 ]
  %1163 = load ptr, ptr %363, align 8, !tbaa !82
  %1164 = getelementptr inbounds double, ptr %1163, i64 %1102
  store double %1160, ptr %1164, align 8, !tbaa !100
  %1165 = getelementptr inbounds double, ptr %1162, i64 %1102
  %1166 = load double, ptr %1165, align 8, !tbaa !100
  %1167 = fmul double %1166, %1161
  %1168 = load double, ptr %1095, align 8, !tbaa !127
  %1169 = fcmp ogt double %1167, %1168
  %1170 = select i1 %1169, double %1167, double %1168
  store double %1170, ptr %1095, align 8, !tbaa !127
  %1171 = add nuw nsw i64 %1102, 1
  %1172 = icmp eq i64 %1171, %1100
  br i1 %1172, label %1173, label %1101, !llvm.loop !131

1173:                                             ; preds = %1159, %1075, %1094, %1067
  call fastcc void @genclose(ptr noundef %12) #15
  %1174 = load i32, ptr %75, align 4, !tbaa !15
  %1175 = sext i32 %1174 to i64
  %1176 = shl nsw i64 %1175, 3
  %1177 = call fastcc ptr @get(i64 noundef %1176) #15
  %1178 = load i32, ptr %75, align 4, !tbaa !15
  %1179 = icmp sgt i32 %1178, 0
  br i1 %1179, label %1189, label %1180

1180:                                             ; preds = %1231, %1173
  %1181 = load i32, ptr %71, align 8, !tbaa !10
  %1182 = getelementptr double, ptr %1177, i64 -1
  %1183 = icmp sgt i32 %1181, 0
  br i1 %1183, label %1185, label %1184

1184:                                             ; preds = %1180
  call void @free(ptr noundef %1177) #14
  br label %1249

1185:                                             ; preds = %1180
  %1186 = load ptr, ptr %102, align 8, !tbaa !21
  %1187 = load ptr, ptr %373, align 8, !tbaa !84
  %1188 = zext nneg i32 %1181 to i64
  br label %1236

1189:                                             ; preds = %1173, %1231
  %1190 = phi i32 [ %1232, %1231 ], [ %1178, %1173 ]
  %1191 = phi i64 [ %1233, %1231 ], [ 0, %1173 ]
  %1192 = load ptr, ptr %112, align 8, !tbaa !23
  %1193 = add i32 %1190, 1
  %1194 = trunc i64 %1191 to i32
  %1195 = mul i32 %1193, %1194
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds i32, ptr %1192, i64 %1196
  %1198 = load i32, ptr %1197, align 4, !tbaa !91
  %1199 = add nsw i32 %1198, -1
  %1200 = load ptr, ptr %174, align 8, !tbaa !39
  %1201 = sext i32 %1199 to i64
  %1202 = getelementptr inbounds double, ptr %1200, i64 %1201
  %1203 = load double, ptr %1202, align 8, !tbaa !100
  %1204 = fcmp oeq double %1203, 0.000000e+00
  br i1 %1204, label %1210, label %1205

1205:                                             ; preds = %1189
  %1206 = load ptr, ptr %179, align 8, !tbaa !40
  %1207 = getelementptr inbounds double, ptr %1206, i64 %1201
  %1208 = load double, ptr %1207, align 8, !tbaa !100
  %1209 = fcmp oeq double %1208, 0.000000e+00
  br i1 %1209, label %1210, label %1212

1210:                                             ; preds = %1205, %1189
  %1211 = getelementptr inbounds double, ptr %1177, i64 %1191
  store double 0.000000e+00, ptr %1211, align 8, !tbaa !100
  br label %1231

1212:                                             ; preds = %1205
  %1213 = fdiv double %1203, %1208
  %1214 = call double @sqrt(double noundef %1213) #14
  %1215 = fmul double %1214, 0x403F5D59DAC23037
  %1216 = load ptr, ptr %174, align 8, !tbaa !39
  %1217 = getelementptr inbounds double, ptr %1216, i64 %1201
  %1218 = load double, ptr %1217, align 8, !tbaa !100
  %1219 = fdiv double 1.550000e-01, %1218
  %1220 = call double @sqrt(double noundef %1219) #14
  %1221 = fmul double %1220, 5.000000e-01
  %1222 = load ptr, ptr %179, align 8, !tbaa !40
  %1223 = getelementptr inbounds double, ptr %1222, i64 %1201
  %1224 = load double, ptr %1223, align 8, !tbaa !100
  %1225 = fmul double %1221, %1224
  %1226 = fmul double %1225, 0xC030CD80B9EB6B39
  %1227 = fmul double %1215, %1226
  %1228 = fdiv double %1227, 3.000000e+00
  %1229 = getelementptr inbounds double, ptr %1177, i64 %1191
  store double %1228, ptr %1229, align 8, !tbaa !100
  %1230 = load i32, ptr %75, align 4, !tbaa !15
  br label %1231

1231:                                             ; preds = %1210, %1212
  %1232 = phi i32 [ %1190, %1210 ], [ %1230, %1212 ]
  %1233 = add nuw nsw i64 %1191, 1
  %1234 = sext i32 %1232 to i64
  %1235 = icmp slt i64 %1233, %1234
  br i1 %1235, label %1189, label %1180, !llvm.loop !132

1236:                                             ; preds = %1185, %1236
  %1237 = phi i64 [ 0, %1185 ], [ %1244, %1236 ]
  %1238 = getelementptr inbounds i32, ptr %1186, i64 %1237
  %1239 = load i32, ptr %1238, align 4, !tbaa !91
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr double, ptr %1182, i64 %1240
  %1242 = load double, ptr %1241, align 8, !tbaa !100
  %1243 = getelementptr inbounds double, ptr %1187, i64 %1237
  store double %1242, ptr %1243, align 8, !tbaa !100
  %1244 = add nuw nsw i64 %1237, 1
  %1245 = icmp eq i64 %1244, %1188
  br i1 %1245, label %1246, label %1236, !llvm.loop !133

1246:                                             ; preds = %1236
  call void @free(ptr noundef nonnull %1177) #14
  br i1 %1183, label %1247, label %1249

1247:                                             ; preds = %1246
  %1248 = load ptr, ptr %349, align 8, !tbaa !80
  br label %1255

1249:                                             ; preds = %1255, %1184, %1246
  %1250 = load i32, ptr %254, align 8, !tbaa !59
  %1251 = icmp sgt i32 %1250, 0
  br i1 %1251, label %1252, label %1262

1252:                                             ; preds = %1249
  %1253 = load ptr, ptr %269, align 8, !tbaa !62
  %1254 = load ptr, ptr %274, align 8, !tbaa !63
  br label %1269

1255:                                             ; preds = %1247, %1255
  %1256 = phi i64 [ 0, %1247 ], [ %1258, %1255 ]
  %1257 = getelementptr inbounds i32, ptr %1248, i64 %1256
  store i32 0, ptr %1257, align 4, !tbaa !91
  %1258 = add nuw nsw i64 %1256, 1
  %1259 = load i32, ptr %71, align 8, !tbaa !10
  %1260 = sext i32 %1259 to i64
  %1261 = icmp slt i64 %1258, %1260
  br i1 %1261, label %1255, label %1249, !llvm.loop !134

1262:                                             ; preds = %1297, %1249
  %1263 = getelementptr inbounds %struct.parm, ptr %22, i64 0, i32 11
  %1264 = load i32, ptr %1263, align 4, !tbaa !135
  %1265 = icmp sgt i32 %1264, 0
  br i1 %1265, label %1266, label %1335

1266:                                             ; preds = %1262
  %1267 = load ptr, ptr %295, align 8, !tbaa !68
  %1268 = load ptr, ptr %300, align 8, !tbaa !69
  br label %1302

1269:                                             ; preds = %1252, %1297
  %1270 = phi i32 [ %1250, %1252 ], [ %1298, %1297 ]
  %1271 = phi i64 [ 0, %1252 ], [ %1299, %1297 ]
  %1272 = getelementptr inbounds i32, ptr %1253, i64 %1271
  %1273 = load i32, ptr %1272, align 4, !tbaa !91
  %1274 = getelementptr inbounds i32, ptr %1254, i64 %1271
  %1275 = load i32, ptr %1274, align 4, !tbaa !91
  %1276 = icmp sgt i32 %1273, -3
  %1277 = icmp sgt i32 %1275, -3
  %1278 = select i1 %1276, i1 %1277, i1 false
  br i1 %1278, label %1279, label %1297

1279:                                             ; preds = %1269
  %1280 = sdiv i32 %1275, 3
  %1281 = load ptr, ptr %259, align 8, !tbaa !60
  %1282 = getelementptr inbounds i32, ptr %1281, i64 %1271
  %1283 = load i32, ptr %1282, align 4, !tbaa !91
  %1284 = sdiv i32 %1283, 3
  %1285 = call i32 @llvm.smin.i32(i32 %1284, i32 %1280)
  %1286 = call i32 @llvm.smax.i32(i32 %1284, i32 %1280)
  %1287 = mul nsw i32 %1285, 12
  %1288 = load ptr, ptr %349, align 8, !tbaa !80
  %1289 = sext i32 %1285 to i64
  %1290 = getelementptr inbounds i32, ptr %1288, i64 %1289
  %1291 = load i32, ptr %1290, align 4, !tbaa !91
  %1292 = add nsw i32 %1291, 1
  store i32 %1292, ptr %1290, align 4, !tbaa !91
  %1293 = add nsw i32 %1287, %1291
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds i32, ptr %358, i64 %1294
  store i32 %1286, ptr %1295, align 4, !tbaa !91
  %1296 = load i32, ptr %254, align 8, !tbaa !59
  br label %1297

1297:                                             ; preds = %1269, %1279
  %1298 = phi i32 [ %1270, %1269 ], [ %1296, %1279 ]
  %1299 = add nuw nsw i64 %1271, 1
  %1300 = sext i32 %1298 to i64
  %1301 = icmp slt i64 %1299, %1300
  br i1 %1301, label %1269, label %1262, !llvm.loop !136

1302:                                             ; preds = %1266, %1330
  %1303 = phi i32 [ %1264, %1266 ], [ %1331, %1330 ]
  %1304 = phi i64 [ 0, %1266 ], [ %1332, %1330 ]
  %1305 = getelementptr inbounds i32, ptr %1267, i64 %1304
  %1306 = load i32, ptr %1305, align 4, !tbaa !91
  %1307 = getelementptr inbounds i32, ptr %1268, i64 %1304
  %1308 = load i32, ptr %1307, align 4, !tbaa !91
  %1309 = icmp sgt i32 %1306, -3
  %1310 = icmp sgt i32 %1308, -3
  %1311 = select i1 %1309, i1 %1310, i1 false
  br i1 %1311, label %1312, label %1330

1312:                                             ; preds = %1302
  %1313 = sdiv i32 %1308, 3
  %1314 = load ptr, ptr %285, align 8, !tbaa !66
  %1315 = getelementptr inbounds i32, ptr %1314, i64 %1304
  %1316 = load i32, ptr %1315, align 4, !tbaa !91
  %1317 = sdiv i32 %1316, 3
  %1318 = call i32 @llvm.smin.i32(i32 %1317, i32 %1313)
  %1319 = call i32 @llvm.smax.i32(i32 %1317, i32 %1313)
  %1320 = mul nsw i32 %1318, 12
  %1321 = load ptr, ptr %349, align 8, !tbaa !80
  %1322 = sext i32 %1318 to i64
  %1323 = getelementptr inbounds i32, ptr %1321, i64 %1322
  %1324 = load i32, ptr %1323, align 4, !tbaa !91
  %1325 = add nsw i32 %1324, 1
  store i32 %1325, ptr %1323, align 4, !tbaa !91
  %1326 = add nsw i32 %1320, %1324
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds i32, ptr %358, i64 %1327
  store i32 %1319, ptr %1328, align 4, !tbaa !91
  %1329 = load i32, ptr %1263, align 4, !tbaa !135
  br label %1330

1330:                                             ; preds = %1302, %1312
  %1331 = phi i32 [ %1303, %1302 ], [ %1329, %1312 ]
  %1332 = add nuw nsw i64 %1304, 1
  %1333 = sext i32 %1331 to i64
  %1334 = icmp slt i64 %1332, %1333
  br i1 %1334, label %1302, label %1335, !llvm.loop !137

1335:                                             ; preds = %1330, %1262
  store i32 0, ptr %3, align 4, !tbaa !91
  %1336 = load i32, ptr %71, align 8, !tbaa !10
  %1337 = icmp sgt i32 %1336, 1
  br i1 %1337, label %1338, label %1371

1338:                                             ; preds = %1335
  %1339 = load ptr, ptr %349, align 8, !tbaa !80
  br label %1340

1340:                                             ; preds = %1338, %1365
  %1341 = phi i32 [ %1336, %1338 ], [ %1366, %1365 ]
  %1342 = phi i64 [ 0, %1338 ], [ %1367, %1365 ]
  %1343 = getelementptr inbounds i32, ptr %1339, i64 %1342
  %1344 = load i32, ptr %1343, align 4, !tbaa !91
  %1345 = icmp sgt i32 %1344, 0
  br i1 %1345, label %1346, label %1365

1346:                                             ; preds = %1340
  %1347 = load ptr, ptr %354, align 8, !tbaa !81
  %1348 = mul i64 %1342, 12
  %1349 = and i64 %1348, 4294967292
  %1350 = getelementptr i32, ptr %358, i64 %1349
  br label %1351

1351:                                             ; preds = %1346, %1351
  %1352 = phi i64 [ 0, %1346 ], [ %1359, %1351 ]
  %1353 = getelementptr i32, ptr %1350, i64 %1352
  %1354 = load i32, ptr %1353, align 4, !tbaa !91
  %1355 = load i32, ptr %3, align 4, !tbaa !91
  %1356 = add nsw i32 %1355, 1
  store i32 %1356, ptr %3, align 4, !tbaa !91
  %1357 = sext i32 %1355 to i64
  %1358 = getelementptr inbounds i32, ptr %1347, i64 %1357
  store i32 %1354, ptr %1358, align 4, !tbaa !91
  %1359 = add nuw nsw i64 %1352, 1
  %1360 = load i32, ptr %1343, align 4, !tbaa !91
  %1361 = sext i32 %1360 to i64
  %1362 = icmp slt i64 %1359, %1361
  br i1 %1362, label %1351, label %1363, !llvm.loop !138

1363:                                             ; preds = %1351
  %1364 = load i32, ptr %71, align 8, !tbaa !10
  br label %1365

1365:                                             ; preds = %1363, %1340
  %1366 = phi i32 [ %1364, %1363 ], [ %1341, %1340 ]
  %1367 = add nuw nsw i64 %1342, 1
  %1368 = add nsw i32 %1366, -1
  %1369 = sext i32 %1368 to i64
  %1370 = icmp slt i64 %1367, %1369
  br i1 %1370, label %1340, label %1371, !llvm.loop !139

1371:                                             ; preds = %1365, %1335
  call void @free(ptr noundef %358) #14
  %1372 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  store ptr %22, ptr %1372, align 8, !tbaa !140
  %1373 = call ptr (ptr, ptr, ...) @NAB_mnext(ptr noundef %0, ptr noundef null) #14
  %1374 = icmp eq ptr %1373, null
  br i1 %1374, label %1390, label %1375

1375:                                             ; preds = %1371, %1375
  %1376 = phi i64 [ %1387, %1375 ], [ 0, %1371 ]
  %1377 = phi ptr [ %1388, %1375 ], [ %1373, %1371 ]
  %1378 = load ptr, ptr %92, align 8, !tbaa !19
  %1379 = getelementptr inbounds double, ptr %1378, i64 %1376
  %1380 = load double, ptr %1379, align 8, !tbaa !100
  %1381 = fdiv double %1380, 1.822230e+01
  %1382 = getelementptr inbounds %struct.atom_t, ptr %1377, i64 0, i32 6
  store double %1381, ptr %1382, align 8, !tbaa !142
  %1383 = load ptr, ptr %363, align 8, !tbaa !82
  %1384 = getelementptr inbounds double, ptr %1383, i64 %1376
  %1385 = load double, ptr %1384, align 8, !tbaa !100
  %1386 = getelementptr inbounds %struct.atom_t, ptr %1377, i64 0, i32 7
  store double %1385, ptr %1386, align 8, !tbaa !144
  %1387 = add nuw i64 %1376, 1
  %1388 = call ptr (ptr, ptr, ...) @NAB_mnext(ptr noundef %0, ptr noundef nonnull %1377) #14
  %1389 = icmp eq ptr %1388, null
  br i1 %1389, label %1390, label %1375, !llvm.loop !145

1390:                                             ; preds = %1375, %1371
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noalias ptr @genopen(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #16
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #14
  %4 = call i32 @get_mytaskid() #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.60) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @perror(ptr noundef nonnull %2) #17
  br label %10

10:                                               ; preds = %6, %9, %1
  %11 = phi i32 [ -1, %9 ], [ 0, %6 ], [ 0, %1 ]
  %12 = phi ptr [ null, %9 ], [ %7, %6 ], [ null, %1 ]
  call void @reducerror(i32 noundef %11) #14
  %13 = call i32 @get_mytaskid() #14
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr %12, ptr null
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #16
  ret ptr %15
}

; Function Attrs: optsize
declare void @reducerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noalias noundef ptr @get(i64 noundef %0) unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call noalias ptr @malloc(i64 noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call i32 @get_mytaskid() #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load ptr, ptr @nabout, align 8, !tbaa !6
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.61, i64 noundef %0) #15
  %12 = load ptr, ptr @nabout, align 8, !tbaa !6
  %13 = tail call i32 @fflush(ptr noundef %12) #15
  tail call void @perror(ptr noundef nonnull @.str.62) #17
  br label %14

14:                                               ; preds = %9, %6
  tail call void @reducerror(i32 noundef -1) #14
  br label %15

15:                                               ; preds = %3, %14, %1
  %16 = phi ptr [ null, %1 ], [ null, %14 ], [ %4, %3 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @preadln(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @get_mytaskid() #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3, %23
  %7 = phi i64 [ %25, %23 ], [ 0, %3 ]
  %8 = phi i32 [ %24, %23 ], [ 0, %3 ]
  %9 = tail call i32 @getc(ptr noundef %0) #15
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr @nabout, align 8, !tbaa !6
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.63, ptr noundef %1) #15
  br label %23

14:                                               ; preds = %6
  %15 = trunc i32 %9 to i8
  %16 = getelementptr inbounds i8, ptr %2, i64 %7
  store i8 %15, ptr %16, align 1, !tbaa !129
  %17 = and i32 %9, 255
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %2, i64 %7
  store i8 0, ptr %20, align 1, !tbaa !129
  %21 = and i64 %7, 4294967295
  %22 = icmp eq i64 %21, 81
  br label %27

23:                                               ; preds = %11, %14
  %24 = phi i32 [ -1, %11 ], [ %8, %14 ]
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, 81
  br i1 %26, label %27, label %6, !llvm.loop !146

27:                                               ; preds = %23, %19, %3
  %28 = phi i1 [ %22, %19 ], [ false, %3 ], [ true, %23 ]
  %29 = phi i32 [ %8, %19 ], [ 0, %3 ], [ %24, %23 ]
  tail call void @reducerror(i32 noundef %29) #14
  %30 = tail call i32 @get_mytaskid() #14
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds i8, ptr %2, i64 81
  %35 = load i8, ptr %34, align 1, !tbaa !129
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @nabout, align 8, !tbaa !6
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.64, ptr noundef %1, ptr noundef nonnull %2) #15
  br label %40

40:                                               ; preds = %33, %37, %27
  %41 = phi i32 [ -1, %37 ], [ 0, %33 ], [ 0, %27 ]
  tail call void @reducerror(i32 noundef %41) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pfind(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [81 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %4) #16
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  call fastcc void @preadln(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #15
  %7 = getelementptr inbounds i8, ptr %4, i64 6
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20
  %9 = call i32 @strncmp(ptr noundef nonnull %7, ptr noundef %2, i64 noundef %8) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = call i32 @get_mytaskid() #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @rewind(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %16
  call fastcc void @preadln(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #15
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20
  %18 = call i32 @strncmp(ptr noundef nonnull %7, ptr noundef %2, i64 noundef %17) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %6
  call fastcc void @preadln(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #15
  br label %21

21:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skipeoln(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @get_mytaskid() #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1, %4
  %5 = tail call i32 @getc(ptr noundef %0) #15
  switch i32 %5, label %4 [
    i32 10, label %9
    i32 -1, label %6
  ]

6:                                                ; preds = %4
  %7 = load ptr, ptr @nabout, align 8, !tbaa !6
  %8 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 28, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %4, %6, %1
  %10 = phi i32 [ -1, %6 ], [ 0, %1 ], [ 0, %4 ]
  tail call void @reducerror(i32 noundef %10) #14
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @genclose(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @get_mytaskid() #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef %0) #15
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @perror(ptr noundef nonnull @.str.66) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @NAB_mnext(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FortranFormat(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  store i32 %0, ptr @SiPerLine, align 4, !tbaa !91
  %3 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @SsFormat, ptr noundef nonnull dereferenceable(1) %1) #14
  store i32 0, ptr @SiOnLine, align 4, !tbaa !91
  store i1 true, ptr @SbWroteNothing, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @FortranWriteInt(i32 noundef %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @SsFormat, i32 noundef %0) #15
  %4 = load i32, ptr @SiOnLine, align 4, !tbaa !91
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @SiOnLine, align 4, !tbaa !91
  store i1 false, ptr @SbWroteNothing, align 4
  %6 = load i32, ptr @SiPerLine, align 4, !tbaa !91
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %10 = tail call i32 @fputc(i32 10, ptr %9)
  store i32 0, ptr @SiOnLine, align 4, !tbaa !91
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @FortranWriteDouble(double noundef %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @SsFormat, double noundef %0) #15
  %4 = load i32, ptr @SiOnLine, align 4, !tbaa !91
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @SiOnLine, align 4, !tbaa !91
  store i1 false, ptr @SbWroteNothing, align 4
  %6 = load i32, ptr @SiPerLine, align 4, !tbaa !91
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %10 = tail call i32 @fputc(i32 10, ptr %9)
  store i32 0, ptr @SiOnLine, align 4, !tbaa !91
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @FortranWriteString(ptr noundef %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @SsFormat, ptr noundef %0) #15
  %4 = load i32, ptr @SiOnLine, align 4, !tbaa !91
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @SiOnLine, align 4, !tbaa !91
  store i1 false, ptr @SbWroteNothing, align 4
  %6 = load i32, ptr @SiPerLine, align 4, !tbaa !91
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %10 = tail call i32 @fputc(i32 10, ptr %9)
  store i32 0, ptr @SiOnLine, align 4, !tbaa !91
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @FortranEndLine() local_unnamed_addr #11 {
  %1 = load i1, ptr @SbWroteNothing, align 4
  %2 = load i32, ptr @SiOnLine, align 4
  %3 = icmp ne i32 %2, 0
  %4 = select i1 %1, i1 true, i1 %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  br label %8

8:                                                ; preds = %0, %5
  store i1 true, ptr @SbWroteNothing, align 4
  store i32 0, ptr @SiOnLine, align 4, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @writeparm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.molecule_t, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call i32 @get_mytaskid() #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr @stderr, align 8, !tbaa !6
  %12 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 35, i64 1, ptr %11) #21
  br label %13

13:                                               ; preds = %10, %7
  tail call void @reducerror(i32 noundef -1) #14
  br label %14

14:                                               ; preds = %13, %2
  %15 = tail call i32 @get_mytaskid() #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %631

17:                                               ; preds = %14
  %18 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.69) #15
  store ptr %18, ptr @SfFile, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @perror(ptr noundef %1) #17
  br label %631

21:                                               ; preds = %17
  tail call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  tail call void @FortranWriteString(ptr noundef nonnull @.str.71) #15
  tail call void @FortranWriteString(ptr noundef nonnull @.str.72) #15
  tail call void @FortranWriteString(ptr noundef %5) #15
  tail call void @FortranWriteString(ptr noundef nonnull @.str.73) #15
  tail call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  tail call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %22 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !10
  tail call void @FortranWriteInt(i32 noundef %23) #15
  %24 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !15
  tail call void @FortranWriteInt(i32 noundef %25) #15
  %26 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !41
  tail call void @FortranWriteInt(i32 noundef %27) #15
  %28 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !147
  tail call void @FortranWriteInt(i32 noundef %29) #15
  %30 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !49
  tail call void @FortranWriteInt(i32 noundef %31) #15
  %32 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !148
  tail call void @FortranWriteInt(i32 noundef %33) #15
  %34 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !59
  tail call void @FortranWriteInt(i32 noundef %35) #15
  %36 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !135
  tail call void @FortranWriteInt(i32 noundef %37) #15
  %38 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !149
  tail call void @FortranWriteInt(i32 noundef %39) #15
  %40 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !150
  tail call void @FortranWriteInt(i32 noundef %41) #15
  %42 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 14
  %43 = load i32, ptr %42, align 8, !tbaa !71
  tail call void @FortranWriteInt(i32 noundef %43) #15
  %44 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 15
  %45 = load i32, ptr %44, align 4, !tbaa !24
  tail call void @FortranWriteInt(i32 noundef %45) #15
  %46 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 16
  %47 = load i32, ptr %46, align 8, !tbaa !45
  tail call void @FortranWriteInt(i32 noundef %47) #15
  %48 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !54
  tail call void @FortranWriteInt(i32 noundef %49) #15
  %50 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 18
  %51 = load i32, ptr %50, align 8, !tbaa !65
  tail call void @FortranWriteInt(i32 noundef %51) #15
  %52 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 19
  %53 = load i32, ptr %52, align 4, !tbaa !27
  tail call void @FortranWriteInt(i32 noundef %53) #15
  %54 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 20
  %55 = load i32, ptr %54, align 8, !tbaa !30
  tail call void @FortranWriteInt(i32 noundef %55) #15
  %56 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 21
  %57 = load i32, ptr %56, align 4, !tbaa !33
  tail call void @FortranWriteInt(i32 noundef %57) #15
  %58 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 22
  %59 = load i32, ptr %58, align 8, !tbaa !37
  tail call void @FortranWriteInt(i32 noundef %59) #15
  %60 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 23
  %61 = load i32, ptr %60, align 4, !tbaa !73
  tail call void @FortranWriteInt(i32 noundef %61) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  tail call void @FortranWriteInt(i32 noundef 0) #15
  %62 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !121
  tail call void @FortranWriteInt(i32 noundef %63) #15
  %64 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !151
  tail call void @FortranWriteInt(i32 noundef %65) #15
  %66 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !124
  tail call void @FortranWriteInt(i32 noundef %67) #15
  %68 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 32
  %69 = load i32, ptr %68, align 8, !tbaa !152
  tail call void @FortranWriteInt(i32 noundef %69) #15
  tail call void @FortranEndLine() #15
  tail call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  tail call void @FortranWriteString(ptr noundef nonnull @.str.76) #15
  tail call void @FortranWriteString(ptr noundef nonnull @.str.72) #15
  tail call void @FortranFormat(i32 noundef 20, ptr noundef nonnull @.str.77) #15
  %70 = load i32, ptr %22, align 8, !tbaa !10
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %21
  %73 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 33
  %74 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 4
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ 0, %72 ], [ %81, %75 ]
  %77 = load ptr, ptr %73, align 8, !tbaa !18
  %78 = shl nsw i64 %76, 2
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %79, i64 noundef 4) #14
  store i8 0, ptr %74, align 1, !tbaa !129
  call void @FortranWriteString(ptr noundef nonnull %3) #15
  %81 = add nuw nsw i64 %76, 1
  %82 = load i32, ptr %22, align 8, !tbaa !10
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %75, label %85, !llvm.loop !153

85:                                               ; preds = %75, %21
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.78) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %86 = load i32, ptr %22, align 8, !tbaa !10
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 37
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ 0, %88 ], [ %95, %90 ]
  %92 = load ptr, ptr %89, align 8, !tbaa !19
  %93 = getelementptr inbounds double, ptr %92, i64 %91
  %94 = load double, ptr %93, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %94) #15
  %95 = add nuw nsw i64 %91, 1
  %96 = load i32, ptr %22, align 8, !tbaa !10
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %90, label %99, !llvm.loop !154

99:                                               ; preds = %90, %85
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.81) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %100 = load i32, ptr %22, align 8, !tbaa !10
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 38
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi i64 [ 0, %102 ], [ %109, %104 ]
  %106 = load ptr, ptr %103, align 8, !tbaa !20
  %107 = getelementptr inbounds double, ptr %106, i64 %105
  %108 = load double, ptr %107, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %108) #15
  %109 = add nuw nsw i64 %105, 1
  %110 = load i32, ptr %22, align 8, !tbaa !10
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %104, label %113, !llvm.loop !155

113:                                              ; preds = %104, %99
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.82) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %114 = load i32, ptr %22, align 8, !tbaa !10
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 59
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi i64 [ 0, %116 ], [ %123, %118 ]
  %120 = load ptr, ptr %117, align 8, !tbaa !21
  %121 = getelementptr inbounds i32, ptr %120, i64 %119
  %122 = load i32, ptr %121, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %122) #15
  %123 = add nuw nsw i64 %119, 1
  %124 = load i32, ptr %22, align 8, !tbaa !10
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %123, %125
  br i1 %126, label %118, label %127, !llvm.loop !156

127:                                              ; preds = %118, %113
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.83) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %128 = load i32, ptr %22, align 8, !tbaa !10
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 60
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i64 [ 0, %130 ], [ %137, %132 ]
  %134 = load ptr, ptr %131, align 8, !tbaa !22
  %135 = getelementptr inbounds i32, ptr %134, i64 %133
  %136 = load i32, ptr %135, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %136) #15
  %137 = add nuw nsw i64 %133, 1
  %138 = load i32, ptr %22, align 8, !tbaa !10
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %132, label %141, !llvm.loop !157

141:                                              ; preds = %132, %127
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.84) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %142 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 25
  %143 = load i32, ptr %142, align 4, !tbaa !16
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 61
  br label %147

147:                                              ; preds = %145, %147
  %148 = phi i64 [ 0, %145 ], [ %152, %147 ]
  %149 = load ptr, ptr %146, align 8, !tbaa !23
  %150 = getelementptr inbounds i32, ptr %149, i64 %148
  %151 = load i32, ptr %150, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %151) #15
  %152 = add nuw nsw i64 %148, 1
  %153 = load i32, ptr %142, align 4, !tbaa !16
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %147, label %156, !llvm.loop !158

156:                                              ; preds = %147, %141
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.85) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.72) #15
  call void @FortranFormat(i32 noundef 20, ptr noundef nonnull @.str.77) #15
  %157 = load i32, ptr %44, align 4, !tbaa !24
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 34
  %161 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 3
  %162 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 4
  br label %163

163:                                              ; preds = %159, %163
  %164 = phi i64 [ 0, %159 ], [ %169, %163 ]
  %165 = load ptr, ptr %160, align 8, !tbaa !25
  %166 = shl nsw i64 %164, 2
  %167 = getelementptr inbounds i8, ptr %165, i64 %166
  %168 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %167, i64 noundef 3) #14
  store i8 32, ptr %161, align 1, !tbaa !129
  store i8 0, ptr %162, align 1, !tbaa !129
  call void @FortranWriteString(ptr noundef nonnull %3) #15
  %169 = add nuw nsw i64 %164, 1
  %170 = load i32, ptr %44, align 4, !tbaa !24
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %163, label %173, !llvm.loop !159

173:                                              ; preds = %163, %156
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.86) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %174 = load i32, ptr %44, align 4, !tbaa !24
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 62
  br label %178

178:                                              ; preds = %176, %178
  %179 = phi i64 [ 0, %176 ], [ %183, %178 ]
  %180 = load ptr, ptr %177, align 8, !tbaa !26
  %181 = getelementptr inbounds i32, ptr %180, i64 %179
  %182 = load i32, ptr %181, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %182) #15
  %183 = add nuw nsw i64 %179, 1
  %184 = load i32, ptr %44, align 4, !tbaa !24
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %178, label %187, !llvm.loop !160

187:                                              ; preds = %178, %173
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.87) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %188 = load i32, ptr %52, align 4, !tbaa !27
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 39
  br label %192

192:                                              ; preds = %190, %192
  %193 = phi i64 [ 0, %190 ], [ %197, %192 ]
  %194 = load ptr, ptr %191, align 8, !tbaa !28
  %195 = getelementptr inbounds double, ptr %194, i64 %193
  %196 = load double, ptr %195, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %196) #15
  %197 = add nuw nsw i64 %193, 1
  %198 = load i32, ptr %52, align 4, !tbaa !27
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %197, %199
  br i1 %200, label %192, label %201, !llvm.loop !161

201:                                              ; preds = %192, %187
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.88) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %202 = load i32, ptr %52, align 4, !tbaa !27
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 40
  br label %206

206:                                              ; preds = %204, %206
  %207 = phi i64 [ 0, %204 ], [ %211, %206 ]
  %208 = load ptr, ptr %205, align 8, !tbaa !29
  %209 = getelementptr inbounds double, ptr %208, i64 %207
  %210 = load double, ptr %209, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %210) #15
  %211 = add nuw nsw i64 %207, 1
  %212 = load i32, ptr %52, align 4, !tbaa !27
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %211, %213
  br i1 %214, label %206, label %215, !llvm.loop !162

215:                                              ; preds = %206, %201
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.89) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %216 = load i32, ptr %54, align 8, !tbaa !30
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 41
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi i64 [ 0, %218 ], [ %225, %220 ]
  %222 = load ptr, ptr %219, align 8, !tbaa !31
  %223 = getelementptr inbounds double, ptr %222, i64 %221
  %224 = load double, ptr %223, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %224) #15
  %225 = add nuw nsw i64 %221, 1
  %226 = load i32, ptr %54, align 8, !tbaa !30
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %225, %227
  br i1 %228, label %220, label %229, !llvm.loop !163

229:                                              ; preds = %220, %215
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.90) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %230 = load i32, ptr %54, align 8, !tbaa !30
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 42
  br label %234

234:                                              ; preds = %232, %234
  %235 = phi i64 [ 0, %232 ], [ %239, %234 ]
  %236 = load ptr, ptr %233, align 8, !tbaa !32
  %237 = getelementptr inbounds double, ptr %236, i64 %235
  %238 = load double, ptr %237, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %238) #15
  %239 = add nuw nsw i64 %235, 1
  %240 = load i32, ptr %54, align 8, !tbaa !30
  %241 = sext i32 %240 to i64
  %242 = icmp slt i64 %239, %241
  br i1 %242, label %234, label %243, !llvm.loop !164

243:                                              ; preds = %234, %229
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.91) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %244 = load i32, ptr %56, align 4, !tbaa !33
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 43
  br label %248

248:                                              ; preds = %246, %248
  %249 = phi i64 [ 0, %246 ], [ %253, %248 ]
  %250 = load ptr, ptr %247, align 8, !tbaa !34
  %251 = getelementptr inbounds double, ptr %250, i64 %249
  %252 = load double, ptr %251, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %252) #15
  %253 = add nuw nsw i64 %249, 1
  %254 = load i32, ptr %56, align 4, !tbaa !33
  %255 = sext i32 %254 to i64
  %256 = icmp slt i64 %253, %255
  br i1 %256, label %248, label %257, !llvm.loop !165

257:                                              ; preds = %248, %243
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.92) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %258 = load i32, ptr %56, align 4, !tbaa !33
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 44
  br label %262

262:                                              ; preds = %260, %262
  %263 = phi i64 [ 0, %260 ], [ %267, %262 ]
  %264 = load ptr, ptr %261, align 8, !tbaa !35
  %265 = getelementptr inbounds double, ptr %264, i64 %263
  %266 = load double, ptr %265, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %266) #15
  %267 = add nuw nsw i64 %263, 1
  %268 = load i32, ptr %56, align 4, !tbaa !33
  %269 = sext i32 %268 to i64
  %270 = icmp slt i64 %267, %269
  br i1 %270, label %262, label %271, !llvm.loop !166

271:                                              ; preds = %262, %257
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.93) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %272 = load i32, ptr %56, align 4, !tbaa !33
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 45
  br label %276

276:                                              ; preds = %274, %276
  %277 = phi i64 [ 0, %274 ], [ %281, %276 ]
  %278 = load ptr, ptr %275, align 8, !tbaa !36
  %279 = getelementptr inbounds double, ptr %278, i64 %277
  %280 = load double, ptr %279, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %280) #15
  %281 = add nuw nsw i64 %277, 1
  %282 = load i32, ptr %56, align 4, !tbaa !33
  %283 = sext i32 %282 to i64
  %284 = icmp slt i64 %281, %283
  br i1 %284, label %276, label %285, !llvm.loop !167

285:                                              ; preds = %276, %271
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.94) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %286 = load i32, ptr %58, align 8, !tbaa !37
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285, %288
  %289 = phi i32 [ %290, %288 ], [ 0, %285 ]
  call void @FortranWriteDouble(double noundef 0.000000e+00) #15
  %290 = add nuw nsw i32 %289, 1
  %291 = load i32, ptr %58, align 8, !tbaa !37
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %288, label %293, !llvm.loop !168

293:                                              ; preds = %288, %285
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.95) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %294 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 26
  %295 = load i32, ptr %294, align 8, !tbaa !17
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 47
  br label %299

299:                                              ; preds = %297, %299
  %300 = phi i64 [ 0, %297 ], [ %304, %299 ]
  %301 = load ptr, ptr %298, align 8, !tbaa !39
  %302 = getelementptr inbounds double, ptr %301, i64 %300
  %303 = load double, ptr %302, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %303) #15
  %304 = add nuw nsw i64 %300, 1
  %305 = load i32, ptr %294, align 8, !tbaa !17
  %306 = sext i32 %305 to i64
  %307 = icmp slt i64 %304, %306
  br i1 %307, label %299, label %308, !llvm.loop !169

308:                                              ; preds = %299, %293
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.96) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %309 = load i32, ptr %294, align 8, !tbaa !17
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 48
  br label %313

313:                                              ; preds = %311, %313
  %314 = phi i64 [ 0, %311 ], [ %318, %313 ]
  %315 = load ptr, ptr %312, align 8, !tbaa !40
  %316 = getelementptr inbounds double, ptr %315, i64 %314
  %317 = load double, ptr %316, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %317) #15
  %318 = add nuw nsw i64 %314, 1
  %319 = load i32, ptr %294, align 8, !tbaa !17
  %320 = sext i32 %319 to i64
  %321 = icmp slt i64 %318, %320
  br i1 %321, label %313, label %322, !llvm.loop !170

322:                                              ; preds = %313, %308
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.97) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %323 = load i32, ptr %26, align 8, !tbaa !41
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %344

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 66
  %327 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 67
  %328 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 68
  br label %329

329:                                              ; preds = %325, %329
  %330 = phi i64 [ 0, %325 ], [ %340, %329 ]
  %331 = load ptr, ptr %326, align 8, !tbaa !42
  %332 = getelementptr inbounds i32, ptr %331, i64 %330
  %333 = load i32, ptr %332, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %333) #15
  %334 = load ptr, ptr %327, align 8, !tbaa !43
  %335 = getelementptr inbounds i32, ptr %334, i64 %330
  %336 = load i32, ptr %335, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %336) #15
  %337 = load ptr, ptr %328, align 8, !tbaa !44
  %338 = getelementptr inbounds i32, ptr %337, i64 %330
  %339 = load i32, ptr %338, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %339) #15
  %340 = add nuw nsw i64 %330, 1
  %341 = load i32, ptr %26, align 8, !tbaa !41
  %342 = sext i32 %341 to i64
  %343 = icmp slt i64 %340, %342
  br i1 %343, label %329, label %344, !llvm.loop !171

344:                                              ; preds = %329, %322
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.98) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %345 = load i32, ptr %46, align 8, !tbaa !45
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %366

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 69
  %349 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 70
  %350 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 71
  br label %351

351:                                              ; preds = %347, %351
  %352 = phi i64 [ 0, %347 ], [ %362, %351 ]
  %353 = load ptr, ptr %348, align 8, !tbaa !46
  %354 = getelementptr inbounds i32, ptr %353, i64 %352
  %355 = load i32, ptr %354, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %355) #15
  %356 = load ptr, ptr %349, align 8, !tbaa !47
  %357 = getelementptr inbounds i32, ptr %356, i64 %352
  %358 = load i32, ptr %357, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %358) #15
  %359 = load ptr, ptr %350, align 8, !tbaa !48
  %360 = getelementptr inbounds i32, ptr %359, i64 %352
  %361 = load i32, ptr %360, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %361) #15
  %362 = add nuw nsw i64 %352, 1
  %363 = load i32, ptr %46, align 8, !tbaa !45
  %364 = sext i32 %363 to i64
  %365 = icmp slt i64 %362, %364
  br i1 %365, label %351, label %366, !llvm.loop !172

366:                                              ; preds = %351, %344
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.99) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %367 = load i32, ptr %30, align 8, !tbaa !49
  %368 = icmp sgt i32 %367, 0
  br i1 %368, label %369, label %392

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 72
  %371 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 73
  %372 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 74
  %373 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 75
  br label %374

374:                                              ; preds = %369, %374
  %375 = phi i64 [ 0, %369 ], [ %388, %374 ]
  %376 = load ptr, ptr %370, align 8, !tbaa !50
  %377 = getelementptr inbounds i32, ptr %376, i64 %375
  %378 = load i32, ptr %377, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %378) #15
  %379 = load ptr, ptr %371, align 8, !tbaa !51
  %380 = getelementptr inbounds i32, ptr %379, i64 %375
  %381 = load i32, ptr %380, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %381) #15
  %382 = load ptr, ptr %372, align 8, !tbaa !52
  %383 = getelementptr inbounds i32, ptr %382, i64 %375
  %384 = load i32, ptr %383, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %384) #15
  %385 = load ptr, ptr %373, align 8, !tbaa !53
  %386 = getelementptr inbounds i32, ptr %385, i64 %375
  %387 = load i32, ptr %386, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %387) #15
  %388 = add nuw nsw i64 %375, 1
  %389 = load i32, ptr %30, align 8, !tbaa !49
  %390 = sext i32 %389 to i64
  %391 = icmp slt i64 %388, %390
  br i1 %391, label %374, label %392, !llvm.loop !173

392:                                              ; preds = %374, %366
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.100) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %393 = load i32, ptr %48, align 4, !tbaa !54
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %418

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 76
  %397 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 77
  %398 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 78
  %399 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 79
  br label %400

400:                                              ; preds = %395, %400
  %401 = phi i64 [ 0, %395 ], [ %414, %400 ]
  %402 = load ptr, ptr %396, align 8, !tbaa !55
  %403 = getelementptr inbounds i32, ptr %402, i64 %401
  %404 = load i32, ptr %403, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %404) #15
  %405 = load ptr, ptr %397, align 8, !tbaa !56
  %406 = getelementptr inbounds i32, ptr %405, i64 %401
  %407 = load i32, ptr %406, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %407) #15
  %408 = load ptr, ptr %398, align 8, !tbaa !57
  %409 = getelementptr inbounds i32, ptr %408, i64 %401
  %410 = load i32, ptr %409, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %410) #15
  %411 = load ptr, ptr %399, align 8, !tbaa !58
  %412 = getelementptr inbounds i32, ptr %411, i64 %401
  %413 = load i32, ptr %412, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %413) #15
  %414 = add nuw nsw i64 %401, 1
  %415 = load i32, ptr %48, align 4, !tbaa !54
  %416 = sext i32 %415 to i64
  %417 = icmp slt i64 %414, %416
  br i1 %417, label %400, label %418, !llvm.loop !174

418:                                              ; preds = %400, %392
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.101) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %419 = load i32, ptr %34, align 8, !tbaa !59
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %448

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 80
  %423 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 81
  %424 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 82
  %425 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 83
  %426 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 84
  br label %427

427:                                              ; preds = %421, %427
  %428 = phi i64 [ 0, %421 ], [ %444, %427 ]
  %429 = load ptr, ptr %422, align 8, !tbaa !60
  %430 = getelementptr inbounds i32, ptr %429, i64 %428
  %431 = load i32, ptr %430, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %431) #15
  %432 = load ptr, ptr %423, align 8, !tbaa !61
  %433 = getelementptr inbounds i32, ptr %432, i64 %428
  %434 = load i32, ptr %433, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %434) #15
  %435 = load ptr, ptr %424, align 8, !tbaa !62
  %436 = getelementptr inbounds i32, ptr %435, i64 %428
  %437 = load i32, ptr %436, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %437) #15
  %438 = load ptr, ptr %425, align 8, !tbaa !63
  %439 = getelementptr inbounds i32, ptr %438, i64 %428
  %440 = load i32, ptr %439, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %440) #15
  %441 = load ptr, ptr %426, align 8, !tbaa !64
  %442 = getelementptr inbounds i32, ptr %441, i64 %428
  %443 = load i32, ptr %442, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %443) #15
  %444 = add nuw nsw i64 %428, 1
  %445 = load i32, ptr %34, align 8, !tbaa !59
  %446 = sext i32 %445 to i64
  %447 = icmp slt i64 %444, %446
  br i1 %447, label %427, label %448, !llvm.loop !175

448:                                              ; preds = %427, %418
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.102) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %449 = load i32, ptr %50, align 8, !tbaa !65
  %450 = icmp sgt i32 %449, 0
  br i1 %450, label %451, label %478

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 85
  %453 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 86
  %454 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 87
  %455 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 88
  %456 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 89
  br label %457

457:                                              ; preds = %451, %457
  %458 = phi i64 [ 0, %451 ], [ %474, %457 ]
  %459 = load ptr, ptr %452, align 8, !tbaa !66
  %460 = getelementptr inbounds i32, ptr %459, i64 %458
  %461 = load i32, ptr %460, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %461) #15
  %462 = load ptr, ptr %453, align 8, !tbaa !67
  %463 = getelementptr inbounds i32, ptr %462, i64 %458
  %464 = load i32, ptr %463, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %464) #15
  %465 = load ptr, ptr %454, align 8, !tbaa !68
  %466 = getelementptr inbounds i32, ptr %465, i64 %458
  %467 = load i32, ptr %466, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %467) #15
  %468 = load ptr, ptr %455, align 8, !tbaa !69
  %469 = getelementptr inbounds i32, ptr %468, i64 %458
  %470 = load i32, ptr %469, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %470) #15
  %471 = load ptr, ptr %456, align 8, !tbaa !70
  %472 = getelementptr inbounds i32, ptr %471, i64 %458
  %473 = load i32, ptr %472, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %473) #15
  %474 = add nuw nsw i64 %458, 1
  %475 = load i32, ptr %50, align 8, !tbaa !65
  %476 = sext i32 %475 to i64
  %477 = icmp slt i64 %474, %476
  br i1 %477, label %457, label %478, !llvm.loop !176

478:                                              ; preds = %457, %448
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.103) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %479 = load i32, ptr %42, align 8, !tbaa !71
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %481, label %492

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 63
  br label %483

483:                                              ; preds = %481, %483
  %484 = phi i64 [ 0, %481 ], [ %488, %483 ]
  %485 = load ptr, ptr %482, align 8, !tbaa !72
  %486 = getelementptr inbounds i32, ptr %485, i64 %484
  %487 = load i32, ptr %486, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %487) #15
  %488 = add nuw nsw i64 %484, 1
  %489 = load i32, ptr %42, align 8, !tbaa !71
  %490 = sext i32 %489 to i64
  %491 = icmp slt i64 %488, %490
  br i1 %491, label %483, label %492, !llvm.loop !177

492:                                              ; preds = %483, %478
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.104) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %493 = load i32, ptr %60, align 4, !tbaa !73
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %495, label %506

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 49
  br label %497

497:                                              ; preds = %495, %497
  %498 = phi i64 [ 0, %495 ], [ %502, %497 ]
  %499 = load ptr, ptr %496, align 8, !tbaa !74
  %500 = getelementptr inbounds double, ptr %499, i64 %498
  %501 = load double, ptr %500, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %501) #15
  %502 = add nuw nsw i64 %498, 1
  %503 = load i32, ptr %60, align 4, !tbaa !73
  %504 = sext i32 %503 to i64
  %505 = icmp slt i64 %502, %504
  br i1 %505, label %497, label %506, !llvm.loop !178

506:                                              ; preds = %497, %492
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.105) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %507 = load i32, ptr %60, align 4, !tbaa !73
  %508 = icmp sgt i32 %507, 0
  br i1 %508, label %509, label %520

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 50
  br label %511

511:                                              ; preds = %509, %511
  %512 = phi i64 [ 0, %509 ], [ %516, %511 ]
  %513 = load ptr, ptr %510, align 8, !tbaa !75
  %514 = getelementptr inbounds double, ptr %513, i64 %512
  %515 = load double, ptr %514, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %515) #15
  %516 = add nuw nsw i64 %512, 1
  %517 = load i32, ptr %60, align 4, !tbaa !73
  %518 = sext i32 %517 to i64
  %519 = icmp slt i64 %516, %518
  br i1 %519, label %511, label %520, !llvm.loop !179

520:                                              ; preds = %511, %506
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.106) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %521 = load i32, ptr %60, align 4, !tbaa !73
  %522 = icmp sgt i32 %521, 0
  br i1 %522, label %523, label %528

523:                                              ; preds = %520, %523
  %524 = phi i32 [ %525, %523 ], [ 0, %520 ]
  call void @FortranWriteDouble(double noundef 0.000000e+00) #15
  %525 = add nuw nsw i32 %524, 1
  %526 = load i32, ptr %60, align 4, !tbaa !73
  %527 = icmp slt i32 %525, %526
  br i1 %527, label %523, label %528, !llvm.loop !180

528:                                              ; preds = %523, %520
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.107) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.72) #15
  call void @FortranFormat(i32 noundef 20, ptr noundef nonnull @.str.77) #15
  %529 = load i32, ptr %22, align 8, !tbaa !10
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %546

531:                                              ; preds = %528
  %532 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 35
  %533 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 3
  %534 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 2
  %535 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 4
  br label %536

536:                                              ; preds = %531, %536
  %537 = phi i64 [ 0, %531 ], [ %542, %536 ]
  %538 = load ptr, ptr %532, align 8, !tbaa !76
  %539 = shl nsw i64 %537, 2
  %540 = getelementptr inbounds i8, ptr %538, i64 %539
  %541 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %540, i64 noundef 2) #14
  store i8 32, ptr %533, align 1, !tbaa !129
  store i8 32, ptr %534, align 1, !tbaa !129
  store i8 0, ptr %535, align 1, !tbaa !129
  call void @FortranWriteString(ptr noundef nonnull %3) #15
  %542 = add nuw nsw i64 %537, 1
  %543 = load i32, ptr %22, align 8, !tbaa !10
  %544 = sext i32 %543 to i64
  %545 = icmp slt i64 %542, %544
  br i1 %545, label %536, label %546, !llvm.loop !181

546:                                              ; preds = %536, %528
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.108) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.72) #15
  call void @FortranFormat(i32 noundef 20, ptr noundef nonnull @.str.77) #15
  %547 = load i32, ptr %22, align 8, !tbaa !10
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %549, label %564

549:                                              ; preds = %546
  %550 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 36
  %551 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 3
  %552 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 2
  %553 = getelementptr inbounds [5 x i8], ptr %3, i64 0, i64 4
  br label %554

554:                                              ; preds = %549, %554
  %555 = phi i64 [ 0, %549 ], [ %560, %554 ]
  %556 = load ptr, ptr %550, align 8, !tbaa !77
  %557 = shl nsw i64 %555, 2
  %558 = getelementptr inbounds i8, ptr %556, i64 %557
  %559 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %558, i64 noundef 2) #14
  store i8 32, ptr %551, align 1, !tbaa !129
  store i8 32, ptr %552, align 1, !tbaa !129
  store i8 0, ptr %553, align 1, !tbaa !129
  call void @FortranWriteString(ptr noundef nonnull %3) #15
  %560 = add nuw nsw i64 %555, 1
  %561 = load i32, ptr %22, align 8, !tbaa !10
  %562 = sext i32 %561 to i64
  %563 = icmp slt i64 %560, %562
  br i1 %563, label %554, label %564, !llvm.loop !182

564:                                              ; preds = %554, %546
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.109) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %565 = load i32, ptr %22, align 8, !tbaa !10
  %566 = icmp sgt i32 %565, 0
  br i1 %566, label %567, label %578

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 64
  br label %569

569:                                              ; preds = %567, %569
  %570 = phi i64 [ 0, %567 ], [ %574, %569 ]
  %571 = load ptr, ptr %568, align 8, !tbaa !78
  %572 = getelementptr inbounds i32, ptr %571, i64 %570
  %573 = load i32, ptr %572, align 4, !tbaa !91
  call void @FortranWriteInt(i32 noundef %573) #15
  %574 = add nuw nsw i64 %570, 1
  %575 = load i32, ptr %22, align 8, !tbaa !10
  %576 = sext i32 %575 to i64
  %577 = icmp slt i64 %574, %576
  br i1 %577, label %569, label %578, !llvm.loop !183

578:                                              ; preds = %569, %564
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.110) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 10, ptr noundef nonnull @.str.75) #15
  %579 = load i32, ptr %22, align 8, !tbaa !10
  %580 = icmp sgt i32 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %578, %581
  %582 = phi i32 [ %583, %581 ], [ 0, %578 ]
  call void @FortranWriteInt(i32 noundef 0) #15
  %583 = add nuw nsw i32 %582, 1
  %584 = load i32, ptr %22, align 8, !tbaa !10
  %585 = icmp slt i32 %583, %584
  br i1 %585, label %581, label %586, !llvm.loop !184

586:                                              ; preds = %581, %578
  call void @FortranEndLine() #15
  %587 = load i32, ptr %66, align 4, !tbaa !124
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %600, label %589

589:                                              ; preds = %586
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.111) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.74) #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.75) #15
  %590 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 31
  %591 = load i32, ptr %590, align 4, !tbaa !185
  call void @FortranWriteInt(i32 noundef %591) #15
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.112) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 4, ptr noundef nonnull @.str.80) #15
  %592 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 54
  %593 = load double, ptr %592, align 8, !tbaa !186
  call void @FortranWriteDouble(double noundef %593) #15
  %594 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 55
  %595 = load double, ptr %594, align 8, !tbaa !187
  call void @FortranWriteDouble(double noundef %595) #15
  %596 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 56
  %597 = load double, ptr %596, align 8, !tbaa !188
  call void @FortranWriteDouble(double noundef %597) #15
  %598 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 57
  %599 = load double, ptr %598, align 8, !tbaa !189
  call void @FortranWriteDouble(double noundef %599) #15
  call void @FortranEndLine() #15
  br label %600

600:                                              ; preds = %589, %586
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.113) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %601 = load i32, ptr %22, align 8, !tbaa !10
  %602 = icmp sgt i32 %601, 0
  br i1 %602, label %603, label %614

603:                                              ; preds = %600
  %604 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 51
  br label %605

605:                                              ; preds = %603, %605
  %606 = phi i64 [ 0, %603 ], [ %610, %605 ]
  %607 = load ptr, ptr %604, align 8, !tbaa !82
  %608 = getelementptr inbounds double, ptr %607, i64 %606
  %609 = load double, ptr %608, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %609) #15
  %610 = add nuw nsw i64 %606, 1
  %611 = load i32, ptr %22, align 8, !tbaa !10
  %612 = sext i32 %611 to i64
  %613 = icmp slt i64 %610, %612
  br i1 %613, label %605, label %614, !llvm.loop !190

614:                                              ; preds = %605, %600
  call void @FortranEndLine() #15
  call void @FortranFormat(i32 noundef 1, ptr noundef nonnull @.str.70) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.114) #15
  call void @FortranWriteString(ptr noundef nonnull @.str.79) #15
  call void @FortranFormat(i32 noundef 5, ptr noundef nonnull @.str.80) #15
  %615 = load i32, ptr %22, align 8, !tbaa !10
  %616 = icmp sgt i32 %615, 0
  br i1 %616, label %617, label %628

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.parm, ptr %5, i64 0, i32 52
  br label %619

619:                                              ; preds = %617, %619
  %620 = phi i64 [ 0, %617 ], [ %624, %619 ]
  %621 = load ptr, ptr %618, align 8, !tbaa !83
  %622 = getelementptr inbounds double, ptr %621, i64 %620
  %623 = load double, ptr %622, align 8, !tbaa !100
  call void @FortranWriteDouble(double noundef %623) #15
  %624 = add nuw nsw i64 %620, 1
  %625 = load i32, ptr %22, align 8, !tbaa !10
  %626 = sext i32 %625 to i64
  %627 = icmp slt i64 %624, %626
  br i1 %627, label %619, label %628, !llvm.loop !191

628:                                              ; preds = %619, %614
  call void @FortranEndLine() #15
  %629 = load ptr, ptr @SfFile, align 8, !tbaa !6
  %630 = call i32 @fclose(ptr noundef %629) #15
  br label %631

631:                                              ; preds = %20, %628, %14
  %632 = phi i32 [ 0, %628 ], [ -1, %20 ], [ 0, %14 ]
  call void @reducerror(i32 noundef %632) #14
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copyparm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(720) ptr @malloc(i64 noundef 720) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef %0) #14
  %6 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.116, ptr noundef nonnull @e_msg) #14
  br label %164

7:                                                ; preds = %1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #14
  %9 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 1
  %11 = load <4 x i32>, ptr %9, align 4, !tbaa !91
  store <4 x i32> %11, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 5
  %14 = load <2 x i32>, ptr %12, align 4, !tbaa !91
  store <2 x i32> %14, ptr %13, align 4, !tbaa !91
  %15 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 16
  %17 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 8
  store i32 %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 10
  store i32 %21, ptr %22, align 8, !tbaa !59
  %23 = load <4 x i32>, ptr %15, align 8, !tbaa !91
  store <4 x i32> %23, ptr %16, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 20
  %25 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 20
  %26 = load <4 x i32>, ptr %24, align 8, !tbaa !91
  store <4 x i32> %26, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 24
  %28 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 24
  %29 = load <4 x i32>, ptr %27, align 8, !tbaa !91
  store <4 x i32> %29, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 28
  %31 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 28
  %32 = load <4 x i32>, ptr %30, align 8, !tbaa !91
  store <4 x i32> %32, ptr %31, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 33
  %34 = load ptr, ptr %33, align 8, !tbaa !18
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #20
  %36 = add i64 %35, 1
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %7
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef %34) #14
  %41 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.116, ptr noundef nonnull @e_msg) #14
  br label %164

42:                                               ; preds = %7
  %43 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 33
  store ptr %37, ptr %43, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 37
  %45 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 37
  %46 = load <2 x ptr>, ptr %44, align 8, !tbaa !6
  store <2 x ptr> %46, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 59
  %48 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 59
  %49 = load <2 x ptr>, ptr %47, align 8, !tbaa !6
  store <2 x ptr> %49, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 61
  %51 = load ptr, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 61
  store ptr %51, ptr %52, align 8, !tbaa !23
  %53 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 34
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #20
  %56 = add i64 %55, 1
  %57 = tail call noalias ptr @malloc(i64 noundef %56) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.118, ptr noundef %54) #14
  %61 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.116, ptr noundef nonnull @e_msg) #14
  br label %164

62:                                               ; preds = %42
  %63 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 34
  store ptr %57, ptr %63, align 8, !tbaa !25
  %64 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 62
  %65 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 62
  %66 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 39
  %67 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 39
  %68 = load <2 x ptr>, ptr %66, align 8, !tbaa !6
  store <2 x ptr> %68, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 41
  %70 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 41
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !6
  store <2 x ptr> %71, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 43
  %73 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 43
  %74 = load <2 x ptr>, ptr %72, align 8, !tbaa !6
  store <2 x ptr> %74, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 45
  %76 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 45
  %77 = load <2 x ptr>, ptr %75, align 8, !tbaa !6
  store <2 x ptr> %77, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 47
  %79 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 47
  %80 = load <2 x ptr>, ptr %78, align 8, !tbaa !6
  store <2 x ptr> %80, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 53
  %82 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 53
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !100
  store <2 x double> %83, ptr %82, align 8, !tbaa !100
  %84 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 53, i64 2
  %85 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 53, i64 2
  %86 = load <2 x double>, ptr %84, align 8, !tbaa !100
  store <2 x double> %86, ptr %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 55
  %88 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 55
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !100
  store <2 x double> %89, ptr %88, align 8, !tbaa !100
  %90 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 57
  %91 = load double, ptr %90, align 8, !tbaa !189
  %92 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 57
  store double %91, ptr %92, align 8, !tbaa !189
  %93 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 66
  %94 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 66
  %95 = load <2 x ptr>, ptr %93, align 8, !tbaa !6
  store <2 x ptr> %95, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 68
  %97 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 68
  %98 = load <2 x ptr>, ptr %96, align 8, !tbaa !6
  store <2 x ptr> %98, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 70
  %100 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 70
  %101 = load <2 x ptr>, ptr %99, align 8, !tbaa !6
  store <2 x ptr> %101, ptr %100, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 72
  %103 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 72
  %104 = load <2 x ptr>, ptr %102, align 8, !tbaa !6
  store <2 x ptr> %104, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 74
  %106 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 74
  %107 = load <2 x ptr>, ptr %105, align 8, !tbaa !6
  store <2 x ptr> %107, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 76
  %109 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 76
  %110 = load <2 x ptr>, ptr %108, align 8, !tbaa !6
  store <2 x ptr> %110, ptr %109, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 78
  %112 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 78
  %113 = load <2 x ptr>, ptr %111, align 8, !tbaa !6
  store <2 x ptr> %113, ptr %112, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 80
  %115 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 80
  %116 = load <2 x ptr>, ptr %114, align 8, !tbaa !6
  store <2 x ptr> %116, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 82
  %118 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 82
  %119 = load <2 x ptr>, ptr %117, align 8, !tbaa !6
  store <2 x ptr> %119, ptr %118, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 84
  %121 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 84
  %122 = load <2 x ptr>, ptr %120, align 8, !tbaa !6
  store <2 x ptr> %122, ptr %121, align 8, !tbaa !6
  %123 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 86
  %124 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 86
  %125 = load <2 x ptr>, ptr %123, align 8, !tbaa !6
  store <2 x ptr> %125, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 88
  %127 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 88
  %128 = load <2 x ptr>, ptr %126, align 8, !tbaa !6
  store <2 x ptr> %128, ptr %127, align 8, !tbaa !6
  %129 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 90
  %130 = load ptr, ptr %129, align 8, !tbaa !123
  %131 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 90
  store ptr %130, ptr %131, align 8, !tbaa !123
  %132 = load <2 x ptr>, ptr %64, align 8, !tbaa !6
  store <2 x ptr> %132, ptr %65, align 8, !tbaa !6
  %133 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 49
  %134 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 49
  %135 = load <2 x ptr>, ptr %133, align 8, !tbaa !6
  store <2 x ptr> %135, ptr %134, align 8, !tbaa !6
  %136 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 35
  %137 = load ptr, ptr %136, align 8, !tbaa !76
  %138 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #20
  %139 = add i64 %138, 1
  %140 = tail call noalias ptr @malloc(i64 noundef %139) #19
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %62
  %143 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.119, ptr noundef %137) #14
  %144 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.116, ptr noundef nonnull @e_msg) #14
  br label %164

145:                                              ; preds = %62
  %146 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 35
  store ptr %140, ptr %146, align 8, !tbaa !76
  %147 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 36
  %148 = load ptr, ptr %147, align 8, !tbaa !77
  %149 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %148) #20
  %150 = add i64 %149, 1
  %151 = tail call noalias ptr @malloc(i64 noundef %150) #19
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @e_msg, ptr noundef nonnull dereferenceable(1) @.str.120, ptr noundef %148) #14
  %155 = tail call i32 @rt_errormsg_s(i32 noundef 1, ptr noundef nonnull @.str.116, ptr noundef nonnull @e_msg) #14
  br label %164

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 36
  store ptr %151, ptr %157, align 8, !tbaa !77
  %158 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 64
  %159 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 64
  %160 = load <2 x ptr>, ptr %158, align 8, !tbaa !6
  store <2 x ptr> %160, ptr %159, align 8, !tbaa !6
  %161 = getelementptr inbounds %struct.parm, ptr %0, i64 0, i32 91
  %162 = getelementptr inbounds %struct.parm, ptr %2, i64 0, i32 91
  %163 = load <2 x ptr>, ptr %161, align 8, !tbaa !6
  store <2 x ptr> %163, ptr %162, align 8, !tbaa !6
  br label %164

164:                                              ; preds = %156, %153, %142, %59, %39, %4
  %165 = phi ptr [ null, %4 ], [ null, %39 ], [ null, %59 ], [ null, %142 ], [ null, %153 ], [ %2, %156 ]
  ret ptr %165
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rt_errormsg_s(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { cold optsize }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { nounwind optsize allocsize(0) }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { cold }

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
!10 = !{!11, !12, i64 96}
!11 = !{!"parm", !8, i64 0, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !8, i64 376, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488, !7, i64 496, !7, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !7, i64 712}
!12 = !{!"int", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!11, !12, i64 176}
!15 = !{!11, !12, i64 100}
!16 = !{!11, !12, i64 180}
!17 = !{!11, !12, i64 184}
!18 = !{!11, !7, i64 216}
!19 = !{!11, !7, i64 248}
!20 = !{!11, !7, i64 256}
!21 = !{!11, !7, i64 440}
!22 = !{!11, !7, i64 448}
!23 = !{!11, !7, i64 456}
!24 = !{!11, !12, i64 140}
!25 = !{!11, !7, i64 224}
!26 = !{!11, !7, i64 464}
!27 = !{!11, !12, i64 156}
!28 = !{!11, !7, i64 264}
!29 = !{!11, !7, i64 272}
!30 = !{!11, !12, i64 160}
!31 = !{!11, !7, i64 280}
!32 = !{!11, !7, i64 288}
!33 = !{!11, !12, i64 164}
!34 = !{!11, !7, i64 296}
!35 = !{!11, !7, i64 304}
!36 = !{!11, !7, i64 312}
!37 = !{!11, !12, i64 168}
!38 = !{!11, !7, i64 320}
!39 = !{!11, !7, i64 328}
!40 = !{!11, !7, i64 336}
!41 = !{!11, !12, i64 104}
!42 = !{!11, !7, i64 496}
!43 = !{!11, !7, i64 504}
!44 = !{!11, !7, i64 512}
!45 = !{!11, !12, i64 144}
!46 = !{!11, !7, i64 520}
!47 = !{!11, !7, i64 528}
!48 = !{!11, !7, i64 536}
!49 = !{!11, !12, i64 112}
!50 = !{!11, !7, i64 544}
!51 = !{!11, !7, i64 552}
!52 = !{!11, !7, i64 560}
!53 = !{!11, !7, i64 568}
!54 = !{!11, !12, i64 148}
!55 = !{!11, !7, i64 576}
!56 = !{!11, !7, i64 584}
!57 = !{!11, !7, i64 592}
!58 = !{!11, !7, i64 600}
!59 = !{!11, !12, i64 120}
!60 = !{!11, !7, i64 608}
!61 = !{!11, !7, i64 616}
!62 = !{!11, !7, i64 624}
!63 = !{!11, !7, i64 632}
!64 = !{!11, !7, i64 640}
!65 = !{!11, !12, i64 152}
!66 = !{!11, !7, i64 648}
!67 = !{!11, !7, i64 656}
!68 = !{!11, !7, i64 664}
!69 = !{!11, !7, i64 672}
!70 = !{!11, !7, i64 680}
!71 = !{!11, !12, i64 136}
!72 = !{!11, !7, i64 472}
!73 = !{!11, !12, i64 172}
!74 = !{!11, !7, i64 344}
!75 = !{!11, !7, i64 352}
!76 = !{!11, !7, i64 232}
!77 = !{!11, !7, i64 240}
!78 = !{!11, !7, i64 480}
!79 = !{!11, !7, i64 488}
!80 = !{!11, !7, i64 696}
!81 = !{!11, !7, i64 704}
!82 = !{!11, !7, i64 360}
!83 = !{!11, !7, i64 368}
!84 = !{!11, !7, i64 712}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !86}
!91 = !{!12, !12, i64 0}
!92 = distinct !{!92, !86}
!93 = distinct !{!93, !86}
!94 = distinct !{!94, !86}
!95 = distinct !{!95, !86}
!96 = distinct !{!96, !86}
!97 = distinct !{!97, !86}
!98 = distinct !{!98, !86}
!99 = distinct !{!99, !86}
!100 = !{!13, !13, i64 0}
!101 = distinct !{!101, !86}
!102 = distinct !{!102, !86}
!103 = distinct !{!103, !86}
!104 = distinct !{!104, !86}
!105 = distinct !{!105, !86}
!106 = distinct !{!106, !86}
!107 = distinct !{!107, !86}
!108 = distinct !{!108, !86}
!109 = distinct !{!109, !86}
!110 = distinct !{!110, !86}
!111 = distinct !{!111, !86}
!112 = distinct !{!112, !86}
!113 = distinct !{!113, !86}
!114 = distinct !{!114, !86}
!115 = distinct !{!115, !86}
!116 = distinct !{!116, !86}
!117 = distinct !{!117, !86}
!118 = distinct !{!118, !86}
!119 = distinct !{!119, !86}
!120 = distinct !{!120, !86}
!121 = !{!11, !12, i64 84}
!122 = !{!11, !12, i64 188}
!123 = !{!11, !7, i64 688}
!124 = !{!11, !12, i64 92}
!125 = distinct !{!125, !86}
!126 = distinct !{!126, !86}
!127 = !{!11, !13, i64 432}
!128 = distinct !{!128, !86}
!129 = !{!8, !8, i64 0}
!130 = distinct !{!130, !86}
!131 = distinct !{!131, !86}
!132 = distinct !{!132, !86}
!133 = distinct !{!133, !86}
!134 = distinct !{!134, !86}
!135 = !{!11, !12, i64 124}
!136 = distinct !{!136, !86}
!137 = distinct !{!137, !86}
!138 = distinct !{!138, !86}
!139 = distinct !{!139, !86}
!140 = !{!141, !7, i64 128}
!141 = !{!"molecule_t", !8, i64 0, !12, i64 96, !7, i64 104, !12, i64 112, !12, i64 116, !12, i64 120, !7, i64 128}
!142 = !{!143, !13, i64 64}
!143 = !{!"atom_t", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !8, i64 24, !7, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !7, i64 96, !12, i64 104, !13, i64 112, !13, i64 120, !12, i64 128, !12, i64 132, !7, i64 136, !8, i64 144, !13, i64 168}
!144 = !{!143, !13, i64 72}
!145 = distinct !{!145, !86}
!146 = distinct !{!146, !86}
!147 = !{!11, !12, i64 108}
!148 = !{!11, !12, i64 116}
!149 = !{!11, !12, i64 128}
!150 = !{!11, !12, i64 132}
!151 = !{!11, !12, i64 88}
!152 = !{!11, !12, i64 208}
!153 = distinct !{!153, !86}
!154 = distinct !{!154, !86}
!155 = distinct !{!155, !86}
!156 = distinct !{!156, !86}
!157 = distinct !{!157, !86}
!158 = distinct !{!158, !86}
!159 = distinct !{!159, !86}
!160 = distinct !{!160, !86}
!161 = distinct !{!161, !86}
!162 = distinct !{!162, !86}
!163 = distinct !{!163, !86}
!164 = distinct !{!164, !86}
!165 = distinct !{!165, !86}
!166 = distinct !{!166, !86}
!167 = distinct !{!167, !86}
!168 = distinct !{!168, !86}
!169 = distinct !{!169, !86}
!170 = distinct !{!170, !86}
!171 = distinct !{!171, !86}
!172 = distinct !{!172, !86}
!173 = distinct !{!173, !86}
!174 = distinct !{!174, !86}
!175 = distinct !{!175, !86}
!176 = distinct !{!176, !86}
!177 = distinct !{!177, !86}
!178 = distinct !{!178, !86}
!179 = distinct !{!179, !86}
!180 = distinct !{!180, !86}
!181 = distinct !{!181, !86}
!182 = distinct !{!182, !86}
!183 = distinct !{!183, !86}
!184 = distinct !{!184, !86}
!185 = !{!11, !12, i64 204}
!186 = !{!11, !13, i64 400}
!187 = !{!11, !13, i64 408}
!188 = !{!11, !13, i64 416}
!189 = !{!11, !13, i64 424}
!190 = distinct !{!190, !86}
!191 = distinct !{!191, !86}
