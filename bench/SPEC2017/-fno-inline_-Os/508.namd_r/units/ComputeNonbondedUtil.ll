; ModuleID = 'ComputeNonbondedUtil.C'
source_filename = "ComputeNonbondedUtil.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.SimParameters = type { %class.Vector, %class.Vector, %class.Vector, %class.Vector, i32, i32, double, i32, double, double, double, i32, double, double, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, double, i32, i32, double, double, double, i32, double, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, double, i32, i32, i32, i32, double, i32, i32, %class.Lattice }
%class.Vector = type { double, double, double }
%class.Lattice = type <{ %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, %class.Vector, i32, i32, i32, [4 x i8] }>

$_Z8CkMyRankv = comdat any

$_Z6CkMyPev = comdat any

$_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_ = comdat any

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
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"Info: \00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"NONBONDED TABLE R-SQUARED SPACING: \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"NONBONDED TABLE SIZE: \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" POINTS\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Failed to find table entry for r2 == r2_limit\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Found bad table entry for r2 == r2_limit\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"XXXX\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"FAST\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"SCOR\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"SLOW\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"VDWA\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"VDWB\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Bad table delta calculation.\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"ABSOLUTE IMPRECISION IN \00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c" TABLE ENERGY: \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" AT \00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"RELATIVE IMPRECISION IN \00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" TABLE FORCE: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ComputeNonbondedUtil.C, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN20ComputeNonbondedUtil10calc_errorEP9nonbonded(ptr nocapture readnone %0) #4 align 2 !prof !41 {
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str) #12
  ret void
}

; Function Attrs: optsize
declare void @_Z8NAMD_bugPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr %2, ptr @_ZN20ComputeNonbondedUtil7ljTableE, align 8, !tbaa !43
  %4 = tail call noundef i32 @_Z8CkMyRankv() #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %1175, !prof !47

6:                                                ; preds = %3
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
  %7 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 39
  %8 = load i32, ptr %7, align 4, !tbaa !48
  store i32 %8, ptr @_ZN20ComputeNonbondedUtil8commOnlyE, align 4, !tbaa !54
  %9 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 29
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !47

12:                                               ; preds = %6
  %13 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i1 [ false, %6 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, ptr @_ZN20ComputeNonbondedUtil12fixedAtomsOnE, align 4, !tbaa !54
  %19 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 10
  %20 = load double, ptr %19, align 8, !tbaa !57
  store double %20, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %21 = fmul double %20, %20
  store double %21, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %22 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 13
  %23 = load double, ptr %22, align 8, !tbaa !59
  store double %23, ptr @_ZN20ComputeNonbondedUtil12pairlistdistE, align 8, !tbaa !58
  %24 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 37
  %25 = load double, ptr %24, align 8, !tbaa !60
  store double %25, ptr @_ZN20ComputeNonbondedUtil12hgroupcutoffE, align 8, !tbaa !58
  %26 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 45
  %27 = load i32, ptr %26, align 8, !tbaa !61
  store i32 %27, ptr @_ZN20ComputeNonbondedUtil9alchFepOnE, align 4, !tbaa !54
  %28 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 46
  %29 = load i32, ptr %28, align 4, !tbaa !62
  store i32 %29, ptr @_ZN20ComputeNonbondedUtil14Fep_WCA_repuOnE, align 4, !tbaa !54
  %30 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 47
  %31 = load i32, ptr %30, align 8, !tbaa !63
  store i32 %31, ptr @_ZN20ComputeNonbondedUtil14Fep_WCA_dispOnE, align 4, !tbaa !54
  %32 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 48
  %33 = load i32, ptr %32, align 4, !tbaa !64
  store i32 %33, ptr @_ZN20ComputeNonbondedUtil14alchThermIntOnE, align 4, !tbaa !54
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil11alchLambda2E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil10alchLambdaE, align 8, !tbaa !58
  %34 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 23
  %35 = load i32, ptr %34, align 8, !tbaa !65
  store i32 %35, ptr @_ZN20ComputeNonbondedUtil5lesOnE, align 4, !tbaa !54
  store i32 0, ptr @_ZN20ComputeNonbondedUtil9lesFactorE, align 4, !tbaa !54
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil10lesScalingE, align 8, !tbaa !58
  %36 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 49
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 19
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = sitofp i32 %39 to double
  store double %40, ptr @_ZN20ComputeNonbondedUtil17alchVdwShiftCoeffE, align 8, !tbaa !58
  %41 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 50
  %42 = load double, ptr %41, align 8, !tbaa !68
  store double %42, ptr @_ZN20ComputeNonbondedUtil9WCA_rcut1E, align 8, !tbaa !58
  %43 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 51
  %44 = load double, ptr %43, align 8, !tbaa !69
  store double %44, ptr @_ZN20ComputeNonbondedUtil9WCA_rcut2E, align 8, !tbaa !58
  %45 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 52
  %46 = load double, ptr %45, align 8, !tbaa !70
  store double %46, ptr @_ZN20ComputeNonbondedUtil16alchVdwLambdaEndE, align 8, !tbaa !58
  %47 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 53
  %48 = load double, ptr %47, align 8, !tbaa !71
  store double %48, ptr @_ZN20ComputeNonbondedUtil19alchElecLambdaStartE, align 8, !tbaa !58
  %49 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 54
  %50 = load i32, ptr %49, align 8, !tbaa !72
  store i32 %50, ptr @_ZN20ComputeNonbondedUtil12alchDecoupleE, align 4, !tbaa !54
  %51 = load ptr, ptr @_ZN20ComputeNonbondedUtil12lambda_tableE, align 8, !tbaa !43
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef nonnull %51) #14
  br label %54

54:                                               ; preds = %53, %16
  store ptr null, ptr @_ZN20ComputeNonbondedUtil12lambda_tableE, align 8, !tbaa !43
  %55 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 25
  %56 = load i32, ptr %55, align 8, !tbaa !73
  store i32 %56, ptr @_ZN20ComputeNonbondedUtil17pairInteractionOnE, align 4, !tbaa !54
  %57 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 28
  %58 = load i32, ptr %57, align 4, !tbaa !74
  store i32 %58, ptr @_ZN20ComputeNonbondedUtil19pairInteractionSelfE, align 4, !tbaa !54
  %59 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 20
  %60 = load i32, ptr %59, align 4, !tbaa !75
  store i32 %60, ptr @_ZN20ComputeNonbondedUtil17pressureProfileOnE, align 4, !tbaa !54
  %61 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 55
  %62 = load i32, ptr %61, align 4, !tbaa !76
  store i32 %62, ptr @_ZN20ComputeNonbondedUtil9accelMDOnE, align 4, !tbaa !54
  %63 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 57
  %64 = load i32, ptr %63, align 8, !tbaa !77
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %91, label %66, !prof !47

66:                                               ; preds = %54
  %67 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 56
  %68 = load double, ptr %67, align 8, !tbaa !78
  %69 = fcmp ogt double %68, 0.000000e+00
  %70 = zext i1 %69 to i32
  store i32 %70, ptr @_ZN20ComputeNonbondedUtil12drudeNbtholeE, align 4, !tbaa !54
  br i1 %69, label %71, label %92, !prof !79

71:                                               ; preds = %66
  %72 = load i32, ptr @_ZN20ComputeNonbondedUtil9alchFepOnE, align 4, !tbaa !54
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.1) #12
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, ptr @_ZN20ComputeNonbondedUtil14alchThermIntOnE, align 4, !tbaa !54
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.2) #12
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, ptr @_ZN20ComputeNonbondedUtil5lesOnE, align 4, !tbaa !54
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.3) #12
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i32, ptr @_ZN20ComputeNonbondedUtil17pairInteractionOnE, align 4, !tbaa !54
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.4) #12
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, ptr @_ZN20ComputeNonbondedUtil17pressureProfileOnE, align 4, !tbaa !54
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.5) #12
  br label %92

91:                                               ; preds = %54
  store i32 0, ptr @_ZN20ComputeNonbondedUtil12drudeNbtholeE, align 4, !tbaa !54
  br label %92

92:                                               ; preds = %91, %87, %90, %66
  %93 = load i32, ptr @_ZN20ComputeNonbondedUtil9alchFepOnE, align 4, !tbaa !54
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95, !prof !47

95:                                               ; preds = %92
  %96 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 15
  %97 = load double, ptr %96, align 8, !tbaa !80
  store double %97, ptr @_ZN20ComputeNonbondedUtil10alchLambdaE, align 8, !tbaa !58
  %98 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 16
  %99 = load double, ptr %98, align 8, !tbaa !81
  store double %99, ptr @_ZN20ComputeNonbondedUtil11alchLambda2E, align 8, !tbaa !58
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
  br label %163

100:                                              ; preds = %92
  %101 = load i32, ptr @_ZN20ComputeNonbondedUtil14alchThermIntOnE, align 4, !tbaa !54
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103, !prof !47

103:                                              ; preds = %100
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.6) #12
  br label %163

104:                                              ; preds = %100
  %105 = load i32, ptr @_ZN20ComputeNonbondedUtil5lesOnE, align 4, !tbaa !54
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %147, label %107, !prof !47

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 24
  %109 = load i32, ptr %108, align 4, !tbaa !82
  store i32 %109, ptr @_ZN20ComputeNonbondedUtil9lesFactorE, align 4, !tbaa !54
  %110 = sitofp i32 %109 to double
  %111 = fdiv double 1.000000e+00, %110
  store double %111, ptr @_ZN20ComputeNonbondedUtil10lesScalingE, align 8, !tbaa !58
  %112 = add nsw i32 %109, 1
  %113 = mul nsw i32 %112, %112
  %114 = zext nneg i32 %113 to i64
  %115 = shl nuw nsw i64 %114, 3
  %116 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %115) #15
  store ptr %116, ptr @_ZN20ComputeNonbondedUtil12lambda_tableE, align 8, !tbaa !43
  %117 = icmp slt i32 %109, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %107
  %119 = zext nneg i32 %112 to i64
  br label %120

120:                                              ; preds = %128, %118
  %121 = phi i64 [ 0, %118 ], [ %129, %128 ]
  %122 = icmp eq i64 %121, 0
  %123 = trunc i64 %121 to i32
  %124 = mul i32 %112, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr double, ptr %116, i64 %125
  br label %131

127:                                              ; preds = %128, %107
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
  br label %163

128:                                              ; preds = %142
  %129 = add nuw nsw i64 %121, 1
  %130 = icmp eq i64 %129, %119
  br i1 %130, label %127, label %120, !llvm.loop !83

131:                                              ; preds = %120, %142
  %132 = phi i64 [ 0, %120 ], [ %145, %142 ]
  %133 = or i64 %132, %121
  %134 = and i64 %133, 4294967295
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %131
  %137 = icmp eq i64 %132, 0
  %138 = or i1 %122, %137
  %139 = icmp eq i64 %121, %132
  %140 = or i1 %139, %138
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %136, %141, %131
  %143 = phi double [ %111, %141 ], [ 1.000000e+00, %131 ], [ 0.000000e+00, %136 ]
  %144 = getelementptr double, ptr %126, i64 %132
  store double %143, ptr %144, align 8, !tbaa !58
  %145 = add nuw nsw i64 %132, 1
  %146 = icmp eq i64 %145, %119
  br i1 %146, label %128, label %131, !llvm.loop !85

