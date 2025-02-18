; ModuleID = 'ComputeNonbondedUtil.C'
source_filename = "ComputeNonbondedUtil.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.SimParameters = type { %class.Vector, %class.Vector, %class.Vector, %class.Vector, i32, i32, double, i32, double, double, double, i32, double, double, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, double, i32, i32, double, double, double, i32, double, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, double, i32, i32, i32, i32, double, i32, i32, %class.Lattice }
%class.Vector = type { double, double, double }
%class.Lattice = type <{ %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, i32, i32, i32, [4 x i8] }>

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN20ComputeNonbondedUtil8commOnlyE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil12fixedAtomsOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil6cutoffE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil7cutoff2E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil12pairlistdistE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil12hgroupcutoffE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil12dielectric_1E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil7ljTableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil3molE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil8r2_deltaE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil10r2_delta_1E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil12r2_delta_expE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil7rowsizeE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil10columnsizeE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil11table_allocE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10table_enerE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil11table_shortE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil13table_noshortE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10fast_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10scor_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10slow_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10corr_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10full_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10vdwa_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil10vdwb_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil8r2_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil7scalingE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil7scale14E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil8switchOnE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil10switchOn_1E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil9switchOn2E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil6v_vdwaE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil6v_vdwbE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil6k_vdwaE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil6k_vdwbE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil8cutoff_3E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil8cutoff_6E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c0E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c1E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c3E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c5E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c6E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c7E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil2c8E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil9alchFepOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil14alchThermIntOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil14Fep_WCA_repuOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil14Fep_WCA_dispOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil9WCA_rcut1E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil9WCA_rcut2E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil10alchLambdaE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil11alchLambda2E = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil17alchVdwShiftCoeffE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil16alchVdwLambdaEndE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil19alchElecLambdaStartE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil12alchDecoupleE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil5lesOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil9lesFactorE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil10lesScalingE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil12lambda_tableE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil17pairInteractionOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil19pairInteractionSelfE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil17pressureProfileOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil20pressureProfileSlabsE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil24pressureProfileAtomTypesE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil24pressureProfileThicknessE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil18pressureProfileMinE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil9accelMDOnE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil12drudeNbtholeE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN20ComputeNonbondedUtil8ewaldcofE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil11pi_ewaldcofE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN20ComputeNonbondedUtil8calcPairE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil14calcPairEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil8calcSelfE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil14calcSelfEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil12calcFullPairE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil18calcFullPairEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil12calcFullSelfE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil13calcMergePairE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil19calcMergePairEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil13calcMergeSelfE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil12calcSlowPairE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil18calcSlowPairEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil12calcSlowSelfE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN20ComputeNonbondedUtil18calcSlowSelfEnergyE = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Tried to call missing nonbonded compute routine.\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"drudeNbthole is not supported with alchemical free-energy perturbation\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"drudeNbthole is not supported with alchemical thermodynamic integration\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"drudeNbthole is not supported with locally enhanced sampling\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"drudeNbthole is not supported with pair interaction calculation\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"drudeNbthole is not supported with pressure profile calculation\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Alchemical thermodynamic integration is not supported in SPEC version\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Tabulated energies is not supported in SPEC version\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Sorry, XPLOR splitting not supported.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Sorry, SHARP splitting not supported.\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Unknown splitting type found!\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Failed to find table entry for r2 == r2_limit\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Found bad table entry for r2 == r2_limit\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Bad table delta calculation.\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ComputeNonbondedUtil.C, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded(ptr nocapture readnone %0) #3 align 2 !prof !41 {
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str)
  ret void
}

declare void @_Z8NAMD_bugPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr %2, ptr @_ZN20ComputeNonbondedUtil7ljTableE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowSelfEnergyE, align 8, !tbaa !43
  %4 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 39
  %5 = load i32, ptr %4, align 4, !tbaa !47
  store i32 %5, ptr @_ZN20ComputeNonbondedUtil8commOnlyE, align 4, !tbaa !53
  %6 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 29
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !55

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 30
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ false, %3 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  store i32 %15, ptr @_ZN20ComputeNonbondedUtil12fixedAtomsOnE, align 4, !tbaa !53
  %16 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 10
  %17 = load double, ptr %16, align 8, !tbaa !57
  store double %17, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %18 = fmul double %17, %17
  store double %18, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %19 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 13
  %20 = load double, ptr %19, align 8, !tbaa !59
  store double %20, ptr @_ZN20ComputeNonbondedUtil12pairlistdistE, align 8, !tbaa !58
  %21 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 37
  %22 = load double, ptr %21, align 8, !tbaa !60
  store double %22, ptr @_ZN20ComputeNonbondedUtil12hgroupcutoffE, align 8, !tbaa !58
  %23 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 45
  %24 = load i32, ptr %23, align 8, !tbaa !61
  store i32 %24, ptr @_ZN20ComputeNonbondedUtil9alchFepOnE, align 4, !tbaa !53
  %25 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 46
  %26 = load i32, ptr %25, align 4, !tbaa !62
  store i32 %26, ptr @_ZN20ComputeNonbondedUtil14Fep_WCA_repuOnE, align 4, !tbaa !53
  %27 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 47
  %28 = load i32, ptr %27, align 8, !tbaa !63
  store i32 %28, ptr @_ZN20ComputeNonbondedUtil14Fep_WCA_dispOnE, align 4, !tbaa !53
  %29 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 48
  %30 = load i32, ptr %29, align 4, !tbaa !64
  store i32 %30, ptr @_ZN20ComputeNonbondedUtil14alchThermIntOnE, align 4, !tbaa !53
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil11alchLambda2E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil10alchLambdaE, align 8, !tbaa !58
  %31 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 23
  %32 = load i32, ptr %31, align 8, !tbaa !65
  store i32 %32, ptr @_ZN20ComputeNonbondedUtil5lesOnE, align 4, !tbaa !53
  store i32 0, ptr @_ZN20ComputeNonbondedUtil9lesFactorE, align 4, !tbaa !53
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil10lesScalingE, align 8, !tbaa !58
  %33 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 49
  %34 = load i32, ptr %33, align 8, !tbaa !66
  %35 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 19
  %36 = load i32, ptr %35, align 8, !tbaa !67
  %37 = sitofp i32 %36 to double
  store double %37, ptr @_ZN20ComputeNonbondedUtil17alchVdwShiftCoeffE, align 8, !tbaa !58
  %38 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 50
  %39 = load double, ptr %38, align 8, !tbaa !68
  store double %39, ptr @_ZN20ComputeNonbondedUtil9WCA_rcut1E, align 8, !tbaa !58
  %40 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 51
  %41 = load double, ptr %40, align 8, !tbaa !69
  store double %41, ptr @_ZN20ComputeNonbondedUtil9WCA_rcut2E, align 8, !tbaa !58
  %42 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 52
  %43 = load double, ptr %42, align 8, !tbaa !70
  store double %43, ptr @_ZN20ComputeNonbondedUtil16alchVdwLambdaEndE, align 8, !tbaa !58
  %44 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 53
  %45 = load double, ptr %44, align 8, !tbaa !71
  store double %45, ptr @_ZN20ComputeNonbondedUtil19alchElecLambdaStartE, align 8, !tbaa !58
  %46 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 54
  %47 = load i32, ptr %46, align 8, !tbaa !72
  store i32 %47, ptr @_ZN20ComputeNonbondedUtil12alchDecoupleE, align 4, !tbaa !53
  %48 = load ptr, ptr @_ZN20ComputeNonbondedUtil12lambda_tableE, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !55

50:                                               ; preds = %13
  tail call void @_ZdaPv(ptr noundef %48) #12
  br label %51

51:                                               ; preds = %50, %13
  store ptr null, ptr @_ZN20ComputeNonbondedUtil12lambda_tableE, align 8, !tbaa !43
  %52 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 25
  %53 = load i32, ptr %52, align 8, !tbaa !73
  store i32 %53, ptr @_ZN20ComputeNonbondedUtil17pairInteractionOnE, align 4, !tbaa !53
  %54 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 28
  %55 = load i32, ptr %54, align 4, !tbaa !74
  store i32 %55, ptr @_ZN20ComputeNonbondedUtil19pairInteractionSelfE, align 4, !tbaa !53
  %56 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 20
  %57 = load i32, ptr %56, align 4, !tbaa !75
  store i32 %57, ptr @_ZN20ComputeNonbondedUtil17pressureProfileOnE, align 4, !tbaa !53
  %58 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 55
  %59 = load i32, ptr %58, align 4, !tbaa !76
  store i32 %59, ptr @_ZN20ComputeNonbondedUtil9accelMDOnE, align 4, !tbaa !53
  %60 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 57
  %61 = load i32, ptr %60, align 8, !tbaa !77
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %88, label %63, !prof !55

63:                                               ; preds = %51
  %64 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 56
  %65 = load double, ptr %64, align 8, !tbaa !78
  %66 = fcmp ogt double %65, 0.000000e+00
  %67 = zext i1 %66 to i32
  store i32 %67, ptr @_ZN20ComputeNonbondedUtil12drudeNbtholeE, align 4, !tbaa !53
  br i1 %66, label %68, label %89

68:                                               ; preds = %63
  %69 = load i32, ptr @_ZN20ComputeNonbondedUtil9alchFepOnE, align 4, !tbaa !53
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.1)
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, ptr @_ZN20ComputeNonbondedUtil14alchThermIntOnE, align 4, !tbaa !53
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.2)
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, ptr @_ZN20ComputeNonbondedUtil5lesOnE, align 4, !tbaa !53
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.3)
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, ptr @_ZN20ComputeNonbondedUtil17pairInteractionOnE, align 4, !tbaa !53
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.4)
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32, ptr @_ZN20ComputeNonbondedUtil17pressureProfileOnE, align 4, !tbaa !53
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.5)
  br label %89

