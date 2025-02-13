; ModuleID = 'simulator/cvarhist.cc'
source_filename = "simulator/cvarhist.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cDensityEstBase = type { %class.cStdDev, double, double, i64, i64, i64, double, i32, i8, ptr }
%class.cStdDev = type { %class.cStatistic.base, i64, double, double, double, double }
%class.cStatistic.base = type <{ %class.cOwnedObject.base, [4 x i8], ptr, ptr, i32 }>
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cVarHistogram = type { %class.cHistogramBase, i32, i32, ptr }
%class.cHistogramBase = type { %class.cDensityEstBase, i32, ptr }
%class.cStatistic = type <{ %class.cOwnedObject.base, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%"struct.cDensityEstBase::Cell" = type { double, double, double, double }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }

$_Z12genk_intrandil = comdat any

$_Z12genk_dblrandi = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK13cVarHistogram3dupEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

$_ZN10cStatistic21getAttributesToRecordER14opp_string_map = comdat any

$_ZN15cDensityEstBase7collectE7SimTime = comdat any

$_ZNK7cStdDev10isWeightedEv = comdat any

$_ZNK7cStdDev8getCountEv = comdat any

$_ZNK7cStdDev6getSumEv = comdat any

$_ZNK7cStdDev9getSqrSumEv = comdat any

$_ZNK7cStdDev6getMinEv = comdat any

$_ZNK7cStdDev6getMaxEv = comdat any

$_ZNK7cStdDev7getMeanEv = comdat any

$_ZNK7cStdDev10getWeightsEv = comdat any

$_ZNK7cStdDev14getWeightedSumEv = comdat any

$_ZNK7cStdDev16getSqrSumWeightsEv = comdat any

$_ZNK7cStdDev17getWeightedSqrSumEv = comdat any

$_ZN10cStatistic6recordEv = comdat any

$_ZN10cStatistic14recordWithUnitEPKc = comdat any

$_ZNK15cDensityEstBase13isTransformedEv = comdat any

$_ZNK15cDensityEstBase16getUnderflowCellEv = comdat any

$_ZNK15cDensityEstBase15getOverflowCellEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_Z18__contextModuleRNGi = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNK10cComponent6getRNGEi = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZN13cVarHistogramC2ERKS_ = comdat any

$_ZN14cHistogramBaseC2ERKS_ = comdat any

$_ZN15cDensityEstBaseC2ERKS_ = comdat any

$_ZNK7SimTime3dblEv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_118__onstartup_obj_46E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTV13cVarHistogram = dso_local unnamed_addr constant { [72 x ptr] } { [72 x ptr] [ptr null, ptr @_ZTI13cVarHistogram, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN13cVarHistogramD2Ev, ptr @_ZN13cVarHistogramD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cStdDev4infoB5cxx11Ev, ptr @_ZNK15cDensityEstBase12detailedInfoB5cxx11Ev, ptr @_ZNK13cVarHistogram3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN13cVarHistogram10parsimPackEP11cCommBuffer, ptr @_ZN13cVarHistogram12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZN10cStatistic21getAttributesToRecordER14opp_string_map, ptr @_ZN15cDensityEstBase7collectEd, ptr @_ZN15cDensityEstBase7collectE7SimTime, ptr @_ZNK7cStdDev10isWeightedEv, ptr @_ZN10cStatistic8collect2Edd, ptr @_ZN15cDensityEstBase5mergeEPK10cStatistic, ptr @_ZN13cVarHistogram11clearResultEv, ptr @_ZNK7cStdDev8getCountEv, ptr @_ZNK7cStdDev6getSumEv, ptr @_ZNK7cStdDev9getSqrSumEv, ptr @_ZNK7cStdDev6getMinEv, ptr @_ZNK7cStdDev6getMaxEv, ptr @_ZNK7cStdDev7getMeanEv, ptr @_ZNK7cStdDev9getStddevEv, ptr @_ZNK7cStdDev11getVarianceEv, ptr @_ZNK7cStdDev10getWeightsEv, ptr @_ZNK7cStdDev14getWeightedSumEv, ptr @_ZNK7cStdDev16getSqrSumWeightsEv, ptr @_ZNK7cStdDev17getWeightedSqrSumEv, ptr @_ZNK13cVarHistogram6randomEv, ptr @_ZNK13cVarHistogram10saveToFileEP8_IO_FILE, ptr @_ZN13cVarHistogram12loadFromFileEP8_IO_FILE, ptr @_ZN10cStatistic6recordEv, ptr @_ZN10cStatistic14recordWithUnitEPKc, ptr @_ZN10cStatistic8recordAsEPKcS1_, ptr @_ZN14cHistogramBase17doMergeCellValuesEPK15cDensityEstBase, ptr @_ZN15cDensityEstBase8setRangeEdd, ptr @_ZN15cDensityEstBase12setRangeAutoEid, ptr @_ZN15cDensityEstBase17setRangeAutoLowerEdid, ptr @_ZN15cDensityEstBase17setRangeAutoUpperEdid, ptr @_ZN15cDensityEstBase15setNumFirstValsEi, ptr @_ZN15cDensityEstBase10setupRangeEv, ptr @_ZN13cVarHistogram18collectTransformedEd, ptr @_ZNK15cDensityEstBase13isTransformedEv, ptr @_ZN13cVarHistogram9transformEv, ptr @_ZNK14cHistogramBase11getNumCellsEv, ptr @_ZNK13cVarHistogram12getBasepointEi, ptr @_ZNK13cVarHistogram12getCellValueEi, ptr @_ZNK15cDensityEstBase10getCellPDFEi, ptr @_ZNK15cDensityEstBase16getUnderflowCellEv, ptr @_ZNK15cDensityEstBase15getOverflowCellEv, ptr @_ZNK15cDensityEstBase11getCellInfoEi, ptr @_ZNK13cVarHistogram6getPDFEd, ptr @_ZNK13cVarHistogram6getCDFEd, ptr @_ZN14cHistogramBase11setNumCellsEi, ptr @_ZN13cVarHistogram11addBinBoundEd] }, align 8
@.str = private unnamed_addr constant [59 x i8] c"constructor: the maximal number of cells/bin should be >=2\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot add bin bound after transform()\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"some bin bounds already present when making equi-probable cells\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"setRange..() only supported with HIST_TR_NO_TRANSFORM mode\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"some bin bounds out of preset range\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid basepoint index %u\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid cell index %u\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"getPDF(x) cannot be called before histogram is transformed\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"getCDF(x) not implemented\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%d\09 #= transform_type\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%u\09 #= max_num_cells\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%d\09 #= bin_bounds[] exists\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %g\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"%d\09 #= transform_type\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"%u\09 #= max_num_cells\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"%d\09 #= bin_bounds[] exists\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@_ZTS13cVarHistogram = dso_local constant [16 x i8] c"13cVarHistogram\00", align 1
@_ZTI14cHistogramBase = external constant ptr
@_ZTI13cVarHistogram = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cVarHistogram, ptr @_ZTI14cHistogramBase }, align 8
@classes = external global %class.cGlobalRegistrationList, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV14cHistogramBase = external unnamed_addr constant { [71 x ptr] }, align 8
@_ZTV15cDensityEstBase = external unnamed_addr constant { [70 x ptr] }, align 8
@_ZN7SimTime9invfscaleE = external local_unnamed_addr global double, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cvarhist.cc, ptr null }]