147:                                              ; preds = %104
  %148 = load i32, ptr @_ZN20ComputeNonbondedUtil17pressureProfileOnE, align 4, !tbaa !54
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150, !prof !47

150:                                              ; preds = %147
  %151 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 21
  %152 = load i32, ptr %151, align 8, !tbaa !86
  store i32 %152, ptr @_ZN20ComputeNonbondedUtil20pressureProfileSlabsE, align 4, !tbaa !54
  %153 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 58
  %154 = load i32, ptr %153, align 4, !tbaa !87
  store i32 %154, ptr @_ZN20ComputeNonbondedUtil24pressureProfileAtomTypesE, align 4, !tbaa !54
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
  br label %163

155:                                              ; preds = %147
  %156 = load i32, ptr @_ZN20ComputeNonbondedUtil17pairInteractionOnE, align 4, !tbaa !54
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158, !prof !47

158:                                              ; preds = %155
  store ptr @_ZN20ComputeNonbondedUtil20calc_pair_energy_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil20calc_self_energy_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil14calcSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullPairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil18calcFullSelfEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergePairEnergyE, align 8, !tbaa !43
  store ptr @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_intEP9nonbonded, ptr @_ZN20ComputeNonbondedUtil19calcMergeSelfEnergyE, align 8, !tbaa !43
  br label %163

159:                                              ; preds = %155
  %160 = icmp eq i32 %37, 0
  br i1 %160, label %162, label %161, !prof !47

161:                                              ; preds = %159
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.7) #12
  br label %163

162:                                              ; preds = %159
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
  br label %163

163:                                              ; preds = %103, %150, %161, %162, %158, %127, %95
  %164 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 6
  %165 = load double, ptr %164, align 8, !tbaa !88
  %166 = fdiv double 1.000000e+00, %165
  store double %166, ptr @_ZN20ComputeNonbondedUtil12dielectric_1E, align 8, !tbaa !58
  %167 = load ptr, ptr @_ZN20ComputeNonbondedUtil7ljTableE, align 8, !tbaa !43
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %174, !prof !79

169:                                              ; preds = %163
  %170 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
  invoke void @_ZN7LJTableC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %170) #12
          to label %171 unwind label %172

171:                                              ; preds = %169
  store ptr %170, ptr @_ZN20ComputeNonbondedUtil7ljTableE, align 8, !tbaa !43
  br label %174

172:                                              ; preds = %169
  %173 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %170) #14
  resume { ptr, i32 } %173

174:                                              ; preds = %171, %163
  store ptr %1, ptr @_ZN20ComputeNonbondedUtil3molE, align 8, !tbaa !43
  %175 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 9
  %176 = load double, ptr %175, align 8, !tbaa !89
  store double %176, ptr @_ZN20ComputeNonbondedUtil7scalingE, align 8, !tbaa !58
  %177 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 7
  %178 = load i32, ptr %177, align 8, !tbaa !90
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %183, !prof !47

180:                                              ; preds = %174
  %181 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 8
  %182 = load double, ptr %181, align 8, !tbaa !91
  br label %183

183:                                              ; preds = %174, %180
  %184 = phi double [ %182, %180 ], [ 1.000000e+00, %174 ]
  store double %184, ptr @_ZN20ComputeNonbondedUtil7scale14E, align 8, !tbaa !58
  %185 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 11
  %186 = load i32, ptr %185, align 8, !tbaa !92
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %215, label %188, !prof !79

188:                                              ; preds = %183
  %189 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 12
  %190 = load double, ptr %189, align 8, !tbaa !93
  store double %190, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %191 = fdiv double 1.000000e+00, %190
  store double %191, ptr @_ZN20ComputeNonbondedUtil10switchOn_1E, align 8, !tbaa !58
  %192 = fmul double %190, %190
  store double %192, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %193 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %194 = fsub double %193, %192
  %195 = fdiv double 1.000000e+00, %194
  store double %195, ptr @_ZN20ComputeNonbondedUtil2c0E, align 8, !tbaa !58
  %196 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 62
  %197 = load i32, ptr %196, align 8, !tbaa !94
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %221, label %199, !prof !47

199:                                              ; preds = %188
  %200 = fmul double %190, %192
  %201 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %202 = fmul double %193, %201
  %203 = fmul double %200, %200
  %204 = fmul double %202, %202
  %205 = fmul double %203, %204
  %206 = fdiv double -1.000000e+00, %205
  store double %206, ptr @_ZN20ComputeNonbondedUtil6v_vdwaE, align 8, !tbaa !58
  %207 = fmul double %200, %202
  %208 = fdiv double -1.000000e+00, %207
  store double %208, ptr @_ZN20ComputeNonbondedUtil6v_vdwbE, align 8, !tbaa !58
  %209 = fsub double %204, %203
  %210 = fdiv double %204, %209
  store double %210, ptr @_ZN20ComputeNonbondedUtil6k_vdwaE, align 8, !tbaa !58
  %211 = fsub double %202, %200
  %212 = fdiv double %202, %211
  store double %212, ptr @_ZN20ComputeNonbondedUtil6k_vdwbE, align 8, !tbaa !58
  %213 = fdiv double 1.000000e+00, %202
  store double %213, ptr @_ZN20ComputeNonbondedUtil8cutoff_3E, align 8, !tbaa !58
  %214 = fdiv double 1.000000e+00, %204
  store double %214, ptr @_ZN20ComputeNonbondedUtil8cutoff_6E, align 8, !tbaa !58
  br label %221

215:                                              ; preds = %183
  %216 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  store double %216, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %217 = fdiv double 1.000000e+00, %216
  store double %217, ptr @_ZN20ComputeNonbondedUtil10switchOn_1E, align 8, !tbaa !58
  %218 = fmul double %216, %216
  store double %218, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c0E, align 8, !tbaa !58
  %219 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %220 = fsub double %219, %218
  br label %221

221:                                              ; preds = %188, %199, %215
  %222 = phi double [ %194, %188 ], [ %194, %199 ], [ %220, %215 ]
  %223 = phi double [ %195, %188 ], [ %195, %199 ], [ 0.000000e+00, %215 ]
  %224 = fmul double %223, %223
  %225 = fmul double %223, %224
  store double %225, ptr @_ZN20ComputeNonbondedUtil2c1E, align 8, !tbaa !58
  %226 = fmul double %222, 3.000000e+00
  store double %226, ptr @_ZN20ComputeNonbondedUtil2c3E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c5E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c6E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c7E, align 8, !tbaa !58
  store double 0.000000e+00, ptr @_ZN20ComputeNonbondedUtil2c8E, align 8, !tbaa !58
  %227 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 33
  %228 = load i32, ptr %227, align 8, !tbaa !95
  %229 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 59
  %230 = load i32, ptr %229, align 8, !tbaa !96
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %236, label %232, !prof !79

232:                                              ; preds = %221
  %233 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 35
  %234 = load double, ptr %233, align 8, !tbaa !97
  store double %234, ptr @_ZN20ComputeNonbondedUtil8ewaldcofE, align 8, !tbaa !58
  %235 = fmul double %234, 0x3FF20DD750429B61
  store double %235, ptr @_ZN20ComputeNonbondedUtil11pi_ewaldcofE, align 8, !tbaa !58
  br label %236

236:                                              ; preds = %232, %221
  %237 = select i1 %187, i32 1, i32 2, !prof !79
  %238 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 32
  %239 = load i32, ptr %238, align 4, !tbaa !98
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248, !prof !47

241:                                              ; preds = %236
  %242 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 31
  %243 = load i32, ptr %242, align 8, !tbaa !99
  %244 = or i32 %243, %228
  %245 = icmp ne i32 %244, 0
  %246 = icmp ne i32 %230, 0
  %247 = select i1 %245, i1 true, i1 %246
  br i1 %247, label %248, label %255, !prof !100

248:                                              ; preds = %241, %236
  %249 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 36
  %250 = load i32, ptr %249, align 8, !tbaa !101
  switch i32 %250, label %254 [
    i32 3, label %255
    i32 2, label %251
    i32 1, label %252
    i32 0, label %253
  ], !prof !102

251:                                              ; preds = %248
  br label %255

252:                                              ; preds = %248
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.8) #12
  br label %255

253:                                              ; preds = %248
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.9) #12
  br label %255

254:                                              ; preds = %248
  tail call void @_Z8NAMD_diePKc(ptr noundef nonnull @.str.10) #12
  br label %255

255:                                              ; preds = %248, %251, %252, %253, %254, %241
  %256 = phi i32 [ %237, %254 ], [ %237, %253 ], [ %237, %252 ], [ 3, %251 ], [ %237, %241 ], [ 5, %248 ]
  store i32 4, ptr @_ZN20ComputeNonbondedUtil12r2_delta_expE, align 4, !tbaa !54
  store double 6.250000e-02, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  store double 1.600000e+01, ptr @_ZN20ComputeNonbondedUtil10r2_delta_1E, align 8, !tbaa !58
  %257 = tail call noundef i32 @_Z6CkMyPev() #12
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %266, !prof !79

259:                                              ; preds = %255
  %260 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11) #12
  %261 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %260, ptr noundef nonnull @.str.12) #12
  %262 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %263 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %261, double noundef %262) #12
  %264 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %263, ptr noundef nonnull @.str.13) #12
  %265 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %264, ptr noundef nonnull @.str.14) #12
  br label %266

266:                                              ; preds = %259, %255
  %267 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %268 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %269 = fadd double %267, %268
  %270 = fcmp ogt double %269, 1.000000e+00
  br i1 %270, label %271, label %277, !prof !103

271:                                              ; preds = %266, %271
  %272 = phi double [ %274, %271 ], [ 1.000000e+00, %266 ]
  %273 = phi i32 [ %275, %271 ], [ 0, %266 ]
  %274 = fmul double %272, 2.000000e+00
  %275 = add nuw nsw i32 %273, 1
  %276 = fcmp ogt double %269, %274
  br i1 %276, label %271, label %277, !prof !104, !llvm.loop !105

277:                                              ; preds = %271, %266
  %278 = phi i32 [ 0, %266 ], [ %275, %271 ]
  %279 = load i32, ptr @_ZN20ComputeNonbondedUtil12r2_delta_expE, align 4, !tbaa !54
  %280 = add i32 %279, %278
  %281 = shl i32 %280, 6
  %282 = or disjoint i32 %281, 1
  %283 = tail call noundef i32 @_Z6CkMyPev() #12
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %291, !prof !79

285:                                              ; preds = %277
  %286 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11) #12
  %287 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %286, ptr noundef nonnull @.str.15) #12
  %288 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %287, i32 noundef %282) #12
  %289 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %288, ptr noundef nonnull @.str.16) #12
  %290 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %289, ptr noundef nonnull @.str.14) #12
  br label %291

291:                                              ; preds = %285, %277
  %292 = load ptr, ptr @_ZN20ComputeNonbondedUtil11table_allocE, align 8, !tbaa !43
  %293 = icmp eq ptr %292, null
  br i1 %293, label %295, label %294, !prof !47

294:                                              ; preds = %291
  tail call void @_ZdaPv(ptr noundef nonnull %292) #14
  br label %295