88:                                               ; preds = %51
  store i32 0, ptr @_ZN20ComputeNonbondedUtil12drudeNbtholeE, align 4, !tbaa !53
  br label %89

89:                                               ; preds = %88, %84, %87, %63
  %90 = load i32, ptr @_ZN20ComputeNonbondedUtil9alchFepOnE, align 4, !tbaa !53
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92, !prof !55

92:                                               ; preds = %89
  %93 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 15
  %94 = load double, ptr %93, align 8, !tbaa !79
  store double %94, ptr @_ZN20ComputeNonbondedUtil10alchLambdaE, align 8, !tbaa !58
  %95 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 16
  %96 = load double, ptr %95, align 8, !tbaa !80
  store double %96, ptr @_ZN20ComputeNonbondedUtil11alchLambda2E, align 8, !tbaa !58
  store ptr @_ZN20ComputeNonbondedUtil20calc_pair_energy_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_pair_energy_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_self_energy_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_self_energy_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_fepEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowSelfEnergyE, align 8, !tbaa !43
  br label %161

97:                                               ; preds = %89
  %98 = load i32, ptr @_ZN20ComputeNonbondedUtil14alchThermIntOnE, align 4, !tbaa !53
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100, !prof !55

100:                                              ; preds = %97
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.6)
  br label %161

101:                                              ; preds = %97
  %102 = load i32, ptr @_ZN20ComputeNonbondedUtil5lesOnE, align 4, !tbaa !53
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %145, label %104, !prof !55

104:                                              ; preds = %101
  %105 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 24
  %106 = load i32, ptr %105, align 4, !tbaa !81
  store i32 %106, ptr @_ZN20ComputeNonbondedUtil9lesFactorE, align 4, !tbaa !53
  %107 = sitofp i32 %106 to double
  %108 = fdiv double 1.000000e+00, %107
  store double %108, ptr @_ZN20ComputeNonbondedUtil10lesScalingE, align 8, !tbaa !58
  %109 = add nsw i32 %106, 1
  %110 = mul nsw i32 %109, %109
  %111 = zext nneg i32 %110 to i64
  %112 = shl nuw nsw i64 %111, 3
  %113 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %112) #13
  store ptr %113, ptr @_ZN20ComputeNonbondedUtil12lambda_tableE, align 8, !tbaa !43
  %114 = icmp slt i32 %106, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %104
  %116 = zext nneg i32 %109 to i64
  %117 = zext nneg i32 %109 to i64
  br label %118

118:                                              ; preds = %115, %126
  %119 = phi i64 [ 0, %115 ], [ %127, %126 ]
  %120 = icmp eq i64 %119, 0
  %121 = trunc i64 %119 to i32
  %122 = mul i32 %109, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr double, ptr %113, i64 %123
  br label %129

125:                                              ; preds = %126, %104
  store ptr @_ZN20ComputeNonbondedUtil13calc_pair_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_pair_energy_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil13calc_self_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_self_energy_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil23calc_pair_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil23calc_self_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil29calc_pair_merge_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil29calc_self_merge_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil28calc_pair_slow_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil28calc_self_slow_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_lesEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowSelfEnergyE, align 8, !tbaa !43
  br label %161

126:                                              ; preds = %140
  %127 = add nuw nsw i64 %119, 1
  %128 = icmp eq i64 %127, %116
  br i1 %128, label %125, label %118, !llvm.loop !82

129:                                              ; preds = %118, %140
  %130 = phi i64 [ 0, %118 ], [ %143, %140 ]
  %131 = or i64 %130, %119
  %132 = and i64 %131, 4294967295
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = icmp eq i64 %130, 0
  %136 = or i1 %120, %135
  %137 = icmp eq i64 %119, %130
  %138 = or i1 %137, %136
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %134, %139, %129
  %141 = phi double [ %108, %139 ], [ 1.000000e+00, %129 ], [ 0.000000e+00, %134 ]
  %142 = getelementptr double, ptr %124, i64 %130
  store double %141, ptr %142, align 8, !tbaa !58
  %143 = add nuw nsw i64 %130, 1
  %144 = icmp eq i64 %143, %117
  br i1 %144, label %126, label %129, !llvm.loop !85

145:                                              ; preds = %101
  %146 = load i32, ptr @_ZN20ComputeNonbondedUtil17pressureProfileOnE, align 4, !tbaa !53
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148, !prof !55

148:                                              ; preds = %145
  %149 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 21
  %150 = load i32, ptr %149, align 8, !tbaa !86
  store i32 %150, ptr @_ZN20ComputeNonbondedUtil20pressureProfileSlabsE, align 4, !tbaa !53
  %151 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 58
  %152 = load i32, ptr %151, align 4, !tbaa !87
  store i32 %152, ptr @_ZN20ComputeNonbondedUtil24pressureProfileAtomTypesE, align 4, !tbaa !53
  store ptr @_ZN20ComputeNonbondedUtil15calc_pair_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil22calc_pair_energy_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil15calc_self_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil22calc_self_energy_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil25calc_pair_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil32calc_pair_energy_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil25calc_self_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil32calc_self_energy_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil31calc_pair_merge_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil38calc_pair_energy_merge_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil31calc_self_merge_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil38calc_self_energy_merge_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_pair_slow_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil37calc_pair_energy_slow_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_self_slow_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil37calc_self_energy_slow_fullelect_pprofEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowSelfEnergyE, align 8, !tbaa !43
  br label %161

153:                                              ; preds = %145
  %154 = load i32, ptr @_ZN20ComputeNonbondedUtil17pairInteractionOnE, align 4, !tbaa !53
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156, !prof !55

156:                                              ; preds = %153
  store ptr @_ZN20ComputeNonbondedUtil20calc_pair_energy_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_self_energy_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  br label %161

157:                                              ; preds = %153
  %158 = icmp eq i32 %34, 0
  br i1 %158, label %160, label %159, !prof !55

159:                                              ; preds = %157
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.7)
  br label %161

160:                                              ; preds = %157
  store ptr @_ZN20ComputeNonbondedUtil9calc_pairEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil16calc_pair_energyEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil9calc_selfEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil8calcSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil16calc_self_energyEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil19calc_pair_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil26calc_pair_energy_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil19calc_self_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcFullSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil26calc_self_energy_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil25calc_pair_merge_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergePairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil32calc_pair_energy_merge_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil25calc_self_merge_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil13calcMergeSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil32calc_self_energy_merge_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil24calc_pair_slow_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowPairE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil31calc_pair_energy_slow_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil24calc_self_slow_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil12calcSlowSelfE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil31calc_self_energy_slow_fullelectEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcSlowSelfEnergyE, align 8, !tbaa !43
  br label %161

161:                                              ; preds = %100, %148, %159, %160, %156, %125, %92
  %162 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 6
  %163 = load double, ptr %162, align 8, !tbaa !88
  %164 = fdiv double 1.000000e+00, %163
  store double %164, ptr @_ZN20ComputeNonbondedUtil12dielectric_1E, align 8, !tbaa !58
  %165 = load ptr, ptr @_ZN20ComputeNonbondedUtil7ljTableE, align 8, !tbaa !43
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %172, !prof !89

167:                                              ; preds = %161
  %168 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13
  invoke void @_ZN7LJTableC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %168)
          to label %169 unwind label %170

169:                                              ; preds = %167
  store ptr %168, ptr @_ZN20ComputeNonbondedUtil7ljTableE, align 8, !tbaa !43
  br label %172

170:                                              ; preds = %167
  %171 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %168) #12
  resume { ptr, i32 } %171

172:                                              ; preds = %169, %161
  store ptr %1, ptr @_ZN20ComputeNonbondedUtil3molE, align 8, !tbaa !43
  %173 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 9
  %174 = load double, ptr %173, align 8, !tbaa !90
  store double %174, ptr @_ZN20ComputeNonbondedUtil7scalingE, align 8, !tbaa !58
  %175 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 7
  %176 = load i32, ptr %175, align 8, !tbaa !91
  %177 = icmp eq i32 %176, 4
  br i1 %177, label %178, label %181, !prof !55

178:                                              ; preds = %172
  %179 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 8
  %180 = load double, ptr %179, align 8, !tbaa !92
  br label %181

181:                                              ; preds = %172, %178
  %182 = phi double [ %180, %178 ], [ 1.000000e+00, %172 ]
  store double %182, ptr @_ZN20ComputeNonbondedUtil7scale14E, align 8, !tbaa !58
  %183 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 11
  %184 = load i32, ptr %183, align 8, !tbaa !93
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %213, label %186, !prof !89

186:                                              ; preds = %181
  %187 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 12
  %188 = load double, ptr %187, align 8, !tbaa !94
  store double %188, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %189 = fdiv double 1.000000e+00, %188
  store double %189, ptr @_ZN20ComputeNonbondedUtil10switchOn_1E, align 8, !tbaa !58
  %190 = fmul double %188, %188
  store double %190, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %191 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %192 = fsub double %191, %190
  %193 = fdiv double 1.000000e+00, %192
  store double %193, ptr @_ZN20ComputeNonbondedUtil2c0E, align 8, !tbaa !58
  %194 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 62
  %195 = load i32, ptr %194, align 8, !tbaa !95
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %217, label %197, !prof !55