@_ZN13cVarHistogramC1EPKcii = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN13cVarHistogramC2EPKcii
@_ZN13cVarHistogramD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13cVarHistogramD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_46Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_46Ev() #4 personality ptr @__gxx_personality_v0 !prof !66 !PGOFuncName !67 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #19
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI13cVarHistogram) #19
          to label %4 unwind label %9

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_46v, ptr noundef null) #19
          to label %5 unwind label %9

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cVarHistogramC2EPKcii(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN14cHistogramBaseC2EPKci(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i32 noundef -1) #19
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 7
  store i32 5, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  store i32 %2, ptr %7, align 4, !tbaa !89
  %8 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !90
  switch i32 %3, label %18 [
    i32 0, label %9
    i32 2, label %9
  ]

9:                                                ; preds = %4, %4
  %10 = icmp slt i32 %2, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str) #19
          to label %13 unwind label %14

13:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
          to label %21 unwind label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #20
  br label %19

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %19

18:                                               ; preds = %4, %9
  ret void

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #24
  resume { ptr, i32 } %20

21:                                               ; preds = %13
  unreachable
}

; Function Attrs: optsize
declare void @_ZN14cHistogramBaseC2EPKci(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32 noundef) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN13cVarHistogramD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 align 2 !prof !71 {
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #22
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #24
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN13cVarHistogramD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN13cVarHistogramD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN13cVarHistogram10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN13cVarHistogram12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cVarHistogram11addBinBoundEd(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 57
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #19
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #20
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !89
  br i1 %15, label %18, label %25

18:                                               ; preds = %12
  %19 = add nsw i32 %17, 1
  %20 = sext i32 %19 to i64
  %21 = icmp slt i32 %17, -1
  %22 = shl nsw i64 %20, 3
  %23 = select i1 %21, i64 -1, i64 %22
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %23) #21
  store ptr %24, ptr %13, align 8, !tbaa !90
  br label %25

25:                                               ; preds = %12, %18
  %26 = phi ptr [ %24, %18 ], [ %14, %12 ]
  %27 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !91
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %32 = shl nsw i32 %17, 1
  %33 = or disjoint i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp slt i32 %17, 0
  %36 = shl nsw i64 %34, 3
  %37 = select i1 %35, i64 -1, i64 %36
  %38 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %37) #21
  %39 = add nsw i32 %17, 1
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %38, ptr nonnull align 8 %26, i64 %41, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %26) #22
  %42 = load i32, ptr %31, align 4, !tbaa !89
  %43 = shl nsw i32 %42, 1
  %44 = load i32, ptr %27, align 8, !tbaa !91
  store ptr %38, ptr %13, align 8, !tbaa !90
  store i32 %43, ptr %31, align 4, !tbaa !89
  br label %45

45:                                               ; preds = %30, %25
  %46 = phi ptr [ %38, %30 ], [ %26, %25 ]
  %47 = phi i32 [ %44, %30 ], [ %28, %25 ]
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %46, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !92
  %52 = fcmp ogt double %51, %1
  br i1 %52, label %53, label %62

53:                                               ; preds = %45, %53
  %54 = phi i64 [ %58, %53 ], [ %49, %45 ]
  %55 = phi ptr [ %59, %53 ], [ %50, %45 ]
  %56 = getelementptr double, ptr %55, i64 -1
  %57 = load double, ptr %56, align 8, !tbaa !92
  store double %57, ptr %55, align 8, !tbaa !92
  %58 = add nsw i64 %54, -1
  %59 = getelementptr inbounds double, ptr %46, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !92
  %61 = fcmp ogt double %60, %1
  br i1 %61, label %53, label %62, !llvm.loop !93