295:                                              ; preds = %294, %291
  %296 = mul nsw i32 %282, 61
  %297 = add nsw i32 %296, 16
  %298 = sext i32 %297 to i64
  %299 = icmp slt i32 %280, 0
  %300 = shl nsw i64 %298, 3
  %301 = select i1 %299, i64 -1, i64 %300
  %302 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %301) #15
  %303 = ptrtoint ptr %302 to i64
  store ptr %302, ptr @_ZN20ComputeNonbondedUtil11table_allocE, align 8, !tbaa !43
  %304 = sub i64 0, %303
  %305 = and i64 %304, 120
  %306 = getelementptr i8, ptr %302, i64 %305
  store ptr %306, ptr @_ZN20ComputeNonbondedUtil13table_noshortE, align 8, !tbaa !43
  %307 = shl nsw i32 %282, 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds double, ptr %306, i64 %308
  store ptr %309, ptr @_ZN20ComputeNonbondedUtil11table_shortE, align 8, !tbaa !43
  %310 = shl nsw i32 %282, 5
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds double, ptr %306, i64 %311
  store ptr %312, ptr @_ZN20ComputeNonbondedUtil10slow_tableE, align 8, !tbaa !43
  %313 = mul nsw i32 %282, 36
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds double, ptr %306, i64 %314
  store ptr %315, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  %316 = mul nsw i32 %282, 40
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double, ptr %306, i64 %317
  store ptr %318, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  %319 = mul nsw i32 %282, 44
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds double, ptr %306, i64 %320
  store ptr %321, ptr @_ZN20ComputeNonbondedUtil10corr_tableE, align 8, !tbaa !43
  %322 = mul nsw i32 %282, 48
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds double, ptr %306, i64 %323
  store ptr %324, ptr @_ZN20ComputeNonbondedUtil10full_tableE, align 8, !tbaa !43
  %325 = mul nsw i32 %282, 52
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, ptr %306, i64 %326
  store ptr %327, ptr @_ZN20ComputeNonbondedUtil10vdwa_tableE, align 8, !tbaa !43
  %328 = mul nsw i32 %282, 56
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, ptr %306, i64 %329
  store ptr %330, ptr @_ZN20ComputeNonbondedUtil10vdwb_tableE, align 8, !tbaa !43
  %331 = mul nsw i32 %282, 60
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds double, ptr %306, i64 %332
  store ptr %333, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %334 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  store double %334, ptr %333, align 8, !tbaa !58
  %335 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 61
  %336 = load double, ptr %335, align 8, !tbaa !106
  %337 = fmul double %336, %336
  %338 = fcmp olt double %337, %334
  %339 = select i1 %338, double %334, double %337, !prof !47
  %340 = icmp slt i32 %280, 1
  br i1 %340, label %719, label %341, !prof !107

341:                                              ; preds = %295
  %342 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 62
  %343 = getelementptr inbounds %class.SimParameters, ptr %0, i64 0, i32 63
  %344 = tail call i32 @llvm.smax.i32(i32 %281, i32 1)
  br label %345

345:                                              ; preds = %341, %700
  %346 = phi double [ %334, %341 ], [ %712, %700 ]
  %347 = phi ptr [ %333, %341 ], [ %360, %700 ]
  %348 = phi i32 [ 1, %341 ], [ %714, %700 ]
  %349 = phi ptr [ %315, %341 ], [ %365, %700 ]
  %350 = phi ptr [ %318, %341 ], [ %364, %700 ]
  %351 = phi ptr [ %312, %341 ], [ %363, %700 ]
  %352 = phi ptr [ %327, %341 ], [ %362, %700 ]
  %353 = phi ptr [ %330, %341 ], [ %361, %700 ]
  %354 = phi i32 [ 0, %341 ], [ %376, %700 ]
  %355 = phi double [ undef, %341 ], [ %487, %700 ]
  %356 = phi double [ undef, %341 ], [ %486, %700 ]
  %357 = phi double [ undef, %341 ], [ %492, %700 ]
  %358 = phi double [ undef, %341 ], [ %493, %700 ]
  %359 = phi <2 x double> [ undef, %341 ], [ %716, %700 ]
  %360 = getelementptr inbounds double, ptr %347, i64 1
  %361 = getelementptr inbounds double, ptr %353, i64 4
  %362 = getelementptr inbounds double, ptr %352, i64 4
  %363 = getelementptr inbounds double, ptr %351, i64 4
  %364 = getelementptr inbounds double, ptr %350, i64 4
  %365 = getelementptr inbounds double, ptr %349, i64 4
  %366 = lshr i32 %348, 6
  %367 = shl nuw i32 1, %366
  %368 = sitofp i32 %367 to double
  %369 = fmul double %346, %368
  %370 = fmul double %369, 1.562500e-02
  %371 = fsub double %369, %346
  %372 = and i32 %348, 63
  %373 = sitofp i32 %372 to double
  %374 = tail call double @llvm.fmuladd.f64(double %370, double %373, double %371)
  %375 = fcmp ugt double %374, %339
  %376 = select i1 %375, i32 %354, i32 %348, !prof !108
  %377 = tail call double @sqrt(double noundef %374) #16
  %378 = fdiv double 1.000000e+00, %377
  %379 = fdiv double 1.000000e+00, %374
  br i1 %231, label %390, label %380, !prof !109

380:                                              ; preds = %345
  %381 = load double, ptr @_ZN20ComputeNonbondedUtil8ewaldcofE, align 8, !tbaa !58
  %382 = fmul double %377, %381
  %383 = tail call double @erfc(double noundef %382) #16
  %384 = load double, ptr @_ZN20ComputeNonbondedUtil11pi_ewaldcofE, align 8, !tbaa !58
  %385 = fneg double %382
  %386 = fmul double %382, %385
  %387 = tail call double @exp(double noundef %386) #16
  %388 = fmul double %384, %387
  %389 = tail call double @llvm.fmuladd.f64(double %388, double %377, double %383)
  br label %399

390:                                              ; preds = %345
  %391 = icmp eq i32 %230, 0
  br i1 %391, label %399, label %392

392:                                              ; preds = %390
  %393 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %394 = fdiv double 1.000000e+00, %393
  %395 = fmul double %377, %394
  %396 = fsub double 1.000000e+00, %395
  %397 = fmul double %395, %395
  %398 = tail call double @llvm.fmuladd.f64(double %397, double 0.000000e+00, double 1.000000e+00)
  br label %399

399:                                              ; preds = %390, %392, %380
  %400 = phi double [ %389, %380 ], [ %398, %392 ], [ 0.000000e+00, %390 ]
  %401 = phi double [ %383, %380 ], [ %396, %392 ], [ 0.000000e+00, %390 ]
  switch i32 %256, label %483 [
    i32 1, label %402
    i32 2, label %405
    i32 3, label %425
    i32 5, label %452
  ], !prof !110

402:                                              ; preds = %399
  %403 = fdiv double -1.000000e+00, %374
  %404 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %403, i64 1
  br label %483

405:                                              ; preds = %399
  %406 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %407 = fdiv double %374, %406
  %408 = fadd double %407, -1.000000e+00
  %409 = fmul double %408, 2.000000e+00
  %410 = fmul double %409, 2.000000e+00
  %411 = insertelement <2 x double> poison, double %377, i64 0
  %412 = insertelement <2 x double> %411, double %408, i64 1
  %413 = insertelement <2 x double> %412, double %410, i64 0
  %414 = fmul <2 x double> %412, %413
  %415 = extractelement <2 x double> %414, i64 1
  %416 = fdiv double %415, %377
  %417 = insertelement <2 x double> poison, double %406, i64 0
  %418 = insertelement <2 x double> %417, double %374, i64 1
  %419 = fdiv <2 x double> %414, %418
  %420 = extractelement <2 x double> %419, i64 0
  %421 = fdiv double %420, %377
  %422 = extractelement <2 x double> %419, i64 1
  %423 = fsub double %421, %422
  %424 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %423, i64 1
  br label %483

425:                                              ; preds = %399
  %426 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %427 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %428 = fdiv double %377, %426
  %429 = fadd double %401, -1.000000e+00
  %430 = fdiv double %429, %377
  %431 = fadd double %400, -1.000000e+00
  %432 = fdiv double %431, %374
  %433 = insertelement <2 x double> <double poison, double -1.000000e+00>, double %374, i64 0
  %434 = insertelement <2 x double> poison, double %427, i64 0
  %435 = shufflevector <2 x double> %434, <2 x double> poison, <2 x i32> zeroinitializer
  %436 = fdiv <2 x double> %433, %435
  %437 = insertelement <2 x double> <double 3.000000e+00, double poison>, double %428, i64 1
  %438 = fsub <2 x double> %437, %436
  %439 = fmul <2 x double> %437, %436
  %440 = shufflevector <2 x double> %438, <2 x double> %439, <2 x i32> <i32 0, i32 3>
  %441 = insertelement <2 x double> poison, double %426, i64 0
  %442 = insertelement <2 x double> %441, double %374, i64 1
  %443 = fdiv <2 x double> <double 5.000000e-01, double -1.000000e+00>, %442
  %444 = fmul <2 x double> %443, %440
  %445 = fsub <2 x double> %443, %440
  %446 = shufflevector <2 x double> %444, <2 x double> %445, <2 x i32> <i32 0, i32 3>
  %447 = extractelement <2 x double> %444, i64 0
  %448 = fadd double %430, %447
  %449 = extractelement <2 x double> %439, i64 1
  %450 = fsub double %449, %432
  %451 = fsub double %378, %447
  br label %483

452:                                              ; preds = %399
  %453 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %454 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %455 = fmul double %453, %454
  %456 = fdiv double %374, %454
  %457 = fdiv double %377, %453
  %458 = fmul double %457, -1.500000e+01
  %459 = tail call double @llvm.fmuladd.f64(double %456, double 6.000000e+00, double %458)
  %460 = fadd double %459, 1.000000e+01
  %461 = fdiv double %377, %455
  %462 = fmul double %457, -4.500000e+01
  %463 = tail call double @llvm.fmuladd.f64(double %456, double 2.400000e+01, double %462)
  %464 = fadd double %463, 2.000000e+01
  %465 = fmul double %461, %464
  %466 = fadd double %401, -1.000000e+00
  %467 = fdiv double %466, %377
  %468 = fadd double %400, -1.000000e+00
  %469 = fdiv double %468, %374
  %470 = fsub double %465, %469
  %471 = insertelement <2 x double> <double poison, double -1.000000e+00>, double %374, i64 0
  %472 = insertelement <2 x double> poison, double %455, i64 0
  %473 = insertelement <2 x double> %472, double %374, i64 1
  %474 = fdiv <2 x double> %471, %473
  %475 = insertelement <2 x double> poison, double %460, i64 0
  %476 = insertelement <2 x double> %475, double %465, i64 1
  %477 = fmul <2 x double> %474, %476
  %478 = fsub <2 x double> %474, %476
  %479 = shufflevector <2 x double> %477, <2 x double> %478, <2 x i32> <i32 0, i32 3>
  %480 = extractelement <2 x double> %477, i64 0
  %481 = fadd double %467, %480
  %482 = fsub double %378, %480
  br label %483