197:                                              ; preds = %186
  %198 = fmul double %188, %190
  %199 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %200 = fmul double %191, %199
  %201 = fmul double %198, %198
  %202 = fmul double %200, %200
  %203 = fmul double %201, %202
  %204 = fdiv double -1.000000e+00, %203
  store double %204, ptr @_ZN20ComputeNonbondedUtil6v_vdwaE, align 8, !tbaa !58
  %205 = fmul double %198, %200
  %206 = fdiv double -1.000000e+00, %205
  store double %206, ptr @_ZN20ComputeNonbondedUtil6v_vdwbE, align 8, !tbaa !58
  %207 = fsub double %202, %201
  %208 = fdiv double %202, %207
  store double %208, ptr @_ZN20ComputeNonbondedUtil6k_vdwaE, align 8, !tbaa !58
  %209 = fsub double %200, %198
  %210 = fdiv double %200, %209
  store double %210, ptr @_ZN20ComputeNonbondedUtil6k_vdwbE, align 8, !tbaa !58
  %211 = fdiv double 1.000000e+00, %200
  store double %211, ptr @_ZN20ComputeNonbondedUtil8cutoff_3E, align 8, !tbaa !58
  %212 = fdiv double 1.000000e+00, %202
  store double %212, ptr @_ZN20ComputeNonbondedUtil8cutoff_6E, align 8, !tbaa !58
  br label %217

213:                                              ; preds = %181
  %214 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  store double %214, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %215 = fdiv double 1.000000e+00, %214
  store double %215, ptr @_ZN20ComputeNonbondedUtil10switchOn_1E, align 8, !tbaa !58
  %216 = fmul double %214, %214
  store double %216, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c0E, align 8, !tbaa !58
  br label %217

217:                                              ; preds = %186, %197, %213
  %218 = load double, ptr @_ZN20ComputeNonbondedUtil2c0E, align 8, !tbaa !58
  %219 = fmul double %218, %218
  %220 = fmul double %218, %219
  store double %220, ptr @_ZN20ComputeNonbondedUtil2c1E, align 8, !tbaa !58
  %221 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %222 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %223 = fsub double %221, %222
  %224 = fmul double %223, 3.000000e+00
  store double %224, ptr @_ZN20ComputeNonbondedUtil2c3E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c5E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c6E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c7E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c8E, align 8, !tbaa !58
  %225 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 33
  %226 = load i32, ptr %225, align 8, !tbaa !96
  %227 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 59
  %228 = load i32, ptr %227, align 8, !tbaa !97
  %229 = icmp eq i32 %226, 0
  br i1 %229, label %234, label %230, !prof !89

230:                                              ; preds = %217
  %231 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 35
  %232 = load double, ptr %231, align 8, !tbaa !98
  store double %232, ptr @_ZN20ComputeNonbondedUtil8ewaldcofE, align 8, !tbaa !58
  %233 = fmul double %232, 0x3FF20DD750429B61
  store double %233, ptr @_ZN20ComputeNonbondedUtil11pi_ewaldcofE, align 8, !tbaa !58
  br label %234

234:                                              ; preds = %230, %217
  %235 = select i1 %185, i32 1, i32 2, !prof !89
  %236 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 32
  %237 = load i32, ptr %236, align 4, !tbaa !99
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %246, !prof !55

239:                                              ; preds = %234
  %240 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 31
  %241 = load i32, ptr %240, align 8, !tbaa !100
  %242 = or i32 %241, %226
  %243 = icmp ne i32 %242, 0
  %244 = icmp ne i32 %228, 0
  %245 = select i1 %243, i1 true, i1 %244, !prof !55
  br i1 %245, label %246, label %253, !prof !55

246:                                              ; preds = %239, %234
  %247 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 36
  %248 = load i32, ptr %247, align 8, !tbaa !101
  switch i32 %248, label %252 [
    i32 3, label %253
    i32 2, label %249
    i32 1, label %250
    i32 0, label %251
  ], !prof !102

249:                                              ; preds = %246
  br label %253

250:                                              ; preds = %246
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.8)
  br label %253

251:                                              ; preds = %246
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.9)
  br label %253

252:                                              ; preds = %246
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.10)
  br label %253

253:                                              ; preds = %246, %249, %250, %251, %252, %239
  %254 = phi i32 [ %235, %252 ], [ %235, %251 ], [ %235, %250 ], [ 3, %249 ], [ %235, %239 ], [ 5, %246 ]
  store double 1.000000e+00, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  br label %255

255:                                              ; preds = %253, %255
  %256 = phi i32 [ %259, %255 ], [ 0, %253 ]
  %257 = phi double [ %258, %255 ], [ 1.000000e+00, %253 ]
  %258 = fmul double %257, 5.000000e-01
  %259 = add nuw nsw i32 %256, 1
  %260 = icmp eq i32 %259, 4
  br i1 %260, label %261, label %255, !prof !103, !llvm.loop !104

261:                                              ; preds = %255
  store double %258, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  store i32 4, ptr @_ZN20ComputeNonbondedUtil12r2_delta_expE, align 4, !tbaa !53
  %262 = fdiv double 1.000000e+00, %258
  store double %262, ptr @_ZN20ComputeNonbondedUtil10r2_delta_1E, align 8, !tbaa !58
  %263 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %264 = fadd double %258, %263
  %265 = fcmp ogt double %264, 1.000000e+00
  br i1 %265, label %266, label %274, !prof !105

266:                                              ; preds = %261, %266
  %267 = phi double [ %269, %266 ], [ 1.000000e+00, %261 ]
  %268 = phi i32 [ %270, %266 ], [ 0, %261 ]
  %269 = fmul double %267, 2.000000e+00
  %270 = add nuw nsw i32 %268, 1
  %271 = fcmp ogt double %264, %269
  br i1 %271, label %266, label %272, !prof !106, !llvm.loop !107

272:                                              ; preds = %266
  %273 = shl i32 %270, 6
  br label %274

274:                                              ; preds = %272, %261
  %275 = phi i32 [ 0, %261 ], [ %273, %272 ]
  %276 = add i32 %275, 256
  %277 = or disjoint i32 %276, 1
  %278 = load ptr, ptr @_ZN20ComputeNonbondedUtil11table_allocE, align 8, !tbaa !43
  %279 = icmp eq ptr %278, null
  br i1 %279, label %281, label %280, !prof !55

280:                                              ; preds = %274
  tail call void @_ZdaPv(ptr noundef %278) #12
  br label %281

281:                                              ; preds = %280, %274
  %282 = mul nsw i32 %277, 61
  %283 = add nuw nsw i32 %282, 16
  %284 = zext nneg i32 %283 to i64
  %285 = shl nuw nsw i64 %284, 3
  %286 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %285) #13
  store ptr %286, ptr @_ZN20ComputeNonbondedUtil11table_allocE, align 8, !tbaa !43
  %287 = ptrtoint ptr %286 to i64
  %288 = sub i64 0, %287
  %289 = and i64 %288, 120
  %290 = getelementptr i8, ptr %286, i64 %289
  store ptr %290, ptr @_ZN20ComputeNonbondedUtil13table_noshortE, align 8, !tbaa !43
  %291 = shl nsw i32 %277, 4
  %292 = zext nneg i32 %291 to i64
  %293 = getelementptr inbounds double, ptr %290, i64 %292
  store ptr %293, ptr @_ZN20ComputeNonbondedUtil11table_shortE, align 8, !tbaa !43
  %294 = shl nsw i32 %277, 5
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds double, ptr %290, i64 %295
  store ptr %296, ptr @_ZN20ComputeNonbondedUtil10slow_tableE, align 8, !tbaa !43
  %297 = mul nsw i32 %277, 36
  %298 = zext nneg i32 %297 to i64
  %299 = getelementptr inbounds double, ptr %290, i64 %298
  store ptr %299, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  %300 = mul nsw i32 %277, 40
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds double, ptr %290, i64 %301
  store ptr %302, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  %303 = mul nsw i32 %277, 44
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds double, ptr %290, i64 %304
  store ptr %305, ptr @_ZN20ComputeNonbondedUtil10corr_tableE, align 8, !tbaa !43
  %306 = mul nsw i32 %277, 48
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds double, ptr %290, i64 %307
  store ptr %308, ptr @_ZN20ComputeNonbondedUtil10full_tableE, align 8, !tbaa !43
  %309 = mul nsw i32 %277, 52
  %310 = zext nneg i32 %309 to i64
  %311 = getelementptr inbounds double, ptr %290, i64 %310
  store ptr %311, ptr @_ZN20ComputeNonbondedUtil10vdwa_tableE, align 8, !tbaa !43
  %312 = mul nsw i32 %277, 56
  %313 = zext nneg i32 %312 to i64
  %314 = getelementptr inbounds double, ptr %290, i64 %313
  store ptr %314, ptr @_ZN20ComputeNonbondedUtil10vdwb_tableE, align 8, !tbaa !43
  %315 = mul nsw i32 %277, 60
  %316 = zext nneg i32 %315 to i64
  %317 = getelementptr inbounds double, ptr %290, i64 %316
  store ptr %317, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %318 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  store double %318, ptr %317, align 8, !tbaa !58
  %319 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 61
  %320 = load double, ptr %319, align 8, !tbaa !108
  %321 = fmul double %320, %320
  %322 = fcmp olt double %321, %318
  %323 = select i1 %322, double %318, double %321, !prof !55
  %324 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 62
  %325 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 63
  %326 = add i32 %275, 256
  %327 = tail call i32 @llvm.umax.i32(i32 %326, i32 1)
  br label %328