62:                                               ; preds = %53, %45
  %63 = phi ptr [ %50, %45 ], [ %59, %53 ]
  store double %1, ptr %63, align 8, !tbaa !92
  store i32 %48, ptr %27, align 8, !tbaa !91
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN13cVarHistogramaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #4 align 2 !prof !71 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN14cHistogramBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) #19
  %6 = getelementptr inbounds %class.cHistogramBase, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZdaPv(ptr noundef nonnull %11) #22
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = sext i32 %16 to i64
  %18 = icmp slt i32 %16, 0
  %19 = shl nsw i64 %17, 2
  %20 = select i1 %18, i64 -1, i64 %19
  %21 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %20) #21
  store ptr %21, ptr %10, align 8, !tbaa !95
  %22 = load ptr, ptr %6, align 8, !tbaa !95
  %23 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !91
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %21, ptr align 4 %22, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %14, %4
  %28 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 1
  %30 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %31 = load <2 x i32>, ptr %29, align 8, !tbaa !96
  store <2 x i32> %31, ptr %30, align 8, !tbaa !96
  %32 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !90
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  tail call void @_ZdaPv(ptr noundef nonnull %33) #22
  br label %36

36:                                               ; preds = %35, %27
  store ptr null, ptr %32, align 8, !tbaa !90
  %37 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %28, align 4, !tbaa !89
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp slt i32 %41, -1
  %45 = shl nsw i64 %43, 3
  %46 = select i1 %44, i64 -1, i64 %45
  %47 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %46) #21
  store ptr %47, ptr %32, align 8, !tbaa !90
  %48 = load ptr, ptr %37, align 8, !tbaa !90
  %49 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !91
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %47, ptr align 8 %48, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %36, %40, %2
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN14cHistogramBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cVarHistogram23createEquiProbableCellsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #19
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %132

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #19
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %132

19:                                               ; preds = %10
  %20 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !89
  %22 = sext i32 %21 to i64
  %23 = icmp slt i32 %21, 0
  %24 = shl nsw i64 %22, 2
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #21
  %27 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !95
  %28 = add nsw i32 %21, 1
  %29 = sext i32 %28 to i64
  %30 = icmp slt i32 %21, -1
  %31 = shl nsw i64 %29, 3
  %32 = select i1 %30, i64 -1, i64 %31
  %33 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %32) #21
  %34 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !90
  %35 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !98
  tail call void @_Z10spec_qsortPvmmPFiPKvS1_E(ptr noundef %36, i64 noundef %38, i64 noundef 8, ptr noundef nonnull @_ZL23double_compare_functionPKvS0_) #19
  %39 = load i64, ptr %37, align 8, !tbaa !98
  %40 = sitofp i64 %39 to double
  %41 = load i32, ptr %20, align 4, !tbaa !89
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %40, %42
  %44 = load ptr, ptr %35, align 8, !tbaa !97
  %45 = load double, ptr %44, align 8, !tbaa !92
  %46 = load ptr, ptr %34, align 8, !tbaa !90
  store double %45, ptr %46, align 8, !tbaa !92
  %47 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  store double %45, ptr %47, align 8, !tbaa !99
  %48 = icmp sgt i32 %41, 1
  %49 = load ptr, ptr %27, align 8
  br i1 %48, label %50, label %106

50:                                               ; preds = %19, %82
  %51 = phi i64 [ %86, %82 ], [ 0, %19 ]
  %52 = phi double [ %97, %82 ], [ %43, %19 ]
  %53 = phi double [ %84, %82 ], [ %45, %19 ]
  %54 = phi i32 [ %85, %82 ], [ 0, %19 ]
  %55 = fptosi double %52 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp sgt i64 %39, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %50
  %59 = getelementptr inbounds double, ptr %44, i64 %56
  %60 = load double, ptr %59, align 8, !tbaa !92
  %61 = fcmp oeq double %60, %53
  br i1 %61, label %62, label %76

62:                                               ; preds = %58, %67
  %63 = phi i64 [ %68, %67 ], [ %56, %58 ]
  %64 = getelementptr inbounds double, ptr %44, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !92
  %66 = fcmp oeq double %65, %53
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = add nsw i64 %63, 1
  %69 = icmp sgt i64 %39, %68
  br i1 %69, label %62, label %70, !llvm.loop !100

70:                                               ; preds = %62, %67
  %71 = phi i64 [ %63, %62 ], [ %68, %67 ]
  %72 = icmp eq i64 %39, %71
  br i1 %72, label %102, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds double, ptr %44, i64 %71
  %75 = load double, ptr %74, align 8, !tbaa !92
  br label %82

76:                                               ; preds = %58, %76
  %77 = phi i64 [ %78, %76 ], [ %56, %58 ]
  %78 = add i64 %77, -1
  %79 = getelementptr inbounds double, ptr %44, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !92
  %81 = fcmp oeq double %80, %60
  br i1 %81, label %76, label %82, !llvm.loop !101

82:                                               ; preds = %76, %73
  %83 = phi i64 [ %71, %73 ], [ %77, %76 ]
  %84 = phi double [ %75, %73 ], [ %60, %76 ]
  %85 = trunc i64 %83 to i32
  %86 = add nuw nsw i64 %51, 1
  %87 = getelementptr inbounds double, ptr %46, i64 %86
  store double %84, ptr %87, align 8, !tbaa !92
  %88 = sub nsw i32 %85, %54
  %89 = getelementptr inbounds i32, ptr %49, i64 %51
  store i32 %88, ptr %89, align 4, !tbaa !96
  %90 = sitofp i32 %85 to double
  %91 = fadd double %43, %90
  %92 = trunc i64 %51 to i32
  %93 = add i32 %92, 2
  %94 = sitofp i32 %93 to double
  %95 = fmul double %43, %94
  %96 = fcmp ogt double %91, %95
  %97 = select i1 %96, double %91, double %95
  %98 = load i32, ptr %20, align 4, !tbaa !89
  %99 = add nsw i32 %98, -1
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %86, %100
  br i1 %101, label %50, label %102, !llvm.loop !102