483:                                              ; preds = %399, %452, %425, %405, %402
  %484 = phi double [ %358, %399 ], [ %465, %452 ], [ %449, %425 ], [ 0.000000e+00, %405 ], [ 0.000000e+00, %402 ]
  %485 = phi double [ %357, %399 ], [ %470, %452 ], [ %450, %425 ], [ 0.000000e+00, %405 ], [ 0.000000e+00, %402 ]
  %486 = phi double [ %356, %399 ], [ %481, %452 ], [ %448, %425 ], [ 0.000000e+00, %405 ], [ 0.000000e+00, %402 ]
  %487 = phi double [ %355, %399 ], [ %482, %452 ], [ %451, %425 ], [ %416, %405 ], [ %378, %402 ]
  %488 = phi <2 x double> [ %359, %399 ], [ %479, %452 ], [ %446, %425 ], [ %424, %405 ], [ %404, %402 ]
  %489 = fmul double %378, 5.000000e-01
  %490 = extractelement <2 x double> %488, i64 1
  %491 = fmul double %489, %490
  %492 = fmul double %489, %485
  %493 = fmul double %489, %484
  %494 = fmul double %379, %379
  %495 = fmul double %379, %494
  %496 = fmul double %495, %495
  %497 = load i32, ptr %342, align 8, !tbaa !94
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %542, label %499, !prof !111

499:                                              ; preds = %483
  %500 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %501 = fcmp ogt double %374, %500
  br i1 %501, label %502, label %529

502:                                              ; preds = %499
  %503 = load double, ptr @_ZN20ComputeNonbondedUtil8cutoff_6E, align 8, !tbaa !58
  %504 = fsub double %495, %503
  %505 = load double, ptr @_ZN20ComputeNonbondedUtil6k_vdwaE, align 8, !tbaa !58
  %506 = load double, ptr @_ZN20ComputeNonbondedUtil8cutoff_3E, align 8, !tbaa !58
  %507 = fneg double %506
  %508 = tail call double @llvm.fmuladd.f64(double %378, double %379, double %507)
  %509 = load double, ptr @_ZN20ComputeNonbondedUtil6k_vdwbE, align 8, !tbaa !58
  %510 = fmul double %505, -6.000000e+00
  %511 = fmul double %504, %510
  %512 = insertelement <2 x double> poison, double %505, i64 0
  %513 = insertelement <2 x double> %512, double %379, i64 1
  %514 = insertelement <2 x double> poison, double %504, i64 0
  %515 = insertelement <2 x double> %514, double %511, i64 1
  %516 = fmul <2 x double> %513, %515
  %517 = insertelement <2 x double> %515, double %495, i64 1
  %518 = fmul <2 x double> %517, %516
  %519 = fmul double %509, -3.000000e+00
  %520 = fmul double %508, %519
  %521 = fmul double %379, %520
  %522 = insertelement <2 x double> poison, double %509, i64 0
  %523 = insertelement <2 x double> %522, double %379, i64 1
  %524 = insertelement <2 x double> poison, double %508, i64 0
  %525 = insertelement <2 x double> %524, double %521, i64 1
  %526 = fmul <2 x double> %523, %525
  %527 = insertelement <2 x double> %525, double %378, i64 1
  %528 = fmul <2 x double> %527, %526
  br label %700

529:                                              ; preds = %499
  %530 = load double, ptr @_ZN20ComputeNonbondedUtil6v_vdwaE, align 8, !tbaa !58
  %531 = fadd double %496, %530
  %532 = load double, ptr @_ZN20ComputeNonbondedUtil6v_vdwbE, align 8, !tbaa !58
  %533 = fadd double %495, %532
  %534 = fmul double %379, -6.000000e+00
  %535 = fmul double %534, %496
  %536 = fmul double %379, -3.000000e+00
  %537 = fmul double %536, %495
  %538 = insertelement <2 x double> poison, double %531, i64 0
  %539 = insertelement <2 x double> %538, double %535, i64 1
  %540 = insertelement <2 x double> poison, double %533, i64 0
  %541 = insertelement <2 x double> %540, double %537, i64 1
  br label %700

542:                                              ; preds = %483
  %543 = load i32, ptr %343, align 4, !tbaa !112
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %668, label %545, !prof !111

545:                                              ; preds = %542
  %546 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %547 = fsub double %377, %546
  %548 = fmul double %547, %547
  %549 = fmul double %547, %548
  %550 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %551 = fmul double %550, -1.000000e+01
  %552 = tail call double @llvm.fmuladd.f64(double %546, double 7.000000e+00, double %551)
  %553 = fmul double %552, 6.000000e+00
  %554 = tail call double @pow(double noundef %550, double noundef 8.000000e+00) #16
  %555 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %556 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %557 = fsub double %555, %556
  %558 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %557, i32 noundef 2) #12
  %559 = fmul double %554, %558
  %560 = fdiv double %553, %559
  %561 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %562 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %563 = fmul double %562, -9.000000e+00
  %564 = tail call double @llvm.fmuladd.f64(double %561, double 7.000000e+00, double %563)
  %565 = fmul double %564, -6.000000e+00
  %566 = tail call double @pow(double noundef %562, double noundef 8.000000e+00) #16
  %567 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %568 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %569 = fsub double %567, %568
  %570 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %569, i32 noundef 3) #12
  %571 = fmul double %566, %570
  %572 = fdiv double %565, %571
  %573 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %574 = tail call double @pow(double noundef %573, double noundef 6.000000e+00) #16
  %575 = fdiv double 1.000000e+00, %574
  %576 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %577 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %578 = fsub double %576, %577
  %579 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %578, i32 noundef 3) #12
  %580 = fdiv double %560, -3.000000e+00
  %581 = tail call double @llvm.fmuladd.f64(double %580, double %579, double %575)
  %582 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %583 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %584 = fsub double %582, %583
  %585 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %584, i32 noundef 4) #12
  %586 = fmul double %572, -2.500000e-01
  %587 = tail call double @llvm.fmuladd.f64(double %586, double %585, double %581)
  %588 = fneg double %560
  %589 = fneg double %572
  %590 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %591 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %592 = fmul double %591, -1.600000e+01
  %593 = tail call double @llvm.fmuladd.f64(double %590, double 1.300000e+01, double %592)
  %594 = fmul double %593, 1.200000e+01
  %595 = tail call double @pow(double noundef %591, double noundef 1.400000e+01) #16
  %596 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %597 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %598 = fsub double %596, %597
  %599 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %598, i32 noundef 2) #12
  %600 = fmul double %595, %599
  %601 = fdiv double %594, %600
  %602 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %603 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %604 = fmul double %603, -1.500000e+01
  %605 = tail call double @llvm.fmuladd.f64(double %602, double 1.300000e+01, double %604)
  %606 = fmul double %605, -1.200000e+01
  %607 = tail call double @pow(double noundef %603, double noundef 1.400000e+01) #16
  %608 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %609 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %610 = fsub double %608, %609
  %611 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %610, i32 noundef 3) #12
  %612 = fmul double %607, %611
  %613 = fdiv double %606, %612
  %614 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %615 = tail call double @pow(double noundef %614, double noundef 1.200000e+01) #16
  %616 = fdiv double 1.000000e+00, %615
  %617 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %618 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %619 = fsub double %617, %618
  %620 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %619, i32 noundef 3) #12
  %621 = fdiv double %601, -3.000000e+00
  %622 = tail call double @llvm.fmuladd.f64(double %621, double %620, double %616)
  %623 = load double, ptr @_ZN20ComputeNonbondedUtil6cutoffE, align 8, !tbaa !58
  %624 = load double, ptr @_ZN20ComputeNonbondedUtil8switchOnE, align 8, !tbaa !58
  %625 = fsub double %623, %624
  %626 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %625, i32 noundef 4) #12
  %627 = fmul double %613, -2.500000e-01
  %628 = tail call double @llvm.fmuladd.f64(double %627, double %626, double %622)
  %629 = fmul double %548, %627
  %630 = fmul double %548, %629
  %631 = tail call double @llvm.fmuladd.f64(double %621, double %549, double %630)
  %632 = fsub double %631, %628
  %633 = fdiv double %560, 3.000000e+00
  %634 = fmul double %572, 2.500000e-01
  %635 = fmul double %548, %634
  %636 = fmul double %548, %635
  %637 = tail call double @llvm.fmuladd.f64(double %633, double %549, double %636)
  %638 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %639 = fcmp ogt double %374, %638
  %640 = fneg double %628
  %641 = select i1 %639, double %632, double %640
  %642 = select i1 %639, double %637, double -0.000000e+00
  %643 = fadd double %587, %642
  %644 = fmul double %549, %613
  %645 = tail call double @llvm.fmuladd.f64(double %601, double %548, double %644)
  %646 = fmul double %549, %589
  %647 = tail call double @llvm.fmuladd.f64(double %588, double %548, double %646)
  %648 = fmul double %645, 5.000000e-01
  %649 = fmul double %378, %648
  %650 = select i1 %639, double %649, double 0.000000e+00
  %651 = fmul double %647, 5.000000e-01
  %652 = fmul double %378, %651
  %653 = select i1 %639, double %652, double 0.000000e+00
  %654 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %377, i32 noundef 14) #12
  %655 = fdiv double 6.000000e+00, %654
  %656 = insertelement <2 x double> poison, double %496, i64 0
  %657 = insertelement <2 x double> %656, double %650, i64 1
  %658 = insertelement <2 x double> poison, double %641, i64 0
  %659 = insertelement <2 x double> %658, double %655, i64 1
  %660 = fsub <2 x double> %657, %659
  %661 = tail call noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %377, i32 noundef 8) #12
  %662 = fdiv double 3.000000e+00, %661
  %663 = insertelement <2 x double> poison, double %495, i64 0
  %664 = insertelement <2 x double> %663, double %653, i64 1
  %665 = insertelement <2 x double> poison, double %643, i64 0
  %666 = insertelement <2 x double> %665, double %662, i64 1
  %667 = fsub <2 x double> %664, %666
  br label %700

668:                                              ; preds = %542
  %669 = load double, ptr @_ZN20ComputeNonbondedUtil7cutoff2E, align 8, !tbaa !58
  %670 = fsub double %669, %374
  %671 = load double, ptr @_ZN20ComputeNonbondedUtil2c3E, align 8, !tbaa !58
  %672 = tail call double @llvm.fmuladd.f64(double %670, double -2.000000e+00, double %671)
  %673 = fmul double %670, %672
  %674 = load double, ptr @_ZN20ComputeNonbondedUtil9switchOn2E, align 8, !tbaa !58
  %675 = fcmp ogt double %374, %674
  %676 = fmul double %670, %673
  %677 = load double, ptr @_ZN20ComputeNonbondedUtil2c1E, align 8
  %678 = fmul double %677, %676
  %679 = select i1 %675, double %678, double 1.000000e+00, !prof !113
  br i1 %675, label %680, label %685, !prof !113

680:                                              ; preds = %668
  %681 = fmul double %677, 2.000000e+00
  %682 = fneg double %673
  %683 = tail call double @llvm.fmuladd.f64(double %670, double %670, double %682)
  %684 = fmul double %681, %683
  br label %685