328:                                              ; preds = %281, %637
  %329 = phi ptr [ %317, %281 ], [ %343, %637 ]
  %330 = phi i32 [ 1, %281 ], [ %654, %637 ]
  %331 = phi ptr [ %299, %281 ], [ %348, %637 ]
  %332 = phi ptr [ %302, %281 ], [ %347, %637 ]
  %333 = phi ptr [ %296, %281 ], [ %346, %637 ]
  %334 = phi ptr [ %311, %281 ], [ %345, %637 ]
  %335 = phi ptr [ %314, %281 ], [ %344, %637 ]
  %336 = phi i32 [ 0, %281 ], [ %360, %637 ]
  %337 = phi double [ undef, %281 ], [ %451, %637 ]
  %338 = phi double [ undef, %281 ], [ %453, %637 ]
  %339 = phi double [ undef, %281 ], [ %449, %637 ]
  %340 = phi double [ undef, %281 ], [ %454, %637 ]
  %341 = phi double [ undef, %281 ], [ %447, %637 ]
  %342 = phi double [ undef, %281 ], [ %455, %637 ]
  %343 = getelementptr inbounds double, ptr %329, i64 1
  %344 = getelementptr inbounds double, ptr %335, i64 4
  %345 = getelementptr inbounds double, ptr %334, i64 4
  %346 = getelementptr inbounds double, ptr %333, i64 4
  %347 = getelementptr inbounds double, ptr %332, i64 4
  %348 = getelementptr inbounds double, ptr %331, i64 4
  %349 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %350 = lshr i32 %330, 6
  %351 = shl nuw i32 1, %350
  %352 = sitofp i32 %351 to double
  %353 = fmul double %349, %352
  %354 = fmul double %353, 1.562500e-02
  %355 = fsub double %353, %349
  %356 = and i32 %330, 63
  %357 = sitofp i32 %356 to double
  %358 = tail call double @llvm.fmuladd.f64(double %354, double %357, double %355)
  %359 = fcmp ugt double %358, %323
  %360 = select i1 %359, i32 %336, i32 %330, !prof !109
  %361 = tail call double @sqrt(double noundef %358) #14
  %362 = fdiv double 1.000000e+00, %361
  %363 = fdiv double 1.000000e+00, %358
  br i1 %229, label %374, label %364, !prof !110

364:                                              ; preds = %328
  %365 = load double, ptr @_ZN20ComputeNonbondedUtil8ewaldcofE, align 8, !tbaa !58
  %366 = fmul double %361, %365
  %367 = tail call double @erfc(double noundef %366) #14
  %368 = load double, ptr @_ZN20ComputeNonbondedUtil11pi_ewaldcofE, align 8, !tbaa !58
  %369 = fneg double %366
  %370 = fmul double %366, %369
  %371 = tail call double @exp(double noundef %370) #14
  %372 = fmul double %368, %371
  %373 = tail call double @llvm.fmuladd.f64(double %372, double %361, double %367)
  br label %383

374:                                              ; preds = %328
  %375 = icmp eq i32 %228, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %374
  %377 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %378 = fdiv double 1.000000e+00, %377
  %379 = fmul double %361, %378
  %380 = fsub double 1.000000e+00, %379
  %381 = fmul double %379, %379
  %382 = tail call double @llvm.fmuladd.f64(double %381, double 0.000000e+00, double 1.000000e+00)
  br label %383

383:                                              ; preds = %374, %376, %364
  %384 = phi double [ %373, %364 ], [ %382, %376 ], [ 0.000000e+00, %374 ]
  %385 = phi double [ %367, %364 ], [ %380, %376 ], [ 0.000000e+00, %374 ]
  switch i32 %254, label %445 [
    i32 1, label %386
    i32 2, label %388
    i32 3, label %401
    i32 5, label %420
  ], !prof !111

386:                                              ; preds = %383
  %387 = fdiv double -1.000000e+00, %358
  br label %445

388:                                              ; preds = %383
  %389 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %390 = fdiv double %358, %389
  %391 = fadd double %390, -1.000000e+00
  %392 = fmul double %391, %391
  %393 = fmul double %391, 2.000000e+00
  %394 = fmul double %393, 2.000000e+00
  %395 = fmul double %361, %394
  %396 = fdiv double %395, %389
  %397 = fdiv double %392, %361
  %398 = fdiv double %396, %361
  %399 = fdiv double %392, %358
  %400 = fsub double %398, %399
  br label %445

401:                                              ; preds = %383
  %402 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %403 = fdiv double 5.000000e-01, %402
  %404 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %405 = fdiv double %358, %404
  %406 = fsub double 3.000000e+00, %405
  %407 = fmul double %403, %406
  %408 = fdiv double -1.000000e+00, %404
  %409 = fdiv double %361, %402
  %410 = fmul double %409, %408
  %411 = fadd double %385, -1.000000e+00
  %412 = fdiv double %411, %361
  %413 = fadd double %412, %407
  %414 = fadd double %384, -1.000000e+00
  %415 = fdiv double %414, %358
  %416 = fsub double %410, %415
  %417 = fsub double %362, %407
  %418 = fdiv double -1.000000e+00, %358
  %419 = fsub double %418, %410
  br label %445

420:                                              ; preds = %383
  %421 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %422 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %423 = fmul double %421, %422
  %424 = fdiv double %358, %423
  %425 = fdiv double %358, %422
  %426 = fdiv double %361, %421
  %427 = fmul double %426, -1.500000e+01
  %428 = tail call double @llvm.fmuladd.f64(double %425, double 6.000000e+00, double %427)
  %429 = fadd double %428, 1.000000e+01
  %430 = fmul double %424, %429
  %431 = fdiv double %361, %423
  %432 = fmul double %426, -4.500000e+01
  %433 = tail call double @llvm.fmuladd.f64(double %425, double 2.400000e+01, double %432)
  %434 = fadd double %433, 2.000000e+01
  %435 = fmul double %431, %434
  %436 = fadd double %385, -1.000000e+00
  %437 = fdiv double %436, %361
  %438 = fadd double %437, %430
  %439 = fadd double %384, -1.000000e+00
  %440 = fdiv double %439, %358
  %441 = fsub double %435, %440
  %442 = fsub double %362, %430
  %443 = fdiv double -1.000000e+00, %358
  %444 = fsub double %443, %435
  br label %445

445:                                              ; preds = %383, %420, %401, %388, %386
  %446 = phi double [ %342, %383 ], [ %435, %420 ], [ %410, %401 ], [ 0.000000e+00, %388 ], [ 0.000000e+00, %386 ]
  %447 = phi double [ %341, %383 ], [ %430, %420 ], [ %407, %401 ], [ 0.000000e+00, %388 ], [ 0.000000e+00, %386 ]
  %448 = phi double [ %340, %383 ], [ %441, %420 ], [ %416, %401 ], [ 0.000000e+00, %388 ], [ 0.000000e+00, %386 ]
  %449 = phi double [ %339, %383 ], [ %438, %420 ], [ %413, %401 ], [ 0.000000e+00, %388 ], [ 0.000000e+00, %386 ]
  %450 = phi double [ %338, %383 ], [ %444, %420 ], [ %419, %401 ], [ %400, %388 ], [ %387, %386 ]
  %451 = phi double [ %337, %383 ], [ %442, %420 ], [ %417, %401 ], [ %397, %388 ], [ %362, %386 ]
  %452 = fmul double %362, 5.000000e-01
  %453 = fmul double %452, %450
  %454 = fmul double %452, %448
  %455 = fmul double %452, %446
  %456 = fmul double %363, %363
  %457 = fmul double %363, %456
  %458 = fmul double %457, %457
  %459 = load i32, ptr %324, align 8, !tbaa !95
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %494, label %461, !prof !112

461:                                              ; preds = %445
  %462 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %463 = fcmp ogt double %358, %462
  br i1 %463, label %464, label %485

464:                                              ; preds = %461
  %465 = load double, ptr @_ZN20ComputeNonbondedUtil8cutoff_6E, align 8, !tbaa !58
  %466 = fsub double %457, %465
  %467 = load double, ptr @_ZN20ComputeNonbondedUtil6k_vdwaE, align 8, !tbaa !58
  %468 = fmul double %467, %466
  %469 = fmul double %466, %468
  %470 = load double, ptr @_ZN20ComputeNonbondedUtil8cutoff_3E, align 8, !tbaa !58
  %471 = fneg double %470
  %472 = tail call double @llvm.fmuladd.f64(double %362, double %363, double %471)
  %473 = load double, ptr @_ZN20ComputeNonbondedUtil6k_vdwbE, align 8, !tbaa !58
  %474 = fmul double %473, %472
  %475 = fmul double %472, %474
  %476 = fmul double %467, -6.000000e+00
  %477 = fmul double %466, %476
  %478 = fmul double %363, %477
  %479 = fmul double %457, %478
  %480 = fmul double %473, -3.000000e+00
  %481 = fmul double %472, %480
  %482 = fmul double %363, %481
  %483 = fmul double %363, %482
  %484 = fmul double %362, %483
  br label %637

485:                                              ; preds = %461
  %486 = load double, ptr @_ZN20ComputeNonbondedUtil6v_vdwaE, align 8, !tbaa !58
  %487 = fadd double %458, %486
  %488 = load double, ptr @_ZN20ComputeNonbondedUtil6v_vdwbE, align 8, !tbaa !58
  %489 = fadd double %457, %488
  %490 = fmul double %363, -6.000000e+00
  %491 = fmul double %490, %458
  %492 = fmul double %363, -3.000000e+00
  %493 = fmul double %492, %457
  br label %637

494:                                              ; preds = %445
  %495 = load i32, ptr %325, align 4, !tbaa !113
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %610, label %497, !prof !112