102:                                              ; preds = %70, %82, %50
  %103 = phi i64 [ %51, %50 ], [ %86, %82 ], [ %51, %70 ]
  %104 = phi i32 [ %54, %50 ], [ %85, %82 ], [ %54, %70 ]
  %105 = trunc i64 %103 to i32
  br label %106

106:                                              ; preds = %102, %19
  %107 = phi i32 [ 0, %19 ], [ %105, %102 ]
  %108 = phi i32 [ 0, %19 ], [ %104, %102 ]
  %109 = trunc i64 %39 to i32
  %110 = sub i32 %109, %108
  %111 = zext nneg i32 %107 to i64
  %112 = getelementptr inbounds i32, ptr %49, i64 %111
  store i32 %110, ptr %112, align 4, !tbaa !96
  %113 = getelementptr double, ptr %44, i64 %39
  %114 = getelementptr double, ptr %113, i64 -1
  %115 = load double, ptr %114, align 8, !tbaa !92
  %116 = add nuw nsw i32 %107, 1
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds double, ptr %46, i64 %117
  store double %115, ptr %118, align 8, !tbaa !92
  %119 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  store double %115, ptr %119, align 8, !tbaa !103
  %120 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !86
  switch i32 %121, label %131 [
    i32 0, label %122
    i32 2, label %127
  ]

122:                                              ; preds = %106
  %123 = load double, ptr %114, align 8, !tbaa !92
  %124 = load double, ptr %44, align 8, !tbaa !92
  %125 = fsub double %123, %124
  %126 = fmul double %125, 0x3EB0C6F7A0B5ED8D
  br label %127

127:                                              ; preds = %106, %122
  %128 = phi double [ %126, %122 ], [ 1.000000e+00, %106 ]
  %129 = load double, ptr %118, align 8, !tbaa !92
  %130 = fadd double %129, %128
  store double %130, ptr %118, align 8, !tbaa !92
  store double %130, ptr %119, align 8, !tbaa !103
  br label %131

131:                                              ; preds = %127, %106
  store i32 %116, ptr %2, align 8, !tbaa !91
  ret void

132:                                              ; preds = %17, %8
  %133 = phi ptr [ %15, %17 ], [ %6, %8 ]
  %134 = phi { ptr, i32 } [ %18, %17 ], [ %9, %8 ]
  tail call void @__cxa_free_exception(ptr %133) #20
  resume { ptr, i32 } %134
}

; Function Attrs: optsize
declare void @_Z10spec_qsortPvmmPFiPKvS1_E(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL23double_compare_functionPKvS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !71 !PGOFuncName !104 {
  %3 = load double, ptr %0, align 8, !tbaa !92
  %4 = load double, ptr %1, align 8, !tbaa !92
  %5 = fcmp oeq double %3, %4
  %6 = fcmp olt double %3, %4
  %7 = select i1 %6, i32 -1, i32 1
  %8 = select i1 %5, i32 0, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cVarHistogram9transformEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 55
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  %5 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !86
  switch i32 %6, label %8 [
    i32 0, label %7
    i32 2, label %7
  ]

7:                                                ; preds = %1, %1
  tail call void @_ZN13cVarHistogram23createEquiProbableCellsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #19
  br label %83

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !72
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = load double, ptr %16, align 8, !tbaa !92
  %18 = fcmp ogt double %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !91
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %16, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !92
  %27 = fcmp olt double %21, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19, %12
  %29 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %29, ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #19
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %29) #20
  resume { ptr, i32 } %32

33:                                               ; preds = %19
  %34 = fcmp olt double %14, %17
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 8, !tbaa !68
  %37 = getelementptr inbounds ptr, ptr %36, i64 69
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %14) #19
  %39 = load double, ptr %20, align 8, !tbaa !103
  %40 = load ptr, ptr %15, align 8, !tbaa !90
  %41 = load i32, ptr %22, align 8, !tbaa !91
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %40, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !92
  br label %45

45:                                               ; preds = %35, %33
  %46 = phi double [ %44, %35 ], [ %26, %33 ]
  %47 = phi double [ %39, %35 ], [ %21, %33 ]
  %48 = fcmp ogt double %47, %46
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !68
  %51 = getelementptr inbounds ptr, ptr %50, i64 69
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %47) #19
  br label %53

53:                                               ; preds = %45, %49, %8
  %54 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !91
  %56 = sext i32 %55 to i64
  %57 = icmp slt i32 %55, 0
  %58 = shl nsw i64 %56, 2
  %59 = select i1 %57, i64 -1, i64 %58
  %60 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %59) #21
  %61 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !95
  %62 = icmp sgt i32 %55, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = zext nneg i32 %55 to i64
  %65 = shl nuw nsw i64 %64, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %60, i8 0, i64 %65, i1 false), !tbaa !96
  br label %66

66:                                               ; preds = %63, %53
  %67 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !98
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ 0, %70 ], [ %80, %72 ]
  %74 = load ptr, ptr %71, align 8, !tbaa !97
  %75 = getelementptr inbounds double, ptr %74, i64 %73
  %76 = load double, ptr %75, align 8, !tbaa !92
  %77 = load ptr, ptr %0, align 8, !tbaa !68
  %78 = getelementptr inbounds ptr, ptr %77, i64 56
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %76) #19
  %80 = add nuw nsw i64 %73, 1
  %81 = load i64, ptr %67, align 8, !tbaa !98
  %82 = icmp sgt i64 %81, %80
  br i1 %82, label %72, label %83, !llvm.loop !105