685:                                              ; preds = %668, %680
  %686 = phi double [ %684, %680 ], [ 0.000000e+00, %668 ]
  %687 = fmul double %679, -6.000000e+00
  %688 = tail call double @llvm.fmuladd.f64(double %687, double %379, double %686)
  %689 = insertelement <2 x double> poison, double %496, i64 0
  %690 = shufflevector <2 x double> %689, <2 x double> poison, <2 x i32> zeroinitializer
  %691 = insertelement <2 x double> poison, double %679, i64 0
  %692 = insertelement <2 x double> %691, double %688, i64 1
  %693 = fmul <2 x double> %690, %692
  %694 = fmul double %679, -3.000000e+00
  %695 = tail call double @llvm.fmuladd.f64(double %694, double %379, double %686)
  %696 = insertelement <2 x double> poison, double %495, i64 0
  %697 = shufflevector <2 x double> %696, <2 x double> poison, <2 x i32> zeroinitializer
  %698 = insertelement <2 x double> %691, double %695, i64 1
  %699 = fmul <2 x double> %697, %698
  br label %700

700:                                              ; preds = %545, %685, %502, %529
  %701 = phi <2 x double> [ %518, %502 ], [ %539, %529 ], [ %660, %545 ], [ %693, %685 ]
  %702 = phi <2 x double> [ %528, %502 ], [ %541, %529 ], [ %667, %545 ], [ %699, %685 ]
  %703 = getelementptr inbounds double, ptr %349, i64 5
  store double %487, ptr %365, align 8, !tbaa !58
  %704 = getelementptr inbounds double, ptr %349, i64 6
  store double %491, ptr %703, align 8, !tbaa !58
  %705 = getelementptr inbounds double, ptr %350, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %704, i8 0, i64 16, i1 false)
  store double %486, ptr %364, align 8, !tbaa !58
  %706 = getelementptr inbounds double, ptr %350, i64 6
  store double %492, ptr %705, align 8, !tbaa !58
  %707 = getelementptr inbounds double, ptr %351, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %706, i8 0, i64 16, i1 false)
  %708 = extractelement <2 x double> %488, i64 0
  store double %708, ptr %363, align 8, !tbaa !58
  %709 = getelementptr inbounds double, ptr %351, i64 6
  store double %493, ptr %707, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %709, i8 0, i64 16, i1 false)
  %710 = getelementptr inbounds double, ptr %352, i64 6
  store <2 x double> %701, ptr %362, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %710, i8 0, i64 16, i1 false)
  %711 = getelementptr inbounds double, ptr %353, i64 6
  store <2 x double> %702, ptr %361, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %711, i8 0, i64 16, i1 false)
  %712 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %713 = fadd double %374, %712
  store double %713, ptr %360, align 8, !tbaa !58
  %714 = add nuw nsw i32 %348, 1
  %715 = icmp eq i32 %348, %344
  %716 = insertelement <2 x double> %488, double %491, i64 1
  br i1 %715, label %717, label %345, !prof !114, !llvm.loop !115

717:                                              ; preds = %700
  %718 = icmp eq i32 %376, 0
  br i1 %718, label %719, label %721, !prof !116

719:                                              ; preds = %295, %717
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str.17) #12
  %720 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  br label %721

721:                                              ; preds = %719, %717
  %722 = phi i32 [ 0, %719 ], [ %376, %717 ]
  %723 = phi double [ %720, %719 ], [ %712, %717 ]
  %724 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %725 = sext i32 %722 to i64
  %726 = getelementptr inbounds double, ptr %724, i64 %725
  %727 = load double, ptr %726, align 8, !tbaa !58
  %728 = fadd double %339, %723
  %729 = fcmp ogt double %727, %728
  br i1 %729, label %730, label %731, !prof !79

730:                                              ; preds = %721
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str.18) #12
  br label %731

731:                                              ; preds = %730, %721
  %732 = icmp slt i32 %280, 1
  %733 = shl nsw i32 %722, 2
  %734 = sext i32 %733 to i64
  %735 = or disjoint i32 %733, 1
  %736 = sext i32 %735 to i64
  %737 = tail call i32 @llvm.smax.i32(i32 %281, i32 1)
  %738 = zext nneg i32 %737 to i64
  br label %749

739:                                              ; preds = %1016
  %740 = icmp sgt i32 %280, -1
  br i1 %740, label %741, label %1175, !prof !103

741:                                              ; preds = %739
  %742 = shl nsw i32 %282, 2
  %743 = load ptr, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  %744 = load ptr, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  %745 = load ptr, ptr @_ZN20ComputeNonbondedUtil10corr_tableE, align 8, !tbaa !43
  %746 = load ptr, ptr @_ZN20ComputeNonbondedUtil10slow_tableE, align 8, !tbaa !43
  %747 = load ptr, ptr @_ZN20ComputeNonbondedUtil10full_tableE, align 8, !tbaa !43
  %748 = sext i32 %742 to i64
  br label %1032

749:                                              ; preds = %731, %1016
  %750 = phi i32 [ 0, %731 ], [ %765, %1016 ]
  %751 = phi ptr [ @.str.19, %731 ], [ %764, %1016 ]
  %752 = phi i32 [ 0, %731 ], [ %1017, %1016 ]
  switch i32 %752, label %763 [
    i32 0, label %753
    i32 1, label %755
    i32 2, label %757
    i32 3, label %759
    i32 4, label %761
  ], !prof !117

753:                                              ; preds = %749
  %754 = load ptr, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  br label %763

755:                                              ; preds = %749
  %756 = load ptr, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  br label %763

757:                                              ; preds = %749
  %758 = load ptr, ptr @_ZN20ComputeNonbondedUtil10slow_tableE, align 8, !tbaa !43
  br label %763

759:                                              ; preds = %749
  %760 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwa_tableE, align 8, !tbaa !43
  br label %763

761:                                              ; preds = %749
  %762 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwb_tableE, align 8, !tbaa !43
  br label %763

763:                                              ; preds = %749, %761, %759, %757, %755, %753
  %764 = phi ptr [ %751, %749 ], [ @.str.24, %761 ], [ @.str.23, %759 ], [ @.str.22, %757 ], [ @.str.21, %755 ], [ @.str.20, %753 ]
  %765 = phi i32 [ %750, %749 ], [ 1, %761 ], [ 1, %759 ], [ 0, %757 ], [ 0, %755 ], [ 1, %753 ]
  %766 = phi ptr [ null, %749 ], [ %762, %761 ], [ %760, %759 ], [ %758, %757 ], [ %756, %755 ], [ %754, %753 ]
  %767 = getelementptr inbounds double, ptr %766, i64 4
  %768 = load double, ptr %767, align 8, !tbaa !58
  %769 = getelementptr inbounds double, ptr %766, i64 5
  %770 = load double, ptr %769, align 8, !tbaa !58
  %771 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %772 = fmul double %771, 1.562500e-02
  %773 = fneg double %770
  %774 = tail call double @llvm.fmuladd.f64(double %773, double %772, double %768)
  store double %774, ptr %766, align 8, !tbaa !58
  %775 = getelementptr inbounds double, ptr %766, i64 1
  store double %770, ptr %775, align 8, !tbaa !58
  %776 = getelementptr inbounds double, ptr %766, i64 2
  %777 = icmp ne i32 %765, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %776, i8 0, i64 16, i1 false)
  br i1 %777, label %778, label %790, !prof !118

778:                                              ; preds = %763
  %779 = getelementptr inbounds double, ptr %766, i64 %734
  %780 = load double, ptr %779, align 8, !tbaa !58
  %781 = getelementptr inbounds double, ptr %766, i64 %736
  %782 = load double, ptr %781, align 8, !tbaa !58
  %783 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  %784 = getelementptr inbounds double, ptr %783, i64 %725
  %785 = load double, ptr %784, align 8, !tbaa !58
  %786 = load double, ptr %783, align 8, !tbaa !58
  %787 = fsub double %785, %786
  %788 = fneg double %782
  %789 = tail call double @llvm.fmuladd.f64(double %788, double %787, double %780)
  store double %789, ptr %766, align 8, !tbaa !58
  store double %782, ptr %775, align 8, !tbaa !58
  br label %790

790:                                              ; preds = %778, %763
  br i1 %732, label %896, label %791, !prof !119

791:                                              ; preds = %790
  %792 = getelementptr inbounds double, ptr %766, i64 %734
  %793 = getelementptr inbounds double, ptr %766, i64 %736
  %794 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %795 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  br label %796

796:                                              ; preds = %791, %868
  %797 = phi ptr [ %795, %791 ], [ %819, %868 ]
  %798 = phi ptr [ %795, %791 ], [ %844, %868 ]
  %799 = phi double [ %794, %791 ], [ %821, %868 ]
  %800 = phi i64 [ 0, %791 ], [ %808, %868 ]
  %801 = phi ptr [ %766, %791 ], [ %848, %868 ]
  %802 = trunc i64 %800 to i32
  %803 = lshr i32 %802, 6
  %804 = shl nuw i32 1, %803
  %805 = sitofp i32 %804 to double
  %806 = fmul double %799, %805
  %807 = fmul double %806, 1.562500e-02
  %808 = add nuw nsw i64 %800, 1
  %809 = getelementptr inbounds double, ptr %798, i64 %808
  %810 = load double, ptr %809, align 8, !tbaa !58
  %811 = getelementptr inbounds double, ptr %798, i64 %800
  %812 = load double, ptr %811, align 8, !tbaa !58
  %813 = fadd double %807, %812
  %814 = fcmp une double %810, %813
  br i1 %814, label %815, label %818, !prof !120

815:                                              ; preds = %796
  tail call void @_Z8NAMD_bugPKc(ptr noundef nonnull @.str.25) #12
  %816 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %817 = load ptr, ptr @_ZN20ComputeNonbondedUtil8r2_tableE, align 8, !tbaa !43
  br label %818

818:                                              ; preds = %815, %796
  %819 = phi ptr [ %817, %815 ], [ %797, %796 ]
  %820 = phi ptr [ %817, %815 ], [ %798, %796 ]
  %821 = phi double [ %816, %815 ], [ %799, %796 ]
  %822 = icmp slt i64 %808, %725
  %823 = and i1 %777, %822
  br i1 %823, label %829, label %824, !prof !121

824:                                              ; preds = %818
  %825 = getelementptr inbounds double, ptr %801, i64 4
  %826 = load double, ptr %825, align 8, !tbaa !58
  %827 = getelementptr inbounds double, ptr %801, i64 5
  %828 = load double, ptr %827, align 8, !tbaa !58
  br label %841

829:                                              ; preds = %818
  %830 = load double, ptr %792, align 8, !tbaa !58
  %831 = load double, ptr %793, align 8, !tbaa !58
  %832 = getelementptr inbounds double, ptr %819, i64 %725
  %833 = load double, ptr %832, align 8, !tbaa !58
  %834 = getelementptr inbounds double, ptr %819, i64 %808
  %835 = load double, ptr %834, align 8, !tbaa !58
  %836 = fsub double %833, %835
  %837 = fneg double %831
  %838 = tail call double @llvm.fmuladd.f64(double %837, double %836, double %830)
  %839 = getelementptr inbounds double, ptr %801, i64 4
  store double %838, ptr %839, align 8, !tbaa !58
  %840 = getelementptr inbounds double, ptr %801, i64 5
  store double %831, ptr %840, align 8, !tbaa !58
  br label %841