497:                                              ; preds = %494
  %498 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %499 = fsub double %361, %498
  %500 = fmul double %499, %499
  %501 = fmul double %499, %500
  %502 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %503 = fmul double %502, -1.000000e+01
  %504 = tail call double @llvm.fmuladd.f64(double %498, double 7.000000e+00, double %503)
  %505 = fmul double %504, 6.000000e+00
  %506 = tail call double @pow(double noundef %502, double noundef 8.000000e+00) #14
  %507 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %508 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %509 = fsub double %507, %508
  %510 = fmul double %509, %509
  %511 = fmul double %506, %510
  %512 = fdiv double %505, %511
  %513 = fmul double %507, -9.000000e+00
  %514 = tail call double @llvm.fmuladd.f64(double %508, double 7.000000e+00, double %513)
  %515 = fmul double %514, -6.000000e+00
  %516 = tail call double @pow(double noundef %507, double noundef 8.000000e+00) #14
  %517 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %518 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %519 = fsub double %517, %518
  %520 = tail call noundef double @pow(double noundef %519, double noundef 3.000000e+00) #14
  %521 = fmul double %516, %520
  %522 = fdiv double %515, %521
  %523 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %524 = tail call double @pow(double noundef %523, double noundef 6.000000e+00) #14
  %525 = fdiv double 1.000000e+00, %524
  %526 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %527 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %528 = fsub double %526, %527
  %529 = tail call noundef double @pow(double noundef %528, double noundef 3.000000e+00) #14
  %530 = fdiv double %512, -3.000000e+00
  %531 = tail call double @llvm.fmuladd.f64(double %530, double %529, double %525)
  %532 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %533 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %534 = fsub double %532, %533
  %535 = tail call noundef double @pow(double noundef %534, double noundef 4.000000e+00) #14
  %536 = fmul double %522, -2.500000e-01
  %537 = tail call double @llvm.fmuladd.f64(double %536, double %535, double %531)
  %538 = fneg double %512
  %539 = fneg double %522
  %540 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %541 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %542 = fmul double %541, -1.600000e+01
  %543 = tail call double @llvm.fmuladd.f64(double %540, double 1.300000e+01, double %542)
  %544 = fmul double %543, 1.200000e+01
  %545 = tail call double @pow(double noundef %541, double noundef 1.400000e+01) #14
  %546 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %547 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %548 = fsub double %546, %547
  %549 = fmul double %548, %548
  %550 = fmul double %545, %549
  %551 = fdiv double %544, %550
  %552 = fmul double %546, -1.500000e+01
  %553 = tail call double @llvm.fmuladd.f64(double %547, double 1.300000e+01, double %552)
  %554 = fmul double %553, -1.200000e+01
  %555 = tail call double @pow(double noundef %546, double noundef 1.400000e+01) #14
  %556 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %557 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %558 = fsub double %556, %557
  %559 = tail call noundef double @pow(double noundef %558, double noundef 3.000000e+00) #14
  %560 = fmul double %555, %559
  %561 = fdiv double %554, %560
  %562 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %563 = tail call double @pow(double noundef %562, double noundef 1.200000e+01) #14
  %564 = fdiv double 1.000000e+00, %563
  %565 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %566 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %567 = fsub double %565, %566
  %568 = tail call noundef double @pow(double noundef %567, double noundef 3.000000e+00) #14
  %569 = fdiv double %551, -3.000000e+00
  %570 = tail call double @llvm.fmuladd.f64(double %569, double %568, double %564)
  %571 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %572 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %573 = fsub double %571, %572
  %574 = tail call noundef double @pow(double noundef %573, double noundef 4.000000e+00) #14
  %575 = fmul double %561, -2.500000e-01
  %576 = tail call double @llvm.fmuladd.f64(double %575, double %574, double %570)
  %577 = fmul double %500, %575
  %578 = fmul double %500, %577
  %579 = tail call double @llvm.fmuladd.f64(double %569, double %501, double %578)
  %580 = fsub double %579, %576
  %581 = fdiv double %512, 3.000000e+00
  %582 = fmul double %522, 2.500000e-01
  %583 = fmul double %500, %582
  %584 = fmul double %500, %583
  %585 = tail call double @llvm.fmuladd.f64(double %581, double %501, double %584)
  %586 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %587 = fcmp ogt double %358, %586
  %588 = fneg double %576
  %589 = select i1 %587, double %580, double %588
  %590 = select i1 %587, double %585, double -0.000000e+00
  %591 = fadd double %537, %590
  %592 = fmul double %501, %561
  %593 = tail call double @llvm.fmuladd.f64(double %551, double %500, double %592)
  %594 = fmul double %501, %539
  %595 = tail call double @llvm.fmuladd.f64(double %538, double %500, double %594)
  %596 = fmul double %593, 5.000000e-01
  %597 = fmul double %362, %596
  %598 = select i1 %587, double %597, double 0.000000e+00
  %599 = fmul double %595, 5.000000e-01
  %600 = fmul double %362, %599
  %601 = select i1 %587, double %600, double 0.000000e+00
  %602 = fsub double %458, %589
  %603 = fsub double %457, %591
  %604 = tail call noundef double @pow(double noundef %361, double noundef 1.400000e+01) #14
  %605 = fdiv double 6.000000e+00, %604
  %606 = fsub double %598, %605
  %607 = tail call noundef double @pow(double noundef %361, double noundef 8.000000e+00) #14
  %608 = fdiv double 3.000000e+00, %607
  %609 = fsub double %601, %608
  br label %637

610:                                              ; preds = %494
  %611 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %612 = fsub double %611, %358
  %613 = load double, ptr @_ZN20ComputeNonbondedUtil2c3E, align 8, !tbaa !58
  %614 = tail call double @llvm.fmuladd.f64(double %612, double -2.000000e+00, double %613)
  %615 = fmul double %612, %614
  %616 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %617 = fcmp ogt double %358, %616
  %618 = fmul double %612, %615
  %619 = load double, ptr @_ZN20ComputeNonbondedUtil2c1E, align 8
  %620 = fmul double %619, %618
  %621 = select i1 %617, double %620, double 1.000000e+00, !prof !114
  br i1 %617, label %622, label %627, !prof !114

622:                                              ; preds = %610
  %623 = fmul double %619, 2.000000e+00
  %624 = fneg double %615
  %625 = tail call double @llvm.fmuladd.f64(double %612, double %612, double %624)
  %626 = fmul double %623, %625
  br label %627

627:                                              ; preds = %610, %622
  %628 = phi double [ %626, %622 ], [ 0.000000e+00, %610 ]
  %629 = fmul double %458, %621
  %630 = fmul double %457, %621
  %631 = fmul double %621, -6.000000e+00
  %632 = tail call double @llvm.fmuladd.f64(double %631, double %363, double %628)
  %633 = fmul double %458, %632
  %634 = fmul double %621, -3.000000e+00
  %635 = tail call double @llvm.fmuladd.f64(double %634, double %363, double %628)
  %636 = fmul double %457, %635
  br label %637

637:                                              ; preds = %497, %627, %464, %485
  %638 = phi double [ %484, %464 ], [ %493, %485 ], [ %609, %497 ], [ %636, %627 ]
  %639 = phi double [ %475, %464 ], [ %489, %485 ], [ %603, %497 ], [ %630, %627 ]
  %640 = phi double [ %479, %464 ], [ %491, %485 ], [ %606, %497 ], [ %633, %627 ]
  %641 = phi double [ %469, %464 ], [ %487, %485 ], [ %602, %497 ], [ %629, %627 ]
  %642 = getelementptr inbounds double, ptr %331, i64 5
  store double %451, ptr %348, align 8, !tbaa !58
  %643 = getelementptr inbounds double, ptr %331, i64 6
  store double %453, ptr %642, align 8, !tbaa !58
  %644 = getelementptr inbounds double, ptr %332, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %643, i8 0, i64 16, i1 false)
  store double %449, ptr %347, align 8, !tbaa !58
  %645 = getelementptr inbounds double, ptr %332, i64 6
  store double %454, ptr %644, align 8, !tbaa !58
  %646 = getelementptr inbounds double, ptr %333, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %645, i8 0, i64 16, i1 false)
  store double %447, ptr %346, align 8, !tbaa !58
  %647 = getelementptr inbounds double, ptr %333, i64 6
  store double %455, ptr %646, align 8, !tbaa !58
  %648 = getelementptr inbounds double, ptr %334, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %647, i8 0, i64 16, i1 false)
  store double %641, ptr %345, align 8, !tbaa !58
  %649 = getelementptr inbounds double, ptr %334, i64 6
  store double %640, ptr %648, align 8, !tbaa !58
  %650 = getelementptr inbounds double, ptr %335, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %649, i8 0, i64 16, i1 false)
  store double %639, ptr %344, align 8, !tbaa !58
  %651 = getelementptr inbounds double, ptr %335, i64 6
  store double %638, ptr %650, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %651, i8 0, i64 16, i1 false)
  %652 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %653 = fadd double %358, %652
  store double %653, ptr %343, align 8, !tbaa !58
  %654 = add nuw i32 %330, 1
  %655 = icmp eq i32 %330, %327
  br i1 %655, label %656, label %328, !prof !115, !llvm.loop !116

656:                                              ; preds = %637
  %657 = icmp eq i32 %360, 0
  br i1 %657, label %658, label %659, !prof !89

658:                                              ; preds = %656
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str.17)
  br label %659

659:                                              ; preds = %658, %656
  %660 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %661 = sext i32 %360 to i64
  %662 = getelementptr inbounds double, ptr %660, i64 %661
  %663 = load double, ptr %662, align 8, !tbaa !58
  %664 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %665 = fadd double %323, %664
  %666 = fcmp ogt double %663, %665
  br i1 %666, label %667, label %668, !prof !89

667:                                              ; preds = %659
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str.18)
  br label %668

668:                                              ; preds = %667, %659
  %669 = shl nsw i32 %360, 2
  %670 = sext i32 %669 to i64
  %671 = or disjoint i32 %669, 1
  %672 = sext i32 %671 to i64
  %673 = shl nsw i32 %360, 2
  %674 = sext i32 %673 to i64
  %675 = or disjoint i32 %673, 1
  %676 = sext i32 %675 to i64
  %677 = sext i32 %360 to i64
  %678 = zext i32 %276 to i64
  br label %687