83:                                               ; preds = %72, %66, %7
  %84 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 8
  store i8 1, ptr %84, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN13cVarHistogram18collectTransformedEd(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, double noundef %1) unnamed_addr #12 align 2 !prof !71 {
  %3 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !99
  %5 = fcmp ogt double %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !107
  %9 = add i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !107
  br label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !103
  %13 = fcmp ugt double %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !108
  br label %48

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !91
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = lshr i32 %20, 1
  %24 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %23, %22 ], [ %37, %26 ]
  %28 = phi i32 [ %20, %22 ], [ %35, %26 ]
  %29 = phi i32 [ 0, %22 ], [ %34, %26 ]
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds double, ptr %25, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !92
  %33 = fcmp ogt double %32, %1
  %34 = select i1 %33, i32 %29, i32 %27
  %35 = select i1 %33, i32 %27, i32 %28
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %26, label %39, !llvm.loop !109

39:                                               ; preds = %26
  %40 = zext nneg i32 %34 to i64
  br label %41

41:                                               ; preds = %39, %18
  %42 = phi i64 [ 0, %18 ], [ %40, %39 ]
  %43 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  %45 = getelementptr inbounds i32, ptr %44, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !96
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !96
  br label %48

48:                                               ; preds = %14, %41, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cVarHistogram11clearResultEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZN14cHistogramBase11clearResultEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #19
  %2 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #22
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare void @_ZN14cHistogramBase11clearResultEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK13cVarHistogram12getBasepointEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !92
  ret double %11

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %1) #19
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #20
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK13cVarHistogram12getCellValueEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = uitofp i32 %11 to double
  ret double %12

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %1) #19
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #20
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK13cVarHistogram6randomEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !110
  %8 = icmp slt i64 %3, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %class.cStatistic, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !111
  %14 = tail call noundef i64 @_Z12genk_intrandil(i32 noundef %13, i64 noundef %3) #19
  %15 = getelementptr inbounds double, ptr %11, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !92
  br label %58

17:                                               ; preds = %5
  %18 = getelementptr inbounds %class.cStatistic, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !111
  %20 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 4
  %21 = load i64, ptr %20, align 8, !tbaa !107
  %22 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !108
  %24 = add i64 %21, %23
  %25 = sub i64 %3, %24
  %26 = tail call noundef i64 @_Z12genk_intrandil(i32 noundef %19, i64 noundef %25) #19
  %27 = sitofp i64 %26 to double
  %28 = load i64, ptr %20, align 8, !tbaa !107
  %29 = uitofp i64 %28 to double
  %30 = fsub double %27, %29
  %31 = fcmp ult double %30, 0.000000e+00
  br i1 %31, label %46, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %42, %35 ]
  %37 = phi double [ %30, %32 ], [ %41, %35 ]
  %38 = getelementptr inbounds i32, ptr %34, i64 %36
  %39 = load i32, ptr %38, align 4, !tbaa !96
  %40 = uitofp i32 %39 to double
  %41 = fsub double %37, %40
  %42 = add nuw i64 %36, 1
  %43 = fcmp ult double %41, 0.000000e+00
  br i1 %43, label %44, label %35, !llvm.loop !112

44:                                               ; preds = %35
  %45 = and i64 %42, 4294967295
  br label %46

46:                                               ; preds = %44, %17
  %47 = phi i64 [ 0, %17 ], [ %45, %44 ]
  %48 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = getelementptr double, ptr %49, i64 %47
  %51 = getelementptr double, ptr %50, i64 -1
  %52 = load double, ptr %51, align 8, !tbaa !92
  %53 = load double, ptr %50, align 8, !tbaa !92
  %54 = load i32, ptr %18, align 8, !tbaa !111
  %55 = tail call noundef double @_Z12genk_dblrandi(i32 noundef %54) #19
  %56 = fsub double %53, %52
  %57 = tail call double @llvm.fmuladd.f64(double %55, double %56, double %52)
  br label %58