841:                                              ; preds = %824, %829
  %842 = phi double [ %831, %829 ], [ %828, %824 ]
  %843 = phi double [ %838, %829 ], [ %826, %824 ]
  %844 = phi ptr [ %819, %829 ], [ %820, %824 ]
  %845 = load double, ptr %801, align 8, !tbaa !58
  %846 = getelementptr inbounds double, ptr %801, i64 1
  %847 = load double, ptr %846, align 8, !tbaa !58
  %848 = getelementptr inbounds double, ptr %801, i64 4
  %849 = fsub double %843, %845
  %850 = tail call double @llvm.fmuladd.f64(double %847, double 2.000000e+00, double %842)
  %851 = fneg double %807
  %852 = fadd double %847, %842
  %853 = fmul double %807, %807
  %854 = insertelement <2 x double> poison, double %850, i64 0
  %855 = insertelement <2 x double> %854, double %807, i64 1
  %856 = insertelement <2 x double> poison, double %851, i64 0
  %857 = insertelement <2 x double> %856, double %852, i64 1
  %858 = fmul <2 x double> %855, %857
  %859 = insertelement <2 x double> poison, double %849, i64 0
  %860 = shufflevector <2 x double> %859, <2 x double> poison, <2 x i32> zeroinitializer
  %861 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %860, <2 x double> <double 3.000000e+00, double -2.000000e+00>, <2 x double> %858)
  %862 = fmul double %807, %853
  %863 = insertelement <2 x double> poison, double %853, i64 0
  %864 = insertelement <2 x double> %863, double %862, i64 1
  %865 = fdiv <2 x double> %861, %864
  %866 = fsub double %845, %843
  %867 = fsub double %847, %842
  br label %871

868:                                              ; preds = %871
  %869 = getelementptr inbounds double, ptr %801, i64 2
  store <2 x double> %891, ptr %869, align 8, !tbaa !58
  %870 = icmp eq i64 %808, %738
  br i1 %870, label %892, label %796, !prof !122, !llvm.loop !123

871:                                              ; preds = %841, %871
  %872 = phi i1 [ true, %841 ], [ false, %871 ]
  %873 = phi <2 x double> [ %865, %841 ], [ %891, %871 ]
  %874 = extractelement <2 x double> %873, i64 0
  %875 = extractelement <2 x double> %873, i64 1
  %876 = tail call double @llvm.fmuladd.f64(double %875, double %807, double %874)
  %877 = tail call double @llvm.fmuladd.f64(double %876, double %807, double %847)
  %878 = tail call double @llvm.fmuladd.f64(double %877, double %807, double %866)
  %879 = fmul double %875, 3.000000e+00
  %880 = fmul double %874, 2.000000e+00
  %881 = tail call double @llvm.fmuladd.f64(double %879, double %807, double %880)
  %882 = tail call double @llvm.fmuladd.f64(double %881, double %807, double %867)
  %883 = fmul double %807, %882
  %884 = fneg double %883
  %885 = insertelement <2 x double> poison, double %878, i64 0
  %886 = shufflevector <2 x double> %885, <2 x double> poison, <2 x i32> zeroinitializer
  %887 = insertelement <2 x double> poison, double %884, i64 0
  %888 = insertelement <2 x double> %887, double %883, i64 1
  %889 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %886, <2 x double> <double 3.000000e+00, double -2.000000e+00>, <2 x double> %888)
  %890 = fdiv <2 x double> %889, %864
  %891 = fsub <2 x double> %873, %890
  br i1 %872, label %871, label %868, !prof !124, !llvm.loop !125

892:                                              ; preds = %868
  %893 = tail call noundef i32 @_Z6CkMyPev() #12
  %894 = icmp ne i32 %893, 0
  %895 = select i1 %894, i1 true, i1 %732
  br i1 %895, label %1016, label %898, !prof !126

896:                                              ; preds = %790
  %897 = tail call noundef i32 @_Z6CkMyPev() #12
  br label %1016

898:                                              ; preds = %892, %959
  %899 = phi double [ %961, %959 ], [ 0.000000e+00, %892 ]
  %900 = phi double [ %948, %959 ], [ 0.000000e+00, %892 ]
  %901 = phi double [ %960, %959 ], [ 0.000000e+00, %892 ]
  %902 = phi double [ %947, %959 ], [ 0.000000e+00, %892 ]
  %903 = phi double [ %965, %959 ], [ 0.000000e+00, %892 ]
  %904 = phi double [ %952, %959 ], [ 0.000000e+00, %892 ]
  %905 = phi double [ %964, %959 ], [ 0.000000e+00, %892 ]
  %906 = phi double [ %951, %959 ], [ 0.000000e+00, %892 ]
  %907 = phi i32 [ %966, %959 ], [ 0, %892 ]
  %908 = phi ptr [ %930, %959 ], [ %766, %892 ]
  %909 = load double, ptr @_ZN20ComputeNonbondedUtil8r2_deltaE, align 8, !tbaa !58
  %910 = lshr i32 %907, 6
  %911 = shl nuw i32 1, %910
  %912 = sitofp i32 %911 to double
  %913 = fmul double %909, %912
  %914 = fmul double %913, 1.562500e-02
  %915 = fsub double %913, %909
  %916 = and i32 %907, 63
  %917 = sitofp i32 %916 to double
  %918 = tail call double @llvm.fmuladd.f64(double %914, double %917, double %915)
  %919 = tail call double @sqrt(double noundef %918) #16
  %920 = getelementptr inbounds double, ptr %908, i64 3
  %921 = load double, ptr %920, align 8, !tbaa !58
  %922 = getelementptr inbounds double, ptr %908, i64 2
  %923 = load double, ptr %922, align 8, !tbaa !58
  %924 = tail call double @llvm.fmuladd.f64(double %921, double %914, double %923)
  %925 = getelementptr inbounds double, ptr %908, i64 1
  %926 = load double, ptr %925, align 8, !tbaa !58
  %927 = tail call double @llvm.fmuladd.f64(double %924, double %914, double %926)
  %928 = load double, ptr %908, align 8, !tbaa !58
  %929 = tail call double @llvm.fmuladd.f64(double %927, double %914, double %928)
  %930 = getelementptr inbounds double, ptr %908, i64 4
  %931 = load double, ptr %930, align 8, !tbaa !58
  %932 = fsub double %929, %931
  %933 = fmul double %921, 3.000000e+00
  %934 = fmul double %923, 2.000000e+00
  %935 = tail call double @llvm.fmuladd.f64(double %933, double %914, double %934)
  %936 = tail call double @llvm.fmuladd.f64(double %935, double %914, double %926)
  %937 = getelementptr inbounds double, ptr %908, i64 5
  %938 = load double, ptr %937, align 8, !tbaa !58
  %939 = fsub double %936, %938
  %940 = fcmp une double %931, 0.000000e+00
  br i1 %940, label %941, label %946

941:                                              ; preds = %898
  %942 = fdiv double %932, %931
  %943 = tail call double @llvm.fabs.f64(double %942)
  %944 = fcmp ogt double %943, %902
  br i1 %944, label %945, label %946

945:                                              ; preds = %941
  br label %946

946:                                              ; preds = %945, %941, %898
  %947 = phi double [ %943, %945 ], [ %902, %941 ], [ %902, %898 ]
  %948 = phi double [ %919, %945 ], [ %900, %941 ], [ %900, %898 ]
  %949 = tail call double @llvm.fabs.f64(double %932)
  %950 = fcmp ogt double %949, %906
  %951 = select i1 %950, double %949, double %906
  %952 = select i1 %950, double %919, double %904
  %953 = fcmp une double %938, 0.000000e+00
  br i1 %953, label %954, label %959

954:                                              ; preds = %946
  %955 = fdiv double %939, %938
  %956 = tail call double @llvm.fabs.f64(double %955)
  %957 = fcmp ogt double %956, %901
  br i1 %957, label %958, label %959

958:                                              ; preds = %954
  br label %959

959:                                              ; preds = %958, %954, %946
  %960 = phi double [ %956, %958 ], [ %901, %954 ], [ %901, %946 ]
  %961 = phi double [ %919, %958 ], [ %899, %954 ], [ %899, %946 ]
  %962 = tail call double @llvm.fabs.f64(double %939)
  %963 = fcmp ogt double %962, %905
  %964 = select i1 %963, double %962, double %905
  %965 = select i1 %963, double %919, double %903
  %966 = add nuw nsw i32 %907, 1
  %967 = icmp eq i32 %966, %737
  br i1 %967, label %968, label %898, !llvm.loop !127

968:                                              ; preds = %959
  %969 = fcmp une double %951, 0.000000e+00
  br i1 %969, label %970, label %980

970:                                              ; preds = %968
  %971 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11) #12
  %972 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %971, ptr noundef nonnull @.str.26) #12
  %973 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %972, ptr noundef %764) #12
  %974 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %973, ptr noundef nonnull @.str.27) #12
  %975 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %974, double noundef %951) #12
  %976 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %975, ptr noundef nonnull @.str.28) #12
  %977 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %976, double noundef %952) #12
  %978 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %977, ptr noundef nonnull @.str.13) #12
  %979 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %978, ptr noundef nonnull @.str.14) #12
  br label %980

980:                                              ; preds = %970, %968
  %981 = fcmp une double %947, 0.000000e+00
  br i1 %981, label %982, label %992

982:                                              ; preds = %980
  %983 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11) #12
  %984 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %983, ptr noundef nonnull @.str.29) #12
  %985 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %984, ptr noundef %764) #12
  %986 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %985, ptr noundef nonnull @.str.27) #12
  %987 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %986, double noundef %947) #12
  %988 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %987, ptr noundef nonnull @.str.28) #12
  %989 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %988, double noundef %948) #12
  %990 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %989, ptr noundef nonnull @.str.13) #12
  %991 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %990, ptr noundef nonnull @.str.14) #12
  br label %992

992:                                              ; preds = %982, %980
  %993 = fcmp une double %964, 0.000000e+00
  br i1 %993, label %994, label %1004

994:                                              ; preds = %992
  %995 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11) #12
  %996 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %995, ptr noundef nonnull @.str.26) #12
  %997 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %996, ptr noundef %764) #12
  %998 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %997, ptr noundef nonnull @.str.30) #12
  %999 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %998, double noundef %964) #12
  %1000 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %999, ptr noundef nonnull @.str.28) #12
  %1001 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %1000, double noundef %965) #12
  %1002 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1001, ptr noundef nonnull @.str.13) #12
  %1003 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1002, ptr noundef nonnull @.str.14) #12
  br label %1004

1004:                                             ; preds = %994, %992
  %1005 = fcmp une double %960, 0.000000e+00
  br i1 %1005, label %1006, label %1016

1006:                                             ; preds = %1004
  %1007 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11) #12
  %1008 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1007, ptr noundef nonnull @.str.29) #12
  %1009 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1008, ptr noundef %764) #12
  %1010 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1009, ptr noundef nonnull @.str.30) #12
  %1011 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %1010, double noundef %960) #12
  %1012 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1011, ptr noundef nonnull @.str.28) #12
  %1013 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %1012, double noundef %961) #12
  %1014 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1013, ptr noundef nonnull @.str.13) #12
  %1015 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1014, ptr noundef nonnull @.str.14) #12
  br label %1016