679:                                              ; preds = %811
  %680 = shl nsw i32 %277, 2
  %681 = load ptr, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  %682 = load ptr, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  %683 = load ptr, ptr @_ZN20ComputeNonbondedUtil10corr_tableE, align 8, !tbaa !43
  %684 = load ptr, ptr @_ZN20ComputeNonbondedUtil10slow_tableE, align 8, !tbaa !43
  %685 = load ptr, ptr @_ZN20ComputeNonbondedUtil10full_tableE, align 8, !tbaa !43
  %686 = zext i32 %680 to i64
  br label %825

687:                                              ; preds = %668, %811
  %688 = phi i32 [ 0, %668 ], [ %701, %811 ]
  %689 = phi i32 [ 0, %668 ], [ %812, %811 ]
  switch i32 %689, label %700 [
    i32 0, label %690
    i32 1, label %692
    i32 2, label %694
    i32 3, label %696
    i32 4, label %698
  ], !prof !117

690:                                              ; preds = %687
  %691 = load ptr, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  br label %700

692:                                              ; preds = %687
  %693 = load ptr, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  br label %700

694:                                              ; preds = %687
  %695 = load ptr, ptr @_ZN20ComputeNonbondedUtil10slow_tableE, align 8, !tbaa !43
  br label %700

696:                                              ; preds = %687
  %697 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwa_tableE, align 8, !tbaa !43
  br label %700

698:                                              ; preds = %687
  %699 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwb_tableE, align 8, !tbaa !43
  br label %700

700:                                              ; preds = %687, %698, %696, %694, %692, %690
  %701 = phi i32 [ %688, %687 ], [ 1, %698 ], [ 1, %696 ], [ 0, %694 ], [ 0, %692 ], [ 1, %690 ]
  %702 = phi ptr [ null, %687 ], [ %699, %698 ], [ %697, %696 ], [ %695, %694 ], [ %693, %692 ], [ %691, %690 ]
  %703 = getelementptr inbounds double, ptr %702, i64 4
  %704 = load double, ptr %703, align 8, !tbaa !58
  %705 = getelementptr inbounds double, ptr %702, i64 5
  %706 = load double, ptr %705, align 8, !tbaa !58
  %707 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %708 = fmul double %707, 1.562500e-02
  %709 = fneg double %706
  %710 = tail call double @llvm.fmuladd.f64(double %709, double %708, double %704)
  store double %710, ptr %702, align 8, !tbaa !58
  %711 = getelementptr inbounds double, ptr %702, i64 1
  store double %706, ptr %711, align 8, !tbaa !58
  %712 = getelementptr inbounds double, ptr %702, i64 2
  %713 = icmp ne i32 %701, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %712, i8 0, i64 16, i1 false)
  br i1 %713, label %714, label %726, !prof !118

714:                                              ; preds = %700
  %715 = getelementptr inbounds double, ptr %702, i64 %670
  %716 = load double, ptr %715, align 8, !tbaa !58
  %717 = getelementptr inbounds double, ptr %702, i64 %672
  %718 = load double, ptr %717, align 8, !tbaa !58
  %719 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %720 = getelementptr inbounds double, ptr %719, i64 %661
  %721 = load double, ptr %720, align 8, !tbaa !58
  %722 = load double, ptr %719, align 8, !tbaa !58
  %723 = fsub double %721, %722
  %724 = fneg double %718
  %725 = tail call double @llvm.fmuladd.f64(double %724, double %723, double %716)
  store double %725, ptr %702, align 8, !tbaa !58
  store double %718, ptr %711, align 8, !tbaa !58
  br label %726

726:                                              ; preds = %700, %714
  %727 = getelementptr inbounds double, ptr %702, i64 %674
  %728 = getelementptr inbounds double, ptr %702, i64 %676
  br label %729

729:                                              ; preds = %726, %786
  %730 = phi i64 [ 0, %726 ], [ %740, %786 ]
  %731 = phi ptr [ %702, %726 ], [ %768, %786 ]
  %732 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %733 = trunc i64 %730 to i32
  %734 = lshr i32 %733, 6
  %735 = shl nuw i32 1, %734
  %736 = sitofp i32 %735 to double
  %737 = fmul double %732, %736
  %738 = fmul double %737, 1.562500e-02
  %739 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %740 = add nuw nsw i64 %730, 1
  %741 = getelementptr inbounds double, ptr %739, i64 %740
  %742 = load double, ptr %741, align 8, !tbaa !58
  %743 = getelementptr inbounds double, ptr %739, i64 %730
  %744 = load double, ptr %743, align 8, !tbaa !58
  %745 = fadd double %738, %744
  %746 = fcmp une double %742, %745
  br i1 %746, label %747, label %748, !prof !119

747:                                              ; preds = %729
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str.25)
  br label %748

748:                                              ; preds = %747, %729
  %749 = icmp slt i64 %740, %677
  %750 = and i1 %713, %749
  br i1 %750, label %751, label %764, !prof !120

751:                                              ; preds = %748
  %752 = load double, ptr %727, align 8, !tbaa !58
  %753 = load double, ptr %728, align 8, !tbaa !58
  %754 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %755 = getelementptr inbounds double, ptr %754, i64 %661
  %756 = load double, ptr %755, align 8, !tbaa !58
  %757 = getelementptr inbounds double, ptr %754, i64 %740
  %758 = load double, ptr %757, align 8, !tbaa !58
  %759 = fsub double %756, %758
  %760 = fneg double %753
  %761 = tail call double @llvm.fmuladd.f64(double %760, double %759, double %752)
  %762 = getelementptr inbounds double, ptr %731, i64 4
  store double %761, ptr %762, align 8, !tbaa !58
  %763 = getelementptr inbounds double, ptr %731, i64 5
  store double %753, ptr %763, align 8, !tbaa !58
  br label %764

764:                                              ; preds = %751, %748
  %765 = load double, ptr %731, align 8, !tbaa !58
  %766 = getelementptr inbounds double, ptr %731, i64 1
  %767 = load double, ptr %766, align 8, !tbaa !58
  %768 = getelementptr inbounds double, ptr %731, i64 4
  %769 = load double, ptr %768, align 8, !tbaa !58
  %770 = getelementptr inbounds double, ptr %731, i64 5
  %771 = load double, ptr %770, align 8, !tbaa !58
  %772 = fsub double %769, %765
  %773 = tail call double @llvm.fmuladd.f64(double %767, double 2.000000e+00, double %771)
  %774 = fneg double %738
  %775 = fmul double %773, %774
  %776 = tail call double @llvm.fmuladd.f64(double %772, double 3.000000e+00, double %775)
  %777 = fmul double %738, %738
  %778 = fdiv double %776, %777
  %779 = fadd double %767, %771
  %780 = fmul double %738, %779
  %781 = tail call double @llvm.fmuladd.f64(double %772, double -2.000000e+00, double %780)
  %782 = fmul double %738, %777
  %783 = fdiv double %781, %782
  %784 = fsub double %765, %769
  %785 = fsub double %767, %771
  br label %790

786:                                              ; preds = %790
  %787 = getelementptr inbounds double, ptr %731, i64 2
  store double %805, ptr %787, align 8, !tbaa !58
  %788 = getelementptr inbounds double, ptr %731, i64 3
  store double %808, ptr %788, align 8, !tbaa !58
  %789 = icmp ult i64 %740, %678
  br i1 %789, label %729, label %811, !prof !121, !llvm.loop !122

790:                                              ; preds = %764, %790
  %791 = phi i32 [ 0, %764 ], [ %809, %790 ]
  %792 = phi double [ %783, %764 ], [ %808, %790 ]
  %793 = phi double [ %778, %764 ], [ %805, %790 ]
  %794 = tail call double @llvm.fmuladd.f64(double %792, double %738, double %793)
  %795 = tail call double @llvm.fmuladd.f64(double %794, double %738, double %767)
  %796 = tail call double @llvm.fmuladd.f64(double %795, double %738, double %784)
  %797 = fmul double %792, 3.000000e+00
  %798 = fmul double %793, 2.000000e+00
  %799 = tail call double @llvm.fmuladd.f64(double %797, double %738, double %798)
  %800 = tail call double @llvm.fmuladd.f64(double %799, double %738, double %785)
  %801 = fmul double %738, %800
  %802 = fneg double %801
  %803 = tail call double @llvm.fmuladd.f64(double %796, double 3.000000e+00, double %802)
  %804 = fdiv double %803, %777
  %805 = fsub double %793, %804
  %806 = tail call double @llvm.fmuladd.f64(double %796, double -2.000000e+00, double %801)
  %807 = fdiv double %806, %782
  %808 = fsub double %792, %807
  %809 = add nuw nsw i32 %791, 1
  %810 = icmp eq i32 %791, 0
  br i1 %810, label %790, label %786, !prof !123, !llvm.loop !124

811:                                              ; preds = %786
  %812 = add nuw nsw i32 %689, 1
  %813 = icmp eq i32 %812, 5
  br i1 %813, label %679, label %687, !prof !125, !llvm.loop !126

814:                                              ; preds = %825
  %815 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwa_tableE, align 8, !tbaa !43
  %816 = load ptr, ptr @_ZN20ComputeNonbondedUtil13table_noshortE, align 8, !tbaa !43
  %817 = load ptr, ptr @_ZN20ComputeNonbondedUtil11table_shortE, align 8, !tbaa !43
  %818 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwb_tableE, align 8, !tbaa !43
  %819 = load ptr, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  %820 = load ptr, ptr @_ZN20ComputeNonbondedUtil10corr_tableE, align 8, !tbaa !43
  %821 = load ptr, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  %822 = load ptr, ptr @_ZN20ComputeNonbondedUtil10full_tableE, align 8, !tbaa !43
  %823 = add i32 %275, 257
  %824 = zext i32 %823 to i64
  br label %840