58:                                               ; preds = %1, %46, %9
  %59 = phi double [ %16, %9 ], [ %57, %46 ], [ 0.000000e+00, %1 ]
  ret double %59
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_Z12genk_intrandil(i32 noundef %0, i64 noundef %1) local_unnamed_addr #4 comdat !prof !113 {
  %3 = tail call noundef ptr @_Z18__contextModuleRNGi(i32 noundef %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds ptr, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %1) #19
  ret i64 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_Z12genk_dblrandi(i32 noundef %0) local_unnamed_addr #4 comdat !prof !71 {
  %2 = tail call noundef ptr @_Z18__contextModuleRNGi(i32 noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef double %5(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  ret double %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK13cVarHistogram6getPDFEd(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !98
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !68
  %8 = getelementptr inbounds ptr, ptr %7, i64 57
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(168) %0) #19
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #19
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #20
  resume { ptr, i32 } %15

16:                                               ; preds = %6
  %17 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !99
  %19 = fcmp ule double %18, %1
  %20 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  %21 = load double, ptr %20, align 8
  %22 = fcmp ugt double %21, %1
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %24, label %68

24:                                               ; preds = %16
  %25 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !91
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  br label %48

31:                                               ; preds = %24
  %32 = lshr i32 %26, 1
  %33 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %32, %31 ], [ %46, %35 ]
  %37 = phi i32 [ %26, %31 ], [ %44, %35 ]
  %38 = phi i32 [ 0, %31 ], [ %43, %35 ]
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds double, ptr %34, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !92
  %42 = fcmp ogt double %41, %1
  %43 = select i1 %42, i32 %38, i32 %36
  %44 = select i1 %42, i32 %36, i32 %37
  %45 = add nsw i32 %43, %44
  %46 = sdiv i32 %45, 2
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %35, label %48, !llvm.loop !114

48:                                               ; preds = %35, %28
  %49 = phi ptr [ %30, %28 ], [ %34, %35 ]
  %50 = phi i32 [ 0, %28 ], [ %43, %35 ]
  %51 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  %53 = zext nneg i32 %50 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !96
  %56 = uitofp i32 %55 to double
  %57 = sext i32 %50 to i64
  %58 = getelementptr double, ptr %49, i64 %57
  %59 = getelementptr double, ptr %58, i64 1
  %60 = load double, ptr %59, align 8, !tbaa !92
  %61 = getelementptr inbounds double, ptr %49, i64 %53
  %62 = load double, ptr %61, align 8, !tbaa !92
  %63 = fsub double %60, %62
  %64 = fdiv double %56, %63
  %65 = load i64, ptr %3, align 8, !tbaa !98
  %66 = sitofp i64 %65 to double
  %67 = fdiv double %64, %66
  br label %68

68:                                               ; preds = %16, %2, %48
  %69 = phi double [ %67, %48 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %16 ]
  ret double %69
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef double @_ZNK13cVarHistogram6getCDFEd(ptr noundef nonnull align 8 dereferenceable(200) %0, double %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK13cVarHistogram10saveToFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZNK14cHistogramBase10saveToFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) #19
  %3 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %4) #19
  %6 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %7) #19
  %9 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %12) #19
  %14 = load ptr, ptr %9, align 8, !tbaa !90
  %15 = icmp eq ptr %14, null
  %16 = load i32, ptr %6, align 4
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %2, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %2 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !90
  %22 = getelementptr inbounds double, ptr %21, i64 %20
  %23 = load double, ptr %22, align 8, !tbaa !92
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, double noundef %23) #19
  %25 = add nuw nsw i64 %20, 1
  %26 = load i32, ptr %6, align 4, !tbaa !89
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %20, %27
  br i1 %28, label %19, label %29, !llvm.loop !115

29:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZNK14cHistogramBase10saveToFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cVarHistogram12loadFromFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !71 {
  %3 = alloca i32, align 4
  tail call void @_ZN14cHistogramBase12loadFromFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) #19
  %4 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %4) #19
  %5 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4, !tbaa !89
  %11 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = sext i32 %10 to i64
  %16 = icmp slt i32 %10, 0
  %17 = shl nsw i64 %15, 2
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #21
  %20 = sext i32 %12 to i64
  %21 = shl nsw i64 %20, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %19, ptr nonnull align 4 %7, i64 %21, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %7) #22
  store ptr %19, ptr %6, align 8, !tbaa !95
  br label %22

22:                                               ; preds = %14, %9, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #19
  %23 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @_ZdaPv(ptr noundef nonnull %24) #22
  br label %27

27:                                               ; preds = %26, %22
  store ptr null, ptr %23, align 8, !tbaa !90
  %28 = load i32, ptr %3, align 4, !tbaa !96
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4, !tbaa !89
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp slt i32 %31, -1
  %35 = shl nsw i64 %33, 3
  %36 = select i1 %34, i64 -1, i64 %35
  %37 = call noalias noundef nonnull ptr @_Znam(i64 noundef %36) #21
  store ptr %37, ptr %23, align 8, !tbaa !90
  %38 = icmp slt i32 %31, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %30, %39
  %40 = phi i64 [ %43, %39 ], [ 0, %30 ]
  %41 = load ptr, ptr %23, align 8, !tbaa !90
  %42 = getelementptr inbounds double, ptr %41, i64 %40
  call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %42) #19
  %43 = add nuw nsw i64 %40, 1
  %44 = load i32, ptr %5, align 4, !tbaa !89
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %39, label %47, !llvm.loop !116