1016:                                             ; preds = %892, %896, %1004, %1006
  %1017 = add nuw nsw i32 %752, 1
  %1018 = icmp eq i32 %1017, 5
  br i1 %1018, label %739, label %749, !prof !128, !llvm.loop !129

1019:                                             ; preds = %1032
  br i1 %299, label %1175, label %1020, !prof !130

1020:                                             ; preds = %1019
  %1021 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwa_tableE, align 8, !tbaa !43
  %1022 = load ptr, ptr @_ZN20ComputeNonbondedUtil13table_noshortE, align 8, !tbaa !43
  %1023 = load ptr, ptr @_ZN20ComputeNonbondedUtil11table_shortE, align 8, !tbaa !43
  %1024 = load ptr, ptr @_ZN20ComputeNonbondedUtil10vdwb_tableE, align 8, !tbaa !43
  %1025 = load ptr, ptr @_ZN20ComputeNonbondedUtil10fast_tableE, align 8, !tbaa !43
  %1026 = load ptr, ptr @_ZN20ComputeNonbondedUtil10corr_tableE, align 8, !tbaa !43
  %1027 = load ptr, ptr @_ZN20ComputeNonbondedUtil10scor_tableE, align 8, !tbaa !43
  %1028 = load ptr, ptr @_ZN20ComputeNonbondedUtil10full_tableE, align 8, !tbaa !43
  %1029 = tail call i32 @llvm.smax.i32(i32 %281, i32 0)
  %1030 = or disjoint i32 %1029, 1
  %1031 = zext nneg i32 %1030 to i64
  br label %1047

1032:                                             ; preds = %741, %1032
  %1033 = phi i64 [ 0, %741 ], [ %1045, %1032 ]
  %1034 = getelementptr inbounds double, ptr %743, i64 %1033
  %1035 = load double, ptr %1034, align 8, !tbaa !58
  %1036 = getelementptr inbounds double, ptr %744, i64 %1033
  %1037 = load double, ptr %1036, align 8, !tbaa !58
  %1038 = fadd double %1035, %1037
  %1039 = getelementptr inbounds double, ptr %745, i64 %1033
  store double %1038, ptr %1039, align 8, !tbaa !58
  %1040 = load double, ptr %1034, align 8, !tbaa !58
  %1041 = getelementptr inbounds double, ptr %746, i64 %1033
  %1042 = load double, ptr %1041, align 8, !tbaa !58
  %1043 = fadd double %1040, %1042
  %1044 = getelementptr inbounds double, ptr %747, i64 %1033
  store double %1043, ptr %1044, align 8, !tbaa !58
  %1045 = add nuw nsw i64 %1033, 1
  %1046 = icmp slt i64 %1045, %748
  br i1 %1046, label %1032, label %1019, !prof !131, !llvm.loop !132

1047:                                             ; preds = %1020, %1047
  %1048 = phi i64 [ 0, %1020 ], [ %1173, %1047 ]
  %1049 = shl nsw i64 %1048, 2
  %1050 = or disjoint i64 %1049, 3
  %1051 = getelementptr inbounds double, ptr %1021, i64 %1050
  %1052 = load double, ptr %1051, align 8, !tbaa !58
  %1053 = fmul double %1052, -6.000000e+00
  %1054 = shl nsw i64 %1048, 4
  %1055 = getelementptr inbounds double, ptr %1022, i64 %1054
  store double %1053, ptr %1055, align 8, !tbaa !58
  %1056 = getelementptr inbounds double, ptr %1023, i64 %1054
  store double %1053, ptr %1056, align 8, !tbaa !58
  %1057 = getelementptr inbounds double, ptr %1024, i64 %1050
  %1058 = load double, ptr %1057, align 8, !tbaa !58
  %1059 = fmul double %1058, -6.000000e+00
  %1060 = or disjoint i64 %1054, 2
  %1061 = getelementptr inbounds double, ptr %1022, i64 %1060
  store double %1059, ptr %1061, align 8, !tbaa !58
  %1062 = getelementptr inbounds double, ptr %1023, i64 %1060
  store double %1059, ptr %1062, align 8, !tbaa !58
  %1063 = or disjoint i64 %1049, 1
  %1064 = getelementptr inbounds double, ptr %1021, i64 %1063
  %1065 = load double, ptr %1064, align 8, !tbaa !58
  %1066 = fmul double %1065, -2.000000e+00
  %1067 = or disjoint i64 %1054, 4
  %1068 = getelementptr inbounds double, ptr %1022, i64 %1067
  store double %1066, ptr %1068, align 8, !tbaa !58
  %1069 = getelementptr inbounds double, ptr %1023, i64 %1067
  store double %1066, ptr %1069, align 8, !tbaa !58
  %1070 = getelementptr inbounds double, ptr %1024, i64 %1063
  %1071 = load double, ptr %1070, align 8, !tbaa !58
  %1072 = fmul double %1071, -2.000000e+00
  %1073 = or disjoint i64 %1054, 6
  %1074 = getelementptr inbounds double, ptr %1022, i64 %1073
  store double %1072, ptr %1074, align 8, !tbaa !58
  %1075 = getelementptr inbounds double, ptr %1023, i64 %1073
  store double %1072, ptr %1075, align 8, !tbaa !58
  %1076 = or disjoint i64 %1049, 2
  %1077 = getelementptr inbounds double, ptr %1021, i64 %1076
  %1078 = load double, ptr %1077, align 8, !tbaa !58
  %1079 = fmul double %1078, -4.000000e+00
  %1080 = or disjoint i64 %1054, 1
  %1081 = getelementptr inbounds double, ptr %1022, i64 %1080
  store double %1079, ptr %1081, align 8, !tbaa !58
  %1082 = getelementptr inbounds double, ptr %1023, i64 %1080
  store double %1079, ptr %1082, align 8, !tbaa !58
  %1083 = getelementptr inbounds double, ptr %1024, i64 %1076
  %1084 = load double, ptr %1083, align 8, !tbaa !58
  %1085 = fmul double %1084, -4.000000e+00
  %1086 = or disjoint i64 %1054, 3
  %1087 = getelementptr inbounds double, ptr %1022, i64 %1086
  store double %1085, ptr %1087, align 8, !tbaa !58
  %1088 = getelementptr inbounds double, ptr %1023, i64 %1086
  store double %1085, ptr %1088, align 8, !tbaa !58
  %1089 = getelementptr inbounds double, ptr %1021, i64 %1049
  %1090 = load double, ptr %1089, align 8, !tbaa !58
  %1091 = fneg double %1090
  %1092 = or disjoint i64 %1054, 5
  %1093 = getelementptr inbounds double, ptr %1022, i64 %1092
  store double %1091, ptr %1093, align 8, !tbaa !58
  %1094 = getelementptr inbounds double, ptr %1023, i64 %1092
  store double %1091, ptr %1094, align 8, !tbaa !58
  %1095 = getelementptr inbounds double, ptr %1024, i64 %1049
  %1096 = load double, ptr %1095, align 8, !tbaa !58
  %1097 = fneg double %1096
  %1098 = or disjoint i64 %1054, 7
  %1099 = getelementptr inbounds double, ptr %1022, i64 %1098
  store double %1097, ptr %1099, align 8, !tbaa !58
  %1100 = getelementptr inbounds double, ptr %1023, i64 %1098
  store double %1097, ptr %1100, align 8, !tbaa !58
  %1101 = getelementptr inbounds double, ptr %1025, i64 %1050
  %1102 = load double, ptr %1101, align 8, !tbaa !58
  %1103 = fmul double %1102, -6.000000e+00
  %1104 = or disjoint i64 %1054, 8
  %1105 = getelementptr inbounds double, ptr %1023, i64 %1104
  store double %1103, ptr %1105, align 8, !tbaa !58
  %1106 = getelementptr inbounds double, ptr %1025, i64 %1076
  %1107 = load double, ptr %1106, align 8, !tbaa !58
  %1108 = fmul double %1107, -4.000000e+00
  %1109 = or disjoint i64 %1054, 9
  %1110 = getelementptr inbounds double, ptr %1023, i64 %1109
  store double %1108, ptr %1110, align 8, !tbaa !58
  %1111 = getelementptr inbounds double, ptr %1025, i64 %1063
  %1112 = load double, ptr %1111, align 8, !tbaa !58
  %1113 = fmul double %1112, -2.000000e+00
  %1114 = or disjoint i64 %1054, 10
  %1115 = getelementptr inbounds double, ptr %1023, i64 %1114
  store double %1113, ptr %1115, align 8, !tbaa !58
  %1116 = getelementptr inbounds double, ptr %1025, i64 %1049
  %1117 = load double, ptr %1116, align 8, !tbaa !58
  %1118 = fneg double %1117
  %1119 = or disjoint i64 %1054, 11
  %1120 = getelementptr inbounds double, ptr %1023, i64 %1119
  store double %1118, ptr %1120, align 8, !tbaa !58
  %1121 = getelementptr inbounds double, ptr %1026, i64 %1050
  %1122 = load double, ptr %1121, align 8, !tbaa !58
  %1123 = fmul double %1122, -6.000000e+00
  %1124 = getelementptr inbounds double, ptr %1022, i64 %1104
  store double %1123, ptr %1124, align 8, !tbaa !58
  %1125 = getelementptr inbounds double, ptr %1026, i64 %1076
  %1126 = load double, ptr %1125, align 8, !tbaa !58
  %1127 = fmul double %1126, -4.000000e+00
  %1128 = getelementptr inbounds double, ptr %1022, i64 %1109
  store double %1127, ptr %1128, align 8, !tbaa !58
  %1129 = getelementptr inbounds double, ptr %1026, i64 %1063
  %1130 = load double, ptr %1129, align 8, !tbaa !58
  %1131 = fmul double %1130, -2.000000e+00
  %1132 = getelementptr inbounds double, ptr %1022, i64 %1114
  store double %1131, ptr %1132, align 8, !tbaa !58
  %1133 = getelementptr inbounds double, ptr %1026, i64 %1049
  %1134 = load double, ptr %1133, align 8, !tbaa !58
  %1135 = fneg double %1134
  %1136 = getelementptr inbounds double, ptr %1022, i64 %1119
  store double %1135, ptr %1136, align 8, !tbaa !58
  %1137 = getelementptr inbounds double, ptr %1027, i64 %1050
  %1138 = load double, ptr %1137, align 8, !tbaa !58
  %1139 = fmul double %1138, -6.000000e+00
  %1140 = or disjoint i64 %1054, 12
  %1141 = getelementptr inbounds double, ptr %1023, i64 %1140
  store double %1139, ptr %1141, align 8, !tbaa !58
  %1142 = getelementptr inbounds double, ptr %1027, i64 %1076
  %1143 = load double, ptr %1142, align 8, !tbaa !58
  %1144 = fmul double %1143, -4.000000e+00
  %1145 = or disjoint i64 %1054, 13
  %1146 = getelementptr inbounds double, ptr %1023, i64 %1145
  store double %1144, ptr %1146, align 8, !tbaa !58
  %1147 = getelementptr inbounds double, ptr %1027, i64 %1063
  %1148 = load double, ptr %1147, align 8, !tbaa !58
  %1149 = fmul double %1148, -2.000000e+00
  %1150 = or disjoint i64 %1054, 14
  %1151 = getelementptr inbounds double, ptr %1023, i64 %1150
  store double %1149, ptr %1151, align 8, !tbaa !58
  %1152 = getelementptr inbounds double, ptr %1027, i64 %1049
  %1153 = load double, ptr %1152, align 8, !tbaa !58
  %1154 = fneg double %1153
  %1155 = or disjoint i64 %1054, 15
  %1156 = getelementptr inbounds double, ptr %1023, i64 %1155
  store double %1154, ptr %1156, align 8, !tbaa !58
  %1157 = getelementptr inbounds double, ptr %1028, i64 %1050
  %1158 = load double, ptr %1157, align 8, !tbaa !58
  %1159 = fmul double %1158, -6.000000e+00
  %1160 = getelementptr inbounds double, ptr %1022, i64 %1140
  store double %1159, ptr %1160, align 8, !tbaa !58
  %1161 = getelementptr inbounds double, ptr %1028, i64 %1076
  %1162 = load double, ptr %1161, align 8, !tbaa !58
  %1163 = fmul double %1162, -4.000000e+00
  %1164 = getelementptr inbounds double, ptr %1022, i64 %1145
  store double %1163, ptr %1164, align 8, !tbaa !58
  %1165 = getelementptr inbounds double, ptr %1028, i64 %1063
  %1166 = load double, ptr %1165, align 8, !tbaa !58
  %1167 = fmul double %1166, -2.000000e+00
  %1168 = getelementptr inbounds double, ptr %1022, i64 %1150
  store double %1167, ptr %1168, align 8, !tbaa !58
  %1169 = getelementptr inbounds double, ptr %1028, i64 %1049
  %1170 = load double, ptr %1169, align 8, !tbaa !58
  %1171 = fneg double %1170
  %1172 = getelementptr inbounds double, ptr %1022, i64 %1155
  store double %1171, ptr %1172, align 8, !tbaa !58
  %1173 = add nuw nsw i64 %1048, 1
  %1174 = icmp eq i64 %1173, %1031
  br i1 %1174, label %1175, label %1047, !prof !133, !llvm.loop !134