825:                                              ; preds = %679, %825
  %826 = phi i64 [ 0, %679 ], [ %838, %825 ]
  %827 = getelementptr inbounds double, ptr %681, i64 %826
  %828 = load double, ptr %827, align 8, !tbaa !58
  %829 = getelementptr inbounds double, ptr %682, i64 %826
  %830 = load double, ptr %829, align 8, !tbaa !58
  %831 = fadd double %828, %830
  %832 = getelementptr inbounds double, ptr %683, i64 %826
  store double %831, ptr %832, align 8, !tbaa !58
  %833 = load double, ptr %827, align 8, !tbaa !58
  %834 = getelementptr inbounds double, ptr %684, i64 %826
  %835 = load double, ptr %834, align 8, !tbaa !58
  %836 = fadd double %833, %835
  %837 = getelementptr inbounds double, ptr %685, i64 %826
  store double %836, ptr %837, align 8, !tbaa !58
  %838 = add nuw nsw i64 %826, 1
  %839 = icmp eq i64 %838, %686
  br i1 %839, label %814, label %825, !prof !127, !llvm.loop !128

840:                                              ; preds = %814, %840
  %841 = phi i64 [ 0, %814 ], [ %966, %840 ]
  %842 = shl nsw i64 %841, 2
  %843 = or disjoint i64 %842, 3
  %844 = getelementptr inbounds double, ptr %815, i64 %843
  %845 = load double, ptr %844, align 8, !tbaa !58
  %846 = fmul double %845, -6.000000e+00
  %847 = shl nsw i64 %841, 4
  %848 = getelementptr inbounds double, ptr %816, i64 %847
  store double %846, ptr %848, align 8, !tbaa !58
  %849 = getelementptr inbounds double, ptr %817, i64 %847
  store double %846, ptr %849, align 8, !tbaa !58
  %850 = getelementptr inbounds double, ptr %818, i64 %843
  %851 = load double, ptr %850, align 8, !tbaa !58
  %852 = fmul double %851, -6.000000e+00
  %853 = or disjoint i64 %847, 2
  %854 = getelementptr inbounds double, ptr %816, i64 %853
  store double %852, ptr %854, align 8, !tbaa !58
  %855 = getelementptr inbounds double, ptr %817, i64 %853
  store double %852, ptr %855, align 8, !tbaa !58
  %856 = or disjoint i64 %842, 1
  %857 = getelementptr inbounds double, ptr %815, i64 %856
  %858 = load double, ptr %857, align 8, !tbaa !58
  %859 = fmul double %858, -2.000000e+00
  %860 = or disjoint i64 %847, 4
  %861 = getelementptr inbounds double, ptr %816, i64 %860
  store double %859, ptr %861, align 8, !tbaa !58
  %862 = getelementptr inbounds double, ptr %817, i64 %860
  store double %859, ptr %862, align 8, !tbaa !58
  %863 = getelementptr inbounds double, ptr %818, i64 %856
  %864 = load double, ptr %863, align 8, !tbaa !58
  %865 = fmul double %864, -2.000000e+00
  %866 = or disjoint i64 %847, 6
  %867 = getelementptr inbounds double, ptr %816, i64 %866
  store double %865, ptr %867, align 8, !tbaa !58
  %868 = getelementptr inbounds double, ptr %817, i64 %866
  store double %865, ptr %868, align 8, !tbaa !58
  %869 = or disjoint i64 %842, 2
  %870 = getelementptr inbounds double, ptr %815, i64 %869
  %871 = load double, ptr %870, align 8, !tbaa !58
  %872 = fmul double %871, -4.000000e+00
  %873 = or disjoint i64 %847, 1
  %874 = getelementptr inbounds double, ptr %816, i64 %873
  store double %872, ptr %874, align 8, !tbaa !58
  %875 = getelementptr inbounds double, ptr %817, i64 %873
  store double %872, ptr %875, align 8, !tbaa !58
  %876 = getelementptr inbounds double, ptr %818, i64 %869
  %877 = load double, ptr %876, align 8, !tbaa !58
  %878 = fmul double %877, -4.000000e+00
  %879 = or disjoint i64 %847, 3
  %880 = getelementptr inbounds double, ptr %816, i64 %879
  store double %878, ptr %880, align 8, !tbaa !58
  %881 = getelementptr inbounds double, ptr %817, i64 %879
  store double %878, ptr %881, align 8, !tbaa !58
  %882 = getelementptr inbounds double, ptr %815, i64 %842
  %883 = load double, ptr %882, align 8, !tbaa !58
  %884 = fneg double %883
  %885 = or disjoint i64 %847, 5
  %886 = getelementptr inbounds double, ptr %816, i64 %885
  store double %884, ptr %886, align 8, !tbaa !58
  %887 = getelementptr inbounds double, ptr %817, i64 %885
  store double %884, ptr %887, align 8, !tbaa !58
  %888 = getelementptr inbounds double, ptr %818, i64 %842
  %889 = load double, ptr %888, align 8, !tbaa !58
  %890 = fneg double %889
  %891 = or disjoint i64 %847, 7
  %892 = getelementptr inbounds double, ptr %816, i64 %891
  store double %890, ptr %892, align 8, !tbaa !58
  %893 = getelementptr inbounds double, ptr %817, i64 %891
  store double %890, ptr %893, align 8, !tbaa !58
  %894 = getelementptr inbounds double, ptr %819, i64 %843
  %895 = load double, ptr %894, align 8, !tbaa !58
  %896 = fmul double %895, -6.000000e+00
  %897 = or disjoint i64 %847, 8
  %898 = getelementptr inbounds double, ptr %817, i64 %897
  store double %896, ptr %898, align 8, !tbaa !58
  %899 = getelementptr inbounds double, ptr %819, i64 %869
  %900 = load double, ptr %899, align 8, !tbaa !58
  %901 = fmul double %900, -4.000000e+00
  %902 = or disjoint i64 %847, 9
  %903 = getelementptr inbounds double, ptr %817, i64 %902
  store double %901, ptr %903, align 8, !tbaa !58
  %904 = getelementptr inbounds double, ptr %819, i64 %856
  %905 = load double, ptr %904, align 8, !tbaa !58
  %906 = fmul double %905, -2.000000e+00
  %907 = or disjoint i64 %847, 10
  %908 = getelementptr inbounds double, ptr %817, i64 %907
  store double %906, ptr %908, align 8, !tbaa !58
  %909 = getelementptr inbounds double, ptr %819, i64 %842
  %910 = load double, ptr %909, align 8, !tbaa !58
  %911 = fneg double %910
  %912 = or disjoint i64 %847, 11
  %913 = getelementptr inbounds double, ptr %817, i64 %912
  store double %911, ptr %913, align 8, !tbaa !58
  %914 = getelementptr inbounds double, ptr %820, i64 %843
  %915 = load double, ptr %914, align 8, !tbaa !58
  %916 = fmul double %915, -6.000000e+00
  %917 = getelementptr inbounds double, ptr %816, i64 %897
  store double %916, ptr %917, align 8, !tbaa !58
  %918 = getelementptr inbounds double, ptr %820, i64 %869
  %919 = load double, ptr %918, align 8, !tbaa !58
  %920 = fmul double %919, -4.000000e+00
  %921 = getelementptr inbounds double, ptr %816, i64 %902
  store double %920, ptr %921, align 8, !tbaa !58
  %922 = getelementptr inbounds double, ptr %820, i64 %856
  %923 = load double, ptr %922, align 8, !tbaa !58
  %924 = fmul double %923, -2.000000e+00
  %925 = getelementptr inbounds double, ptr %816, i64 %907
  store double %924, ptr %925, align 8, !tbaa !58
  %926 = getelementptr inbounds double, ptr %820, i64 %842
  %927 = load double, ptr %926, align 8, !tbaa !58
  %928 = fneg double %927
  %929 = getelementptr inbounds double, ptr %816, i64 %912
  store double %928, ptr %929, align 8, !tbaa !58
  %930 = getelementptr inbounds double, ptr %821, i64 %843
  %931 = load double, ptr %930, align 8, !tbaa !58
  %932 = fmul double %931, -6.000000e+00
  %933 = or disjoint i64 %847, 12
  %934 = getelementptr inbounds double, ptr %817, i64 %933
  store double %932, ptr %934, align 8, !tbaa !58
  %935 = getelementptr inbounds double, ptr %821, i64 %869
  %936 = load double, ptr %935, align 8, !tbaa !58
  %937 = fmul double %936, -4.000000e+00
  %938 = or disjoint i64 %847, 13
  %939 = getelementptr inbounds double, ptr %817, i64 %938
  store double %937, ptr %939, align 8, !tbaa !58
  %940 = getelementptr inbounds double, ptr %821, i64 %856
  %941 = load double, ptr %940, align 8, !tbaa !58
  %942 = fmul double %941, -2.000000e+00
  %943 = or disjoint i64 %847, 14
  %944 = getelementptr inbounds double, ptr %817, i64 %943
  store double %942, ptr %944, align 8, !tbaa !58
  %945 = getelementptr inbounds double, ptr %821, i64 %842
  %946 = load double, ptr %945, align 8, !tbaa !58
  %947 = fneg double %946
  %948 = or disjoint i64 %847, 15
  %949 = getelementptr inbounds double, ptr %817, i64 %948
  store double %947, ptr %949, align 8, !tbaa !58
  %950 = getelementptr inbounds double, ptr %822, i64 %843
  %951 = load double, ptr %950, align 8, !tbaa !58
  %952 = fmul double %951, -6.000000e+00
  %953 = getelementptr inbounds double, ptr %816, i64 %933
  store double %952, ptr %953, align 8, !tbaa !58
  %954 = getelementptr inbounds double, ptr %822, i64 %869
  %955 = load double, ptr %954, align 8, !tbaa !58
  %956 = fmul double %955, -4.000000e+00
  %957 = getelementptr inbounds double, ptr %816, i64 %938
  store double %956, ptr %957, align 8, !tbaa !58
  %958 = getelementptr inbounds double, ptr %822, i64 %856
  %959 = load double, ptr %958, align 8, !tbaa !58
  %960 = fmul double %959, -2.000000e+00
  %961 = getelementptr inbounds double, ptr %816, i64 %943
  store double %960, ptr %961, align 8, !tbaa !58
  %962 = getelementptr inbounds double, ptr %822, i64 %842
  %963 = load double, ptr %962, align 8, !tbaa !58
  %964 = fneg double %963
  %965 = getelementptr inbounds double, ptr %816, i64 %948
  store double %964, ptr %965, align 8, !tbaa !58
  %966 = add nuw nsw i64 %841, 1
  %967 = icmp eq i64 %966, %824
  br i1 %967, label %968, label %840, !prof !129, !llvm.loop !130