47:                                               ; preds = %39, %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZN14cHistogramBase12loadFromFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.21, ptr %3, !prof !119
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !120 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cStdDev4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK15cDensityEstBase12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cVarHistogram3dupEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #21
  invoke void @_ZN13cVarHistogramC2ERKS_(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %0) #19
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !123 {
  ret i1 true
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !124
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cStatistic21getAttributesToRecordER14opp_string_map(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !71 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase7collectEd(ptr noundef nonnull align 8 dereferenceable(168), double noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15cDensityEstBase7collectE7SimTime(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = tail call noundef double @_ZNK7SimTime3dblEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds ptr, ptr %4, i64 25
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cStdDev10isWeightedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN10cStatistic8collect2Edd(ptr noundef nonnull align 8 dereferenceable(60), double noundef, double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase5mergeEPK10cStatistic(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK7cStdDev8getCountEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !98
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev6getSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 4
  %3 = load double, ptr %2, align 8, !tbaa !125
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev9getSqrSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !126
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev6getMinEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !128
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev6getMaxEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 3
  %3 = load double, ptr %2, align 8, !tbaa !129
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev7getMeanEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 4
  %6 = load double, ptr %5, align 8
  %7 = sitofp i64 %3 to double
  %8 = fdiv double %6, %7
  %9 = select i1 %4, double 0.000000e+00, double %8, !prof !130
  ret double %9
}

; Function Attrs: optsize
declare noundef double @_ZNK7cStdDev9getStddevEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK7cStdDev11getVarianceEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev10getWeightsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(104) %0) #19
  %6 = sitofp i64 %5 to double
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev14getWeightedSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef double %4(ptr noundef nonnull align 8 dereferenceable(104) %0) #19
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev16getSqrSumWeightsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(104) %0) #19
  %6 = sitofp i64 %5 to double
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev17getWeightedSqrSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 33
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef double %4(ptr noundef nonnull align 8 dereferenceable(104) %0) #19
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cStatistic6recordEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds ptr, ptr %2, i64 48
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef null, ptr noundef null) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cStatistic14recordWithUnitEPKc(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 48
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef null, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cStatistic8recordAsEPKcS1_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN14cHistogramBase17doMergeCellValuesEPK15cDensityEstBase(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase8setRangeEdd(ptr noundef nonnull align 8 dereferenceable(168), double noundef, double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase12setRangeAutoEid(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase17setRangeAutoLowerEdid(ptr noundef nonnull align 8 dereferenceable(168), double noundef, i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase17setRangeAutoUpperEdid(ptr noundef nonnull align 8 dereferenceable(168), double noundef, i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase15setNumFirstValsEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN15cDensityEstBase10setupRangeEv(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK15cDensityEstBase13isTransformedEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !106, !range !131, !noundef !132
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef i32 @_ZNK14cHistogramBase11getNumCellsEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK15cDensityEstBase10getCellPDFEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK15cDensityEstBase16getUnderflowCellEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !107
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK15cDensityEstBase15getOverflowCellEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !108
  ret i64 %3
}

; Function Attrs: optsize
declare void @_ZNK15cDensityEstBase11getCellInfoEi(ptr dead_on_unwind writable sret(%"struct.cDensityEstBase::Cell") align 8, ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN14cHistogramBase11setNumCellsEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_46v() #4 personality ptr @__gxx_personality_v0 !prof !71 !PGOFuncName !133 {
  %1 = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #21
  invoke void @_ZN13cVarHistogramC2EPKcii(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef null, i32 noundef 11, i32 noundef 0) #19
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #22
  resume { ptr, i32 } %4
}

; Function Attrs: optsize
declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #19
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !134
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !71 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #19
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18) #19
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !139, !range !131, !noundef !132
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !140
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !141 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !142 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #26
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #19
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #19
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !144 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #19
  store i64 %6, ptr %4, align 8, !tbaa !145
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !146

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #19
  %10 = load i64, ptr %4, align 8, !tbaa !145
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #19
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #19
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #24
  store ptr null, ptr %5, align 8, !tbaa !147
  %15 = load i64, ptr %4, align 8, !tbaa !145
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #19
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !144 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !149
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #19
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !144 {
  store ptr %1, ptr %0, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %2 = load ptr, ptr %0, align 8, !tbaa !147
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !150

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #25
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !144 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !144 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z18__contextModuleRNGi(i32 noundef %0) local_unnamed_addr #4 comdat !prof !113 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %3 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !151

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %7 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %6) #19
  %8 = tail call noundef ptr @_ZNK10cComponent6getRNGEi(ptr noundef nonnull align 8 dereferenceable(104) %7, i32 noundef %0) #19
  br label %15

9:                                                ; preds = %1
  %10 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds ptr, ptr %11, i64 41
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(288) %10, i32 noundef %0) #19
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi ptr [ %8, %5 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #5 comdat align 2 !prof !152 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !149
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cComponent6getRNGEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !113 {
  %3 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %4 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !153
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %14, !prof !151

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !96
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ %1, %2 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !68
  %17 = getelementptr inbounds ptr, ptr %16, i64 41
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(288) %3, i32 noundef %15) #19
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #5 comdat align 2 !prof !158 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !149
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13cVarHistogramC2ERKS_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN14cHistogramBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) #19
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = load ptr, ptr %1, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1) #19
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6) #19
          to label %11 unwind label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !90
  %13 = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN13cVarHistogramaSERKS_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) #19
          to label %14 unwind label %15

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %11, %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14cHistogramBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN15cDensityEstBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) #19
  store ptr getelementptr inbounds ({ [71 x ptr] }, ptr @_ZTV14cHistogramBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = load ptr, ptr %1, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1) #19
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6) #19
          to label %11 unwind label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !95
  %13 = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN14cHistogramBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) #19
          to label %14 unwind label %15

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %11, %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN15cDensityEstBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15cDensityEstBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN7cStdDevC2EPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null) #19
  store ptr getelementptr inbounds ({ [70 x ptr] }, ptr @_ZTV15cDensityEstBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = load ptr, ptr %1, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1) #19
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6) #19
          to label %11 unwind label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  store ptr null, ptr %12, align 8, !tbaa !97
  %13 = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN15cDensityEstBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) #19
          to label %14 unwind label %15

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %11, %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10cStatisticD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind optsize
declare void @_ZN15cDensityEstBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN7cStdDevC2EPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN15cDensityEstBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN10cStatisticD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK7SimTime3dblEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !159 {
  %2 = load i64, ptr %0, align 8, !tbaa !160
  %3 = sitofp i64 %2 to double
  %4 = load double, ptr @_ZN7SimTime9invfscaleE, align 8, !tbaa !92
  %5 = fmul double %4, %3
  ret double %5
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cvarhist.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { builtin optsize allocsize(0) }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { noreturn }
attributes #24 = { nounwind optsize }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!65}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!39 = !{ptr @_Z12genk_intrandil, ptr @_Z18__contextModuleRNGi, i64 212014}
!40 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!41 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!42 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!43 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!44 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!45 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!46 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!47 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!48 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!49 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!50 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!51 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!52 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!53 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!54 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!55 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!56 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!57 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!58 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!59 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!60 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 424027}
!61 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZNK11cSimulation16getContextModuleEv, i64 424027}
!62 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZNK10cComponent6getRNGEi, i64 212013}
!63 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 1}
!64 = !{ptr @_ZNK10cComponent6getRNGEi, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 212014}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 1}
!67 = !{!"cvarhist.cc:_ZN12_GLOBAL__N_119__onstartup_func_46Ev"}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !70, i64 0}
!70 = !{!"Simple C++ TBAA"}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!73, !82, i64 152}
!73 = !{!"_ZTS15cDensityEstBase", !74, i64 0, !84, i64 104, !84, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !84, i64 144, !82, i64 152, !85, i64 156, !79, i64 160}
!74 = !{!"_ZTS7cStdDev", !75, i64 0, !83, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96}
!75 = !{!"_ZTS10cStatistic", !76, i64 0, !79, i64 40, !79, i64 48, !82, i64 56}
!76 = !{!"_ZTS12cOwnedObject", !77, i64 0, !79, i64 24, !82, i64 32}
!77 = !{!"_ZTS12cNamedObject", !78, i64 0, !79, i64 8, !81, i64 16, !81, i64 18}
!78 = !{!"_ZTS7cObject"}
!79 = !{!"any pointer", !80, i64 0}
!80 = !{!"omnipotent char", !70, i64 0}
!81 = !{!"short", !80, i64 0}
!82 = !{!"int", !80, i64 0}
!83 = !{!"long", !80, i64 0}
!84 = !{!"double", !80, i64 0}
!85 = !{!"bool", !80, i64 0}
!86 = !{!87, !82, i64 184}
!87 = !{!"_ZTS13cVarHistogram", !88, i64 0, !82, i64 184, !82, i64 188, !79, i64 192}
!88 = !{!"_ZTS14cHistogramBase", !73, i64 0, !82, i64 168, !79, i64 176}
!89 = !{!87, !82, i64 188}
!90 = !{!87, !79, i64 192}
!91 = !{!88, !82, i64 168}
!92 = !{!84, !84, i64 0}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!88, !79, i64 176}
!96 = !{!82, !82, i64 0}
!97 = !{!73, !79, i64 160}
!98 = !{!74, !83, i64 64}
!99 = !{!73, !84, i64 104}
!100 = distinct !{!100, !94}
!101 = distinct !{!101, !94}
!102 = distinct !{!102, !94}
!103 = !{!73, !84, i64 112}
!104 = !{!"cvarhist.cc:_ZL23double_compare_functionPKvS0_"}
!105 = distinct !{!105, !94}
!106 = !{!73, !85, i64 156}
!107 = !{!73, !83, i64 128}
!108 = !{!73, !83, i64 136}
!109 = distinct !{!109, !94}
!110 = !{!73, !83, i64 120}
!111 = !{!75, !82, i64 56}
!112 = distinct !{!112, !94}
!113 = !{!"function_entry_count", i64 212014}
!114 = distinct !{!114, !94}
!115 = distinct !{!115, !94}
!116 = distinct !{!116, !94}
!117 = !{!"function_entry_count", i64 192538233}
!118 = !{!77, !79, i64 8}
!119 = !{!"branch_weights", i32 1, i32 192538234}
!120 = !{!"function_entry_count", i64 235321}
!121 = !{!"function_entry_count", i64 542987320}
!122 = !{!76, !79, i64 24}
!123 = !{!"function_entry_count", i64 147484992}
!124 = !{!77, !81, i64 16}
!125 = !{!74, !84, i64 88}
!126 = !{!74, !84, i64 96}
!127 = !{!"function_entry_count", i64 9848}
!128 = !{!74, !84, i64 72}
!129 = !{!74, !84, i64 80}
!130 = !{!"branch_weights", i32 5796, i32 4054}
!131 = !{i8 0, i8 2}
!132 = !{}
!133 = !{!"cvarhist.cc:_ZL15__uniquename_46v"}
!134 = !{!135, !82, i64 8}
!135 = !{!"_ZTS10cException", !136, i64 0, !82, i64 8, !137, i64 16, !85, i64 48, !137, i64 56, !137, i64 88, !82, i64 120}
!136 = !{!"_ZTSSt9exception"}
!137 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !138, i64 0, !83, i64 8, !80, i64 16}
!138 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !79, i64 0}
!139 = !{!135, !85, i64 48}
!140 = !{!135, !82, i64 120}
!141 = !{!"function_entry_count", i64 2}
!142 = !{!"function_entry_count", i64 2107073}
!143 = !{!"function_entry_count", i64 1891507}
!144 = !{!"function_entry_count", i64 1889443}
!145 = !{!83, !83, i64 0}
!146 = !{!"branch_weights", i32 1257663, i32 631782}
!147 = !{!148, !79, i64 0}
!148 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !79, i64 0}
!149 = !{!79, !79, i64 0}
!150 = !{!"branch_weights", i32 1889444, i32 1}
!151 = !{!"branch_weights", i32 1, i32 212015}
!152 = !{!"function_entry_count", i64 5379836753}
!153 = !{!154, !81, i64 64}
!154 = !{!"_ZTS10cComponent", !155, i64 0, !79, i64 56, !81, i64 64, !79, i64 72, !81, i64 80, !81, i64 82, !79, i64 88, !79, i64 96}
!155 = !{!"_ZTS12cDefaultList", !156, i64 0, !79, i64 40, !82, i64 48, !82, i64 52}
!156 = !{!"_ZTS23cNoncopyableOwnedObject", !76, i64 0}
!157 = !{!154, !79, i64 72}
!158 = !{!"function_entry_count", i64 21674314260}
!159 = !{!"function_entry_count", i64 139164}
!160 = !{!161, !83, i64 0}
!161 = !{!"_ZTS7SimTime", !83, i64 0}