1175:                                             ; preds = %1047, %739, %1019, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z8CkMyRankv() local_unnamed_addr #5 comdat !prof !42 {
  ret i32 0
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_Z8NAMD_diePKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil20calc_pair_energy_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil20calc_self_energy_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_fepEP9nonbonded(ptr noundef) #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil13calc_pair_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil20calc_pair_energy_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil13calc_self_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil20calc_self_energy_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil23calc_pair_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil23calc_self_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil29calc_pair_merge_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil29calc_self_merge_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil28calc_pair_slow_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil35calc_pair_energy_slow_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil28calc_self_slow_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil35calc_self_energy_slow_fullelect_lesEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil15calc_pair_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil22calc_pair_energy_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil15calc_self_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil22calc_self_energy_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil25calc_pair_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil32calc_pair_energy_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil25calc_self_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil32calc_self_energy_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil31calc_pair_merge_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil38calc_pair_energy_merge_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil31calc_self_merge_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil38calc_self_energy_merge_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_pair_slow_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil37calc_pair_energy_slow_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_self_slow_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil37calc_self_energy_slow_fullelect_pprofEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil20calc_pair_energy_intEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil20calc_self_energy_intEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_pair_energy_fullelect_intEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil30calc_self_energy_fullelect_intEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil36calc_pair_energy_merge_fullelect_intEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil36calc_self_energy_merge_fullelect_intEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil9calc_pairEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil16calc_pair_energyEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil9calc_selfEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil16calc_self_energyEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil19calc_pair_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil26calc_pair_energy_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil19calc_self_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil26calc_self_energy_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil25calc_pair_merge_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil32calc_pair_energy_merge_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil25calc_self_merge_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil32calc_self_energy_merge_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil24calc_pair_slow_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil31calc_pair_energy_slow_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil24calc_self_slow_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: optsize
declare void @_ZN20ComputeNonbondedUtil31calc_self_energy_slow_fullelectEP9nonbonded(ptr noundef) #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN7LJTableC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z6CkMyPev() local_unnamed_addr #5 comdat !prof !135 {
  ret i32 1
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare double @erfc(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZSt3powIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %0, i32 noundef %1) local_unnamed_addr #5 comdat {
  %3 = sitofp i32 %1 to double
  %4 = tail call double @pow(double noundef %0, double noundef %3) #16
  ret double %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ComputeNonbondedUtil.C() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { builtin optsize allocsize(0) }
attributes #16 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 10379128720}
!4 = !{!"MaxCount", i64 894261817}
!5 = !{!"MaxInternalCount", i64 894261817}
!6 = !{!"MaxFunctionCount", i64 536543178}
!7 = !{!"NumCounts", i64 2825}
!8 = !{!"NumFunctions", i64 153}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 894261817, i32 6}
!14 = !{i32 100000, i64 894261817, i32 6}
!15 = !{i32 200000, i64 894261817, i32 6}
!16 = !{i32 300000, i64 894261817, i32 6}
!17 = !{i32 400000, i64 894261817, i32 6}
!18 = !{i32 500000, i64 894261817, i32 6}
!19 = !{i32 600000, i64 149391598, i32 9}
!20 = !{i32 700000, i64 85897063, i32 20}
!21 = !{i32 800000, i64 77356517, i32 32}
!22 = !{i32 900000, i64 43998258, i32 46}
!23 = !{i32 950000, i64 16555149, i32 67}
!24 = !{i32 990000, i64 1242234, i32 178}
!25 = !{i32 999000, i64 296928, i32 332}
!26 = !{i32 999900, i64 56160, i32 355}
!27 = !{i32 999990, i64 7920, i32 414}
!28 = !{i32 999999, i64 768, i32 448}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @_Z8CkMyRankv, i64 1}
!36 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @_Z6CkMyPev, i64 4}
!37 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @_Znam, i64 1}
!38 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @erfc, i64 256}
!39 = !{ptr @_ZN20ComputeNonbondedUtil6selectEP13SimParametersP8MoleculeP7LJTable, ptr @exp, i64 256}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"branch_weights", i32 2, i32 1}
!48 = !{!49, !52, i64 300}
!49 = !{!"_ZTS13SimParameters", !50, i64 0, !50, i64 24, !50, i64 48, !50, i64 72, !52, i64 96, !52, i64 100, !51, i64 104, !52, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !52, i64 144, !51, i64 152, !51, i64 160, !52, i64 168, !51, i64 176, !51, i64 184, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !51, i64 264, !51, i64 272, !52, i64 280, !51, i64 288, !52, i64 296, !52, i64 300, !51, i64 304, !51, i64 312, !51, i64 320, !52, i64 328, !51, i64 336, !52, i64 344, !52, i64 348, !52, i64 352, !52, i64 356, !52, i64 360, !51, i64 368, !51, i64 376, !51, i64 384, !51, i64 392, !52, i64 400, !52, i64 404, !51, i64 408, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !51, i64 432, !52, i64 440, !52, i64 444, !53, i64 448}
!50 = !{!"_ZTS6Vector", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"double", !45, i64 0}
!52 = !{!"int", !45, i64 0}
!53 = !{!"_ZTS7Lattice", !50, i64 0, !50, i64 24, !50, i64 48, !50, i64 72, !50, i64 96, !50, i64 120, !50, i64 144, !52, i64 168, !52, i64 172, !52, i64 176}
!54 = !{!52, !52, i64 0}
!55 = !{!49, !52, i64 240}
!56 = !{!49, !52, i64 244}
!57 = !{!49, !51, i64 136}
!58 = !{!51, !51, i64 0}
!59 = !{!49, !51, i64 160}
!60 = !{!49, !51, i64 288}
!61 = !{!49, !52, i64 344}
!62 = !{!49, !52, i64 348}
!63 = !{!49, !52, i64 352}
!64 = !{!49, !52, i64 356}
!65 = !{!49, !52, i64 216}
!66 = !{!49, !52, i64 360}
!67 = !{!49, !52, i64 200}
!68 = !{!49, !51, i64 368}
!69 = !{!49, !51, i64 376}
!70 = !{!49, !51, i64 384}
!71 = !{!49, !51, i64 392}
!72 = !{!49, !52, i64 400}
!73 = !{!49, !52, i64 224}
!74 = !{!49, !52, i64 236}
!75 = !{!49, !52, i64 204}
!76 = !{!49, !52, i64 404}
!77 = !{!49, !52, i64 416}
!78 = !{!49, !51, i64 408}
!79 = !{!"branch_weights", i32 1, i32 2}
!80 = !{!49, !51, i64 176}
!81 = !{!49, !51, i64 184}
!82 = !{!49, !52, i64 220}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = distinct !{!85, !84}
!86 = !{!49, !52, i64 208}
!87 = !{!49, !52, i64 420}
!88 = !{!49, !51, i64 104}
!89 = !{!49, !51, i64 128}
!90 = !{!49, !52, i64 112}
!91 = !{!49, !51, i64 120}
!92 = !{!49, !52, i64 144}
!93 = !{!49, !51, i64 152}
!94 = !{!49, !52, i64 440}
!95 = !{!49, !52, i64 256}
!96 = !{!49, !52, i64 424}
!97 = !{!49, !51, i64 272}
!98 = !{!49, !52, i64 252}
!99 = !{!49, !52, i64 248}
!100 = !{!"branch_weights", i32 16, i32 2}
!101 = !{!49, !52, i64 280}
!102 = !{!"branch_weights", i32 1, i32 1, i32 2, i32 1, i32 1}
!103 = !{!"branch_weights", i32 127, i32 1}
!104 = !{!"branch_weights", i32 449, i32 127}
!105 = distinct !{!105, !84}
!106 = !{!49, !51, i64 432}
!107 = !{!"branch_weights", i32 1, i32 127}
!108 = !{!"branch_weights", i32 705, i32 65}
!109 = !{!"branch_weights", i32 1, i32 769}
!110 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 769, i32 1}
!111 = !{!"branch_weights", i32 769, i32 1}
!112 = !{!49, !52, i64 444}
!113 = !{!"branch_weights", i32 93, i32 677}
!114 = !{!"branch_weights", i32 127, i32 49089}
!115 = distinct !{!115, !84}
!116 = !{!"branch_weights", i32 704555003, i32 1442928645}
!117 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!118 = !{!"branch_weights", i32 4, i32 3}
!119 = !{!"branch_weights", i32 1, i32 191}
!120 = !{!"branch_weights", i32 1, i32 3841}
!121 = !{!"branch_weights", i32 437950, i32 8421702}
!122 = !{!"branch_weights", i32 191, i32 122721}
!123 = distinct !{!123, !84}
!124 = !{!"branch_weights", i32 3840, i32 3841}
!125 = distinct !{!125, !84}
!126 = !{!"branch_weights", i32 13, i32 1}
!127 = distinct !{!127, !84}
!128 = !{!"branch_weights", i32 2, i32 4}
!129 = distinct !{!129, !84}
!130 = !{!"branch_weights", i32 0, i32 -2147483648}
!131 = !{!"branch_weights", i32 196801, i32 127}
!132 = distinct !{!132, !84}
!133 = !{!"branch_weights", i32 127, i32 49153}
!134 = distinct !{!134, !84}
!135 = !{!"function_entry_count", i64 7}