968:                                              ; preds = %840
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_Z8NAMD_diePKc(ptr noundef) local_unnamed_addr #0

declare void @_ZN20ComputeNonbondedUtil20calc_pair_energy_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil20calc_self_energy_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_fepEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_fepEP9nonbonded(ptr noundef) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @_ZN20ComputeNonbondedUtil13calc_pair_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil20calc_pair_energy_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil13calc_self_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil20calc_self_energy_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil23calc_pair_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil23calc_self_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil29calc_pair_merge_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil29calc_self_merge_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil28calc_pair_slow_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil28calc_self_slow_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_lesEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil15calc_pair_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil22calc_pair_energy_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil15calc_self_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil22calc_self_energy_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil25calc_pair_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil32calc_pair_energy_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil25calc_self_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil32calc_self_energy_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil31calc_pair_merge_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil38calc_pair_energy_merge_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil31calc_self_merge_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil38calc_self_energy_merge_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_pair_slow_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil37calc_pair_energy_slow_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_self_slow_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil37calc_self_energy_slow_fullelect_pprofEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil20calc_pair_energy_intEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil20calc_self_energy_intEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_intEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_intEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_intEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_intEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil9calc_pairEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil16calc_pair_energyEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil9calc_selfEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil16calc_self_energyEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil19calc_pair_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil26calc_pair_energy_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil19calc_self_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil26calc_self_energy_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil25calc_pair_merge_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil32calc_pair_energy_merge_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil25calc_self_merge_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil32calc_self_energy_merge_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil24calc_pair_slow_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil31calc_pair_energy_slow_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil24calc_self_slow_fullelectEP9nonbonded(ptr noundef) #0

declare void @_ZN20ComputeNonbondedUtil31calc_self_energy_slow_fullelectEP9nonbonded(ptr noundef) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN7LJTableC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare double @erfc(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ComputeNonbondedUtil.C() #9 section ".text.startup" !prof !42 !PGOFuncName !131 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 30883462369}
!8 = !{!"MaxCount", i64 4281837148}
!9 = !{!"MaxInternalCount", i64 4281837148}
!10 = !{!"MaxFunctionCount", i64 1416892399}
!11 = !{!"NumCounts", i64 6403}
!12 = !{!"NumFunctions", i64 139}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 4281837148, i32 1}
!18 = !{i32 100000, i64 4281837148, i32 1}
!19 = !{i32 200000, i64 1264975759, i32 8}
!20 = !{i32 300000, i64 1264975759, i32 8}
!21 = !{i32 400000, i64 1264975759, i32 8}
!22 = !{i32 500000, i64 894261817, i32 14}
!23 = !{i32 600000, i64 894261817, i32 14}
!24 = !{i32 700000, i64 436233492, i32 22}
!25 = !{i32 800000, i64 148205155, i32 32}
!26 = !{i32 900000, i64 76129528, i32 61}
!27 = !{i32 950000, i64 24830040, i32 96}
!28 = !{i32 990000, i64 3860064, i32 233}
!29 = !{i32 999000, i64 440050, i32 440}
!30 = !{i32 999900, i64 92080, i32 568}
!31 = !{i32 999990, i64 9360, i32 655}
!32 = !{i32 999999, i64 1296, i32 707}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @_Znam, i64 1}
!36 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @erfc, i64 774}
!37 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @exp, i64 774}
!38 = !{ptr @_GLOBAL__sub_I_ComputeNonbondedUtil.C, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!39 = !{ptr @_GLOBAL__sub_I_ComputeNonbondedUtil.C, ptr @__cxa_atexit, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !51, i64 300}
!48 = !{!"_ZTS13SimParameters", !49, i64 0, !49, i64 24, !49, i64 48, !49, i64 72, !51, i64 96, !51, i64 100, !50, i64 104, !51, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !51, i64 144, !50, i64 152, !50, i64 160, !51, i64 168, !50, i64 176, !50, i64 184, !51, i64 192, !51, i64 196, !51, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !51, i64 228, !51, i64 232, !51, i64 236, !51, i64 240, !51, i64 244, !51, i64 248, !51, i64 252, !51, i64 256, !50, i64 264, !50, i64 272, !51, i64 280, !50, i64 288, !51, i64 296, !51, i64 300, !50, i64 304, !50, i64 312, !50, i64 320, !51, i64 328, !50, i64 336, !51, i64 344, !51, i64 348, !51, i64 352, !51, i64 356, !51, i64 360, !50, i64 368, !50, i64 376, !50, i64 384, !50, i64 392, !51, i64 400, !51, i64 404, !50, i64 408, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !50, i64 432, !51, i64 440, !51, i64 444, !52, i64 448}
!49 = !{!"_ZTS6Vector", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"double", !45, i64 0}
!51 = !{!"int", !45, i64 0}
!52 = !{!"_ZTS7Lattice", !49, i64 0, !49, i64 24, !49, i64 48, !49, i64 72, !49, i64 96, !49, i64 120, !49, i64 144, !51, i64 168, !51, i64 172, !51, i64 176}
!53 = !{!51, !51, i64 0}
!54 = !{!48, !51, i64 240}
!55 = !{!"branch_weights", i32 1, i32 0}
!56 = !{!48, !51, i64 244}
!57 = !{!48, !50, i64 136}
!58 = !{!50, !50, i64 0}
!59 = !{!48, !50, i64 160}
!60 = !{!48, !50, i64 288}
!61 = !{!48, !51, i64 344}
!62 = !{!48, !51, i64 348}
!63 = !{!48, !51, i64 352}
!64 = !{!48, !51, i64 356}
!65 = !{!48, !51, i64 216}
!66 = !{!48, !51, i64 360}
!67 = !{!48, !51, i64 200}
!68 = !{!48, !50, i64 368}
!69 = !{!48, !50, i64 376}
!70 = !{!48, !50, i64 384}
!71 = !{!48, !50, i64 392}
!72 = !{!48, !51, i64 400}
!73 = !{!48, !51, i64 224}
!74 = !{!48, !51, i64 236}
!75 = !{!48, !51, i64 204}
!76 = !{!48, !51, i64 404}
!77 = !{!48, !51, i64 416}
!78 = !{!48, !50, i64 408}
!79 = !{!48, !50, i64 176}
!80 = !{!48, !50, i64 184}
!81 = !{!48, !51, i64 220}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !83, !84}
!86 = !{!48, !51, i64 208}
!87 = !{!48, !51, i64 420}
!88 = !{!48, !50, i64 104}
!89 = !{!"branch_weights", i32 0, i32 1}
!90 = !{!48, !50, i64 128}
!91 = !{!48, !51, i64 112}
!92 = !{!48, !50, i64 120}
!93 = !{!48, !51, i64 144}
!94 = !{!48, !50, i64 152}
!95 = !{!48, !51, i64 440}
!96 = !{!48, !51, i64 256}
!97 = !{!48, !51, i64 424}
!98 = !{!48, !50, i64 272}
!99 = !{!48, !51, i64 252}
!100 = !{!48, !51, i64 248}
!101 = !{!48, !51, i64 280}
!102 = !{!"branch_weights", i32 0, i32 0, i32 1, i32 0, i32 0}
!103 = !{!"branch_weights", i32 127, i32 385}
!104 = distinct !{!104, !83, !84}
!105 = !{!"branch_weights", i32 127, i32 1}
!106 = !{!"branch_weights", i32 897, i32 127}
!107 = distinct !{!107, !83, !84}
!108 = !{!48, !50, i64 432}
!109 = !{!"branch_weights", i32 704, i32 64}
!110 = !{!"branch_weights", i32 0, i32 768}
!111 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 768, i32 0}
!112 = !{!"branch_weights", i32 768, i32 0}
!113 = !{!48, !51, i64 444}
!114 = !{!"branch_weights", i32 92, i32 676}
!115 = !{!"branch_weights", i32 127, i32 98177}
!116 = distinct !{!116, !83, !84}
!117 = !{!"branch_weights", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1}
!118 = !{!"branch_weights", i32 3, i32 2}
!119 = !{!"branch_weights", i32 0, i32 3840}
!120 = !{!"branch_weights", i32 189, i32 3651}
!121 = !{!"branch_weights", i32 122721, i32 159}
!122 = distinct !{!122, !83, !84}
!123 = !{!"branch_weights", i32 3840, i32 3840}
!124 = distinct !{!124, !83, !84}
!125 = !{!"branch_weights", i32 1, i32 4}
!126 = distinct !{!126, !83, !84}
!127 = !{!"branch_weights", i32 1, i32 3075}
!128 = distinct !{!128, !83, !84}
!129 = !{!"branch_weights", i32 1, i32 768}
!130 = distinct !{!130, !83, !84}
!131 = !{!"ComputeNonbondedUtil.C;_GLOBAL__sub_I_ComputeNonbondedUtil.C"}
