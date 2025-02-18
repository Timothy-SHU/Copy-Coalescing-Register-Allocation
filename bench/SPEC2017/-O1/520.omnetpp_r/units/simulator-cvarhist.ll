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
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%"struct.cDensityEstBase::Cell" = type { double, double, double, double }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN13cVarHistogramC2ERKS_ = comdat any

$_ZN14cHistogramBaseC2ERKS_ = comdat any

$_ZN15cDensityEstBaseC2ERKS_ = comdat any

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
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
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

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_46Ev() #3 personality ptr @__gxx_personality_v0 !prof !46 !PGOFuncName !47 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI13cVarHistogram)
          to label %4 unwind label %9, !prof !48

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_46v, ptr noundef null)
          to label %5 unwind label %9, !prof !48

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !52
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #23
  resume { ptr, i32 } %10
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cVarHistogramC2EPKcii(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN14cHistogramBaseC2EPKci(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i32 noundef -1)
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 7
  store i32 5, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  store i32 %3, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  store i32 %2, ptr %7, align 4, !tbaa !71
  %8 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !72
  switch i32 %3, label %18 [
    i32 0, label %9
    i32 2, label %9
  ]

9:                                                ; preds = %4, %4
  %10 = icmp slt i32 %2, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str)
          to label %13 unwind label %14

13:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
          to label %21 unwind label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #24
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

declare void @_ZN14cHistogramBaseC2EPKci(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32 noundef) unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN13cVarHistogramD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !53 {
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #23
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #24
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN13cVarHistogramD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 !prof !53 {
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #23
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN13cVarHistogram10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #24
  resume { ptr, i32 } %6
}

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN13cVarHistogram12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #24
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cVarHistogram11addBinBoundEd(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 57
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #24
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !71
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = icmp slt i32 %18, -1
  %22 = shl nsw i64 %20, 3
  %23 = select i1 %21, i64 -1, i64 %22
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %23) #22
  store ptr %24, ptr %13, align 8, !tbaa !72
  br label %25

25:                                               ; preds = %16, %12
  %26 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !73
  %28 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !71
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = shl nsw i32 %29, 1
  %33 = or disjoint i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp slt i32 %29, 0
  %36 = shl nsw i64 %34, 3
  %37 = select i1 %35, i64 -1, i64 %36
  %38 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %37) #22
  %39 = load ptr, ptr %13, align 8, !tbaa !72
  %40 = add nsw i32 %29, 1
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %38, ptr align 8 %39, i64 %42, i1 false)
  %43 = icmp eq ptr %39, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  tail call void @_ZdaPv(ptr noundef %39) #23
  br label %45

45:                                               ; preds = %44, %31
  store ptr %38, ptr %13, align 8, !tbaa !72
  %46 = load i32, ptr %28, align 4, !tbaa !71
  %47 = shl nsw i32 %46, 1
  store i32 %47, ptr %28, align 4, !tbaa !71
  br label %48

48:                                               ; preds = %45, %25
  %49 = load i32, ptr %26, align 8, !tbaa !73
  %50 = add nsw i32 %49, 1
  %51 = load ptr, ptr %13, align 8, !tbaa !72
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds double, ptr %51, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !74
  %55 = fcmp ogt double %54, %1
  br i1 %55, label %56, label %65

56:                                               ; preds = %48, %56
  %57 = phi i64 [ %61, %56 ], [ %52, %48 ]
  %58 = phi ptr [ %62, %56 ], [ %53, %48 ]
  %59 = getelementptr double, ptr %58, i64 -1
  %60 = load double, ptr %59, align 8, !tbaa !74
  store double %60, ptr %58, align 8, !tbaa !74
  %61 = add nsw i64 %57, -1
  %62 = getelementptr inbounds double, ptr %51, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !74
  %64 = fcmp ogt double %63, %1
  br i1 %64, label %56, label %65, !llvm.loop !75

65:                                               ; preds = %56, %48
  %66 = phi ptr [ %53, %48 ], [ %62, %56 ]
  store double %1, ptr %66, align 8, !tbaa !74
  store i32 %50, ptr %26, align 8, !tbaa !73
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN13cVarHistogramaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 align 2 !prof !53 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(184) ptr @_ZN14cHistogramBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
  %6 = getelementptr inbounds %class.cHistogramBase, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZdaPv(ptr noundef %11) #23
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !71
  %17 = sext i32 %16 to i64
  %18 = icmp slt i32 %16, 0
  %19 = shl nsw i64 %17, 2
  %20 = select i1 %18, i64 -1, i64 %19
  %21 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %20) #22
  store ptr %21, ptr %10, align 8, !tbaa !78
  %22 = load ptr, ptr %6, align 8, !tbaa !78
  %23 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !73
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %21, ptr align 4 %22, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %14, %4
  %28 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !71
  %30 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  store i32 %29, ptr %30, align 4, !tbaa !71
  %31 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !68
  %33 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  store i32 %32, ptr %33, align 8, !tbaa !68
  %34 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  tail call void @_ZdaPv(ptr noundef %35) #23
  br label %38

38:                                               ; preds = %37, %27
  store ptr null, ptr %34, align 8, !tbaa !72
  %39 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = icmp eq ptr %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %30, align 4, !tbaa !71
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = icmp slt i32 %43, -1
  %47 = shl nsw i64 %45, 3
  %48 = select i1 %46, i64 -1, i64 %47
  %49 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %48) #22
  store ptr %49, ptr %34, align 8, !tbaa !72
  %50 = load ptr, ptr %39, align 8, !tbaa !72
  %51 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !73
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %50, i64 %55, i1 false)
  br label %56

56:                                               ; preds = %38, %42, %2
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN14cHistogramBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cVarHistogram23createEquiProbableCellsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %146

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %146

19:                                               ; preds = %10
  %20 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !71
  %22 = sext i32 %21 to i64
  %23 = icmp slt i32 %21, 0
  %24 = shl nsw i64 %22, 2
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #22
  %27 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !78
  %28 = add nsw i32 %21, 1
  %29 = sext i32 %28 to i64
  %30 = icmp slt i32 %21, -1
  %31 = shl nsw i64 %29, 3
  %32 = select i1 %30, i64 -1, i64 %31
  %33 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %32) #22
  %34 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !72
  %35 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !80
  tail call void @_Z10spec_qsortPvmmPFiPKvS1_E(ptr noundef %36, i64 noundef %38, i64 noundef 8, ptr noundef nonnull @_ZL23double_compare_functionPKvS0_)
  %39 = load i64, ptr %37, align 8, !tbaa !80
  %40 = sitofp i64 %39 to double
  %41 = load i32, ptr %20, align 4, !tbaa !71
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %40, %42
  %44 = load ptr, ptr %35, align 8, !tbaa !79
  %45 = load double, ptr %44, align 8, !tbaa !74
  %46 = load ptr, ptr %34, align 8, !tbaa !72
  store double %45, ptr %46, align 8, !tbaa !74
  %47 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  store double %45, ptr %47, align 8, !tbaa !81
  %48 = load i32, ptr %20, align 4, !tbaa !71
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %119

50:                                               ; preds = %19
  %51 = load ptr, ptr %27, align 8
  br label %52

52:                                               ; preds = %50, %96
  %53 = phi i64 [ 0, %50 ], [ %99, %96 ]
  %54 = phi double [ %43, %50 ], [ %110, %96 ]
  %55 = phi double [ %45, %50 ], [ %98, %96 ]
  %56 = phi i32 [ 0, %50 ], [ %97, %96 ]
  %57 = fptosi double %54 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %39, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %52
  %61 = getelementptr inbounds double, ptr %44, i64 %58
  %62 = load double, ptr %61, align 8, !tbaa !74
  %63 = fcmp oeq double %62, %55
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = sext i32 %57 to i64
  %66 = icmp sgt i64 %39, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %64, %72
  %68 = phi i64 [ %73, %72 ], [ %58, %64 ]
  %69 = getelementptr inbounds double, ptr %44, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !74
  %71 = fcmp oeq double %70, %55
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = add nsw i64 %68, 1
  %74 = icmp sgt i64 %39, %73
  br i1 %74, label %67, label %75, !llvm.loop !82

75:                                               ; preds = %72, %67
  %76 = phi i64 [ %68, %67 ], [ %73, %72 ]
  %77 = trunc i64 %76 to i32
  br label %78

78:                                               ; preds = %75, %64
  %79 = phi i32 [ %57, %64 ], [ %77, %75 ]
  %80 = phi i64 [ %65, %64 ], [ %76, %75 ]
  %81 = icmp eq i64 %39, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds double, ptr %44, i64 %80
  %84 = load double, ptr %83, align 8, !tbaa !74
  br label %85

85:                                               ; preds = %78, %82
  %86 = phi i32 [ %79, %82 ], [ %57, %78 ]
  %87 = phi double [ %84, %82 ], [ %62, %78 ]
  br i1 %81, label %115, label %96

88:                                               ; preds = %60, %88
  %89 = phi i64 [ %90, %88 ], [ %58, %60 ]
  %90 = add i64 %89, -1
  %91 = getelementptr inbounds double, ptr %44, i64 %90
  %92 = load double, ptr %91, align 8, !tbaa !74
  %93 = fcmp oeq double %92, %62
  br i1 %93, label %88, label %94, !llvm.loop !83

94:                                               ; preds = %88
  %95 = trunc i64 %89 to i32
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi i32 [ %86, %85 ], [ %95, %94 ]
  %98 = phi double [ %87, %85 ], [ %62, %94 ]
  %99 = add nuw nsw i64 %53, 1
  %100 = getelementptr inbounds double, ptr %46, i64 %99
  store double %98, ptr %100, align 8, !tbaa !74
  %101 = sub nsw i32 %97, %56
  %102 = getelementptr inbounds i32, ptr %51, i64 %53
  store i32 %101, ptr %102, align 4, !tbaa !84
  %103 = sitofp i32 %97 to double
  %104 = fadd double %43, %103
  %105 = trunc i64 %53 to i32
  %106 = add i32 %105, 2
  %107 = sitofp i32 %106 to double
  %108 = fmul double %43, %107
  %109 = fcmp ogt double %104, %108
  %110 = select i1 %109, double %104, double %108
  %111 = load i32, ptr %20, align 4, !tbaa !71
  %112 = add nsw i32 %111, -1
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %99, %113
  br i1 %114, label %52, label %115, !llvm.loop !85

115:                                              ; preds = %85, %96, %52
  %116 = phi i64 [ %53, %52 ], [ %99, %96 ], [ %53, %85 ]
  %117 = phi i32 [ %56, %52 ], [ %97, %96 ], [ %56, %85 ]
  %118 = trunc i64 %116 to i32
  br label %119

119:                                              ; preds = %115, %19
  %120 = phi i32 [ 0, %19 ], [ %118, %115 ]
  %121 = phi i32 [ 0, %19 ], [ %117, %115 ]
  %122 = trunc i64 %39 to i32
  %123 = sub i32 %122, %121
  %124 = load ptr, ptr %27, align 8, !tbaa !78
  %125 = zext nneg i32 %120 to i64
  %126 = getelementptr inbounds i32, ptr %124, i64 %125
  store i32 %123, ptr %126, align 4, !tbaa !84
  %127 = getelementptr double, ptr %44, i64 %39
  %128 = getelementptr double, ptr %127, i64 -1
  %129 = load double, ptr %128, align 8, !tbaa !74
  %130 = add nuw nsw i32 %120, 1
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds double, ptr %46, i64 %131
  store double %129, ptr %132, align 8, !tbaa !74
  %133 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  store double %129, ptr %133, align 8, !tbaa !86
  %134 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !68
  switch i32 %135, label %145 [
    i32 0, label %136
    i32 2, label %141
  ]

136:                                              ; preds = %119
  %137 = load double, ptr %128, align 8, !tbaa !74
  %138 = load double, ptr %44, align 8, !tbaa !74
  %139 = fsub double %137, %138
  %140 = fmul double %139, 0x3EB0C6F7A0B5ED8D
  br label %141

141:                                              ; preds = %119, %136
  %142 = phi double [ %140, %136 ], [ 1.000000e+00, %119 ]
  %143 = load double, ptr %132, align 8, !tbaa !74
  %144 = fadd double %143, %142
  store double %144, ptr %132, align 8, !tbaa !74
  store double %144, ptr %133, align 8, !tbaa !86
  br label %145

145:                                              ; preds = %141, %119
  store i32 %130, ptr %2, align 8, !tbaa !73
  ret void

146:                                              ; preds = %17, %8
  %147 = phi ptr [ %15, %17 ], [ %6, %8 ]
  %148 = phi { ptr, i32 } [ %18, %17 ], [ %9, %8 ]
  tail call void @__cxa_free_exception(ptr %147) #24
  resume { ptr, i32 } %148
}

declare void @_Z10spec_qsortPvmmPFiPKvS1_E(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL23double_compare_functionPKvS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !53 {
  %3 = load double, ptr %0, align 8, !tbaa !74
  %4 = load double, ptr %1, align 8, !tbaa !74
  %5 = fcmp oeq double %3, %4
  %6 = fcmp olt double %3, %4
  %7 = select i1 %6, i32 -1, i32 1
  %8 = select i1 %5, i32 0, i32 %7
  ret i32 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cVarHistogram9transformEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 55
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %5 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !68
  switch i32 %6, label %8 [
    i32 0, label %7
    i32 2, label %7
  ]

7:                                                ; preds = %1, %1
  tail call void @_ZN13cVarHistogram23createEquiProbableCellsEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %82

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !54
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !81
  %15 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load double, ptr %16, align 8, !tbaa !74
  %18 = fcmp ogt double %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !86
  %22 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !73
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %16, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !74
  %27 = fcmp olt double %21, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19, %12
  %29 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %29, ptr noundef nonnull %0, ptr noundef nonnull @.str.5)
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %29) #24
  resume { ptr, i32 } %32

33:                                               ; preds = %19
  %34 = fcmp olt double %14, %17
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 69
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %14)
  br label %39

39:                                               ; preds = %35, %33
  %40 = load double, ptr %20, align 8, !tbaa !86
  %41 = load ptr, ptr %15, align 8, !tbaa !72
  %42 = load i32, ptr %22, align 8, !tbaa !73
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %41, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !74
  %46 = fcmp ogt double %40, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load ptr, ptr %0, align 8, !tbaa !49
  %49 = getelementptr inbounds ptr, ptr %48, i64 69
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %40)
  br label %51

51:                                               ; preds = %39, %47, %8
  %52 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !73
  %54 = sext i32 %53 to i64
  %55 = icmp slt i32 %53, 0
  %56 = shl nsw i64 %54, 2
  %57 = select i1 %55, i64 -1, i64 %56
  %58 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %57) #22
  %59 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !78
  %60 = load i32, ptr %52, align 8, !tbaa !73
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = zext nneg i32 %60 to i64
  %64 = shl nuw nsw i64 %63, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %58, i8 0, i64 %64, i1 false), !tbaa !84
  br label %65

65:                                               ; preds = %62, %51
  %66 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !80
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 0, %69 ], [ %79, %71 ]
  %73 = load ptr, ptr %70, align 8, !tbaa !79
  %74 = getelementptr inbounds double, ptr %73, i64 %72
  %75 = load double, ptr %74, align 8, !tbaa !74
  %76 = load ptr, ptr %0, align 8, !tbaa !49
  %77 = getelementptr inbounds ptr, ptr %76, i64 56
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %75)
  %79 = add nuw nsw i64 %72, 1
  %80 = load i64, ptr %66, align 8, !tbaa !80
  %81 = icmp sgt i64 %80, %79
  br i1 %81, label %71, label %82, !llvm.loop !87

82:                                               ; preds = %71, %65, %7
  %83 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 8
  store i8 1, ptr %83, align 4, !tbaa !88
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN13cVarHistogram18collectTransformedEd(ptr nocapture noundef nonnull align 8 dereferenceable(200) %0, double noundef %1) unnamed_addr #11 align 2 !prof !53 {
  %3 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !81
  %5 = fcmp ogt double %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !89
  %9 = add i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !89
  br label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !86
  %13 = fcmp ugt double %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !90
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !90
  br label %48

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !73
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = lshr i32 %20, 1
  %24 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %23, %22 ], [ %37, %26 ]
  %28 = phi i32 [ %20, %22 ], [ %35, %26 ]
  %29 = phi i32 [ 0, %22 ], [ %34, %26 ]
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds double, ptr %25, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !74
  %33 = fcmp ogt double %32, %1
  %34 = select i1 %33, i32 %29, i32 %27
  %35 = select i1 %33, i32 %27, i32 %28
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %26, label %39, !llvm.loop !91

39:                                               ; preds = %26
  %40 = zext nneg i32 %34 to i64
  br label %41

41:                                               ; preds = %39, %18
  %42 = phi i64 [ 0, %18 ], [ %40, %39 ]
  %43 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = getelementptr inbounds i32, ptr %44, i64 %42
  %46 = load i32, ptr %45, align 4, !tbaa !84
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !84
  br label %48

48:                                               ; preds = %14, %41, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cVarHistogram11clearResultEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #3 align 2 !prof !53 {
  tail call void @_ZN14cHistogramBase11clearResultEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %2 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #23
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !72
  ret void
}

declare void @_ZN14cHistogramBase11clearResultEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK13cVarHistogram12getBasepointEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !74
  ret double %11

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %1)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #24
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK13cVarHistogram12getCellValueEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !84
  %12 = uitofp i32 %11 to double
  ret double %12

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #24
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK13cVarHistogram6randomEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(200) %0) unnamed_addr #3 align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !80
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %160, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !92
  %8 = icmp slt i64 %3, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = getelementptr inbounds %class.cStatistic, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !93
  %14 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !94
  %15 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %14)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !94
  %19 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %18)
  %20 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !94
  %21 = getelementptr inbounds %class.cComponent, ptr %19, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !95
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %13, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = getelementptr inbounds %class.cComponent, ptr %19, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = sext i32 %13 to i64
  %29 = getelementptr inbounds i32, ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !84
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i32 [ %30, %25 ], [ %13, %17 ]
  %33 = load ptr, ptr %20, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 41
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(288) %20, i32 noundef %32)
  br label %43

37:                                               ; preds = %9
  %38 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !94
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = getelementptr inbounds ptr, ptr %39, i64 41
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(288) %38, i32 noundef %13)
  br label %43

43:                                               ; preds = %31, %37
  %44 = phi ptr [ %36, %31 ], [ %42, %37 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 24
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef i64 %47(ptr noundef nonnull align 8 dereferenceable(16) %44, i64 noundef %3)
  %49 = getelementptr inbounds double, ptr %11, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !74
  br label %160

51:                                               ; preds = %5
  %52 = getelementptr inbounds %class.cStatistic, ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 4
  %55 = load i64, ptr %54, align 8, !tbaa !89
  %56 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !90
  %58 = add i64 %55, %57
  %59 = sub i64 %3, %58
  %60 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !94
  %61 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %60)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %51
  %64 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !94
  %65 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %64)
  %66 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !94
  %67 = getelementptr inbounds %class.cComponent, ptr %65, i64 0, i32 2
  %68 = load i16, ptr %67, align 8, !tbaa !95
  %69 = sext i16 %68 to i32
  %70 = icmp slt i32 %53, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = getelementptr inbounds %class.cComponent, ptr %65, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !99
  %74 = sext i32 %53 to i64
  %75 = getelementptr inbounds i32, ptr %73, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !84
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi i32 [ %76, %71 ], [ %53, %63 ]
  %79 = load ptr, ptr %66, align 8, !tbaa !49
  %80 = getelementptr inbounds ptr, ptr %79, i64 41
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(288) %66, i32 noundef %78)
  br label %89

83:                                               ; preds = %51
  %84 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !94
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = getelementptr inbounds ptr, ptr %85, i64 41
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(288) %84, i32 noundef %53)
  br label %89

89:                                               ; preds = %77, %83
  %90 = phi ptr [ %82, %77 ], [ %88, %83 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !49
  %92 = getelementptr inbounds ptr, ptr %91, i64 24
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef i64 %93(ptr noundef nonnull align 8 dereferenceable(16) %90, i64 noundef %59)
  %95 = sitofp i64 %94 to double
  %96 = load i64, ptr %54, align 8, !tbaa !89
  %97 = uitofp i64 %96 to double
  %98 = fsub double %95, %97
  %99 = fcmp ult double %98, 0.000000e+00
  br i1 %99, label %114, label %100

100:                                              ; preds = %89
  %101 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !78
  br label %103

103:                                              ; preds = %100, %103
  %104 = phi i64 [ 0, %100 ], [ %110, %103 ]
  %105 = phi double [ %98, %100 ], [ %109, %103 ]
  %106 = getelementptr inbounds i32, ptr %102, i64 %104
  %107 = load i32, ptr %106, align 4, !tbaa !84
  %108 = uitofp i32 %107 to double
  %109 = fsub double %105, %108
  %110 = add nuw i64 %104, 1
  %111 = fcmp ult double %109, 0.000000e+00
  br i1 %111, label %112, label %103, !llvm.loop !100

112:                                              ; preds = %103
  %113 = and i64 %110, 4294967295
  br label %114

114:                                              ; preds = %112, %89
  %115 = phi i64 [ 0, %89 ], [ %113, %112 ]
  %116 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !72
  %118 = getelementptr double, ptr %117, i64 %115
  %119 = getelementptr double, ptr %118, i64 -1
  %120 = load double, ptr %119, align 8, !tbaa !74
  %121 = load double, ptr %118, align 8, !tbaa !74
  %122 = load i32, ptr %52, align 8, !tbaa !93
  %123 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !94
  %124 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %123)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %146, label %126

126:                                              ; preds = %114
  %127 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !94
  %128 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %127)
  %129 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !94
  %130 = getelementptr inbounds %class.cComponent, ptr %128, i64 0, i32 2
  %131 = load i16, ptr %130, align 8, !tbaa !95
  %132 = sext i16 %131 to i32
  %133 = icmp slt i32 %122, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = getelementptr inbounds %class.cComponent, ptr %128, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !99
  %137 = sext i32 %122 to i64
  %138 = getelementptr inbounds i32, ptr %136, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !84
  br label %140

140:                                              ; preds = %134, %126
  %141 = phi i32 [ %139, %134 ], [ %122, %126 ]
  %142 = load ptr, ptr %129, align 8, !tbaa !49
  %143 = getelementptr inbounds ptr, ptr %142, i64 41
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(288) %129, i32 noundef %141)
  br label %152

146:                                              ; preds = %114
  %147 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !94
  %148 = load ptr, ptr %147, align 8, !tbaa !49
  %149 = getelementptr inbounds ptr, ptr %148, i64 41
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(288) %147, i32 noundef %122)
  br label %152

152:                                              ; preds = %140, %146
  %153 = phi ptr [ %145, %140 ], [ %151, %146 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !49
  %155 = getelementptr inbounds ptr, ptr %154, i64 25
  %156 = load ptr, ptr %155, align 8
  %157 = tail call noundef double %156(ptr noundef nonnull align 8 dereferenceable(16) %153)
  %158 = fsub double %121, %120
  %159 = tail call double @llvm.fmuladd.f64(double %157, double %158, double %120)
  br label %160

160:                                              ; preds = %1, %152, %43
  %161 = phi double [ %50, %43 ], [ %159, %152 ], [ 0.000000e+00, %1 ]
  ret double %161
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK13cVarHistogram6getPDFEd(ptr noundef nonnull align 8 dereferenceable(200) %0, double noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !80
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %66, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 57
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str.8)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #24
  resume { ptr, i32 } %15

16:                                               ; preds = %6
  %17 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !81
  %19 = fcmp ule double %18, %1
  %20 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 2
  %21 = load double, ptr %20, align 8
  %22 = fcmp ugt double %21, %1
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %24, label %66

24:                                               ; preds = %16
  %25 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !73
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = lshr i32 %26, 1
  %30 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %29, %28 ], [ %43, %32 ]
  %34 = phi i32 [ %26, %28 ], [ %41, %32 ]
  %35 = phi i32 [ 0, %28 ], [ %40, %32 ]
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds double, ptr %31, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !74
  %39 = fcmp ogt double %38, %1
  %40 = select i1 %39, i32 %35, i32 %33
  %41 = select i1 %39, i32 %33, i32 %34
  %42 = add nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %32, label %45, !llvm.loop !101

45:                                               ; preds = %32, %24
  %46 = phi i32 [ 0, %24 ], [ %40, %32 ]
  %47 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !84
  %52 = uitofp i32 %51 to double
  %53 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = sext i32 %46 to i64
  %56 = getelementptr double, ptr %54, i64 %55
  %57 = getelementptr double, ptr %56, i64 1
  %58 = load double, ptr %57, align 8, !tbaa !74
  %59 = getelementptr inbounds double, ptr %54, i64 %49
  %60 = load double, ptr %59, align 8, !tbaa !74
  %61 = fsub double %58, %60
  %62 = fdiv double %52, %61
  %63 = load i64, ptr %3, align 8, !tbaa !80
  %64 = sitofp i64 %63 to double
  %65 = fdiv double %62, %64
  br label %66

66:                                               ; preds = %16, %2, %45
  %67 = phi double [ %65, %45 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %16 ]
  ret double %67
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef double @_ZNK13cVarHistogram6getCDFEd(ptr noundef nonnull align 8 dereferenceable(200) %0, double %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #24
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK13cVarHistogram10saveToFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !53 {
  tail call void @_ZNK14cHistogramBase10saveToFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1)
  %3 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %4)
  %6 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %7)
  %9 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %12)
  %14 = load ptr, ptr %9, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  %16 = load i32, ptr %6, align 4
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %2, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %2 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !72
  %22 = getelementptr inbounds double, ptr %21, i64 %20
  %23 = load double, ptr %22, align 8, !tbaa !74
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, double noundef %23)
  %25 = add nuw nsw i64 %20, 1
  %26 = load i32, ptr %6, align 4, !tbaa !71
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %20, %27
  br i1 %28, label %19, label %29, !llvm.loop !102

29:                                               ; preds = %19, %2
  ret void
}

declare void @_ZNK14cHistogramBase10saveToFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cVarHistogram12loadFromFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !53 {
  %3 = alloca i32, align 4
  tail call void @_ZN14cHistogramBase12loadFromFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1)
  %4 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %5)
  %6 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4, !tbaa !71
  %11 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !73
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = sext i32 %10 to i64
  %16 = icmp slt i32 %10, 0
  %17 = shl nsw i64 %15, 2
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #22
  %20 = sext i32 %12 to i64
  %21 = shl nsw i64 %20, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %19, ptr nonnull align 4 %7, i64 %21, i1 false)
  tail call void @_ZdaPv(ptr noundef %7) #23
  store ptr %19, ptr %6, align 8, !tbaa !78
  br label %22

22:                                               ; preds = %14, %9, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %3)
  %23 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @_ZdaPv(ptr noundef %24) #23
  br label %27

27:                                               ; preds = %26, %22
  store ptr null, ptr %23, align 8, !tbaa !72
  %28 = load i32, ptr %3, align 4, !tbaa !84
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4, !tbaa !71
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = icmp slt i32 %31, -1
  %35 = shl nsw i64 %33, 3
  %36 = select i1 %34, i64 -1, i64 %35
  %37 = call noalias noundef nonnull ptr @_Znam(i64 noundef %36) #22
  store ptr %37, ptr %23, align 8, !tbaa !72
  %38 = load i32, ptr %5, align 4, !tbaa !71
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %30, %40
  %41 = phi i64 [ %44, %40 ], [ 0, %30 ]
  %42 = load ptr, ptr %23, align 8, !tbaa !72
  %43 = getelementptr inbounds double, ptr %42, i64 %41
  call void (ptr, ptr, ptr, ...) @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %43)
  %44 = add nuw nsw i64 %41, 1
  %45 = load i32, ptr %5, align 4, !tbaa !71
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %40, label %48, !llvm.loop !103

48:                                               ; preds = %40, %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

declare void @_ZN14cHistogramBase12loadFromFileEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #0

declare void @_ZN10cStatistic10freadvarsfEP8_IO_FILEPKcz(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, ptr noundef, ...) local_unnamed_addr #0

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #14 comdat align 2 !prof !104 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.21, ptr %3, !prof !106
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 comdat align 2 !prof !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !108
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cStdDev4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare void @_ZNK15cDensityEstBase12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cVarHistogram3dupEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #22
  invoke void @_ZN13cVarHistogramC2ERKS_(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #23
  resume { ptr, i32 } %5
}

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #14 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #14 comdat align 2 !prof !111 {
  ret i1 true
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !112
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  ret i1 false
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cStatistic21getAttributesToRecordER14opp_string_map(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !53 {
  ret void
}

declare void @_ZN15cDensityEstBase7collectEd(ptr noundef nonnull align 8 dereferenceable(168), double noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN15cDensityEstBase7collectE7SimTime(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !53 {
  %3 = load i64, ptr %1, align 8, !tbaa !113
  %4 = sitofp i64 %3 to double
  %5 = load double, ptr @_ZN7SimTime9invfscaleE, align 8, !tbaa !74
  %6 = fmul double %5, %4
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 25
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %6)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cStdDev10isWeightedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  ret i1 false
}

declare void @_ZN10cStatistic8collect2Edd(ptr noundef nonnull align 8 dereferenceable(60), double noundef, double noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase5mergeEPK10cStatistic(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK7cStdDev8getCountEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !80
  ret i64 %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev6getSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 4
  %3 = load double, ptr %2, align 8, !tbaa !115
  ret double %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev9getSqrSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !116
  ret double %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev6getMinEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !117
  ret double %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev6getMaxEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 3
  %3 = load double, ptr %2, align 8, !tbaa !118
  ret double %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev7getMeanEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !80
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %class.cStdDev, ptr %0, i64 0, i32 4
  %6 = load double, ptr %5, align 8
  %7 = sitofp i64 %3 to double
  %8 = fdiv double %6, %7
  %9 = select i1 %4, double 0.000000e+00, double %8
  ret double %9
}

declare noundef double @_ZNK7cStdDev9getStddevEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare noundef double @_ZNK7cStdDev11getVarianceEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev10getWeightsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %6 = sitofp i64 %5 to double
  ret double %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev14getWeightedSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef double %4(ptr noundef nonnull align 8 dereferenceable(104) %0)
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev16getSqrSumWeightsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 31
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %6 = sitofp i64 %5 to double
  ret double %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK7cStdDev17getWeightedSqrSumEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 33
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef double %4(ptr noundef nonnull align 8 dereferenceable(104) %0)
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cStatistic6recordEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds ptr, ptr %2, i64 48
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cStatistic14recordWithUnitEPKc(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 48
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef null, ptr noundef %1)
  ret void
}

declare void @_ZN10cStatistic8recordAsEPKcS1_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN14cHistogramBase17doMergeCellValuesEPK15cDensityEstBase(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase8setRangeEdd(ptr noundef nonnull align 8 dereferenceable(168), double noundef, double noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase12setRangeAutoEid(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, double noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase17setRangeAutoLowerEdid(ptr noundef nonnull align 8 dereferenceable(168), double noundef, i32 noundef, double noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase17setRangeAutoUpperEdid(ptr noundef nonnull align 8 dereferenceable(168), double noundef, i32 noundef, double noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase15setNumFirstValsEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #0

declare void @_ZN15cDensityEstBase10setupRangeEv(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK15cDensityEstBase13isTransformedEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !88, !range !119, !noundef !120
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare noundef i32 @_ZNK14cHistogramBase11getNumCellsEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #0

declare noundef double @_ZNK15cDensityEstBase10getCellPDFEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK15cDensityEstBase16getUnderflowCellEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !89
  ret i64 %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK15cDensityEstBase15getOverflowCellEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !90
  ret i64 %3
}

declare void @_ZNK15cDensityEstBase11getCellInfoEi(ptr dead_on_unwind writable sret(%"struct.cDensityEstBase::Cell") align 8, ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #0

declare void @_ZN14cHistogramBase11setNumCellsEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) unnamed_addr #0

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_46v() #3 personality ptr @__gxx_personality_v0 !prof !53 {
  %1 = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #22
  invoke void @_ZN14cHistogramBaseC2EPKci(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef null, i32 noundef -1)
          to label %2 unwind label %7

2:                                                ; preds = %0
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %1, align 8, !tbaa !49
  %3 = getelementptr inbounds %class.cDensityEstBase, ptr %1, i64 0, i32 7
  store i32 5, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 2
  store i32 11, ptr %5, align 4, !tbaa !71
  %6 = getelementptr inbounds %class.cVarHistogram, ptr %1, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !72
  ret ptr %1

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %1) #23
  resume { ptr, i32 } %8
}

declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !48

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !124
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !48

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !124
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #23
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !125

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !124
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #23
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #23
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !126
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !53 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !124
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !129, !alias.scope !130
  %10 = load ptr, ptr %7, align 8, !tbaa !121
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !124
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !121, !alias.scope !130
  %19 = load i64, ptr %11, align 8, !tbaa !133
  store i64 %19, ptr %9, align 8, !tbaa !133, !alias.scope !130
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !124
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !124, !alias.scope !130
  store ptr %11, ptr %7, align 8, !tbaa !121
  store i64 0, ptr %21, align 8, !tbaa !124
  store i8 0, ptr %11, align 8, !tbaa !133
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !124, !noalias !134
  %27 = load i64, ptr %23, align 8, !tbaa !124, !noalias !134
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !121, !noalias !134
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !129, !alias.scope !134
  %37 = load ptr, ptr %34, align 8, !tbaa !121
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !124
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !121, !alias.scope !134
  %46 = load i64, ptr %38, align 8, !tbaa !133
  store i64 %46, ptr %36, align 8, !tbaa !133, !alias.scope !134
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !124
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !124, !alias.scope !134
  store ptr %38, ptr %34, align 8, !tbaa !121
  store i64 0, ptr %48, align 8, !tbaa !124
  store i8 0, ptr %38, align 8, !tbaa !133
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %52 = load ptr, ptr %3, align 8, !tbaa !121
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !124
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #23
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !121
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !124
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #23
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !121
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !124
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #23
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !121
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !124
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #23
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !121
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !124
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #23
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !137, !range !119, !noundef !120
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !138
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !129
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #25
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 %9, ptr %4, align 8, !tbaa !139
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !140

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !121
  %13 = load i64, ptr %4, align 8, !tbaa !139
  store i64 %13, ptr %5, align 8, !tbaa !133
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !121
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !141

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !133
  store i8 %17, ptr %15, align 1, !tbaa !133
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !142
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !139
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !124
  %22 = load ptr, ptr %0, align 8, !tbaa !121
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #15 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN13cVarHistogramC2ERKS_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN14cHistogramBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
  store ptr getelementptr inbounds ({ [72 x ptr] }, ptr @_ZTV13cVarHistogram, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6)
          to label %11 unwind label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.cVarHistogram, ptr %0, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !72
  %13 = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN13cVarHistogramaSERKS_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1)
          to label %14 unwind label %15

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %11, %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN14cHistogramBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN14cHistogramBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN15cDensityEstBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  store ptr getelementptr inbounds ({ [71 x ptr] }, ptr @_ZTV14cHistogramBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6)
          to label %11 unwind label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.cHistogramBase, ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !78
  %13 = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN14cHistogramBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %14 unwind label %15

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %11, %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN15cDensityEstBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN15cDensityEstBaseC2ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN7cStdDevC2EPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null)
  store ptr getelementptr inbounds ({ [70 x ptr] }, ptr @_ZTV15cDensityEstBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %7 unwind label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6)
          to label %11 unwind label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.cDensityEstBase, ptr %0, i64 0, i32 9
  store ptr null, ptr %12, align 8, !tbaa !79
  %13 = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN15cDensityEstBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %14 unwind label %15

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %11, %7, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10cStatisticD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #24
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind
declare void @_ZN15cDensityEstBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

declare void @_ZN7cStdDevC2EPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN15cDensityEstBaseaSERKS_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN10cStatisticD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cvarhist.cc() #18 section ".text.startup" !prof !46 !PGOFuncName !143 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #24
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_46Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr nonnull @__dso_handle) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!39 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!40 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!41 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!42 = !{ptr @_GLOBAL__sub_I_cvarhist.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!43 = !{ptr @_GLOBAL__sub_I_cvarhist.cc, ptr @__cxa_atexit, i64 2}
!44 = !{ptr @_GLOBAL__sub_I_cvarhist.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 1}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!"simulator/cvarhist.cc;_ZN12_GLOBAL__N_119__onstartup_func_46Ev"}
!48 = !{!"branch_weights", i32 1, i32 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!55, !64, i64 152}
!55 = !{!"_ZTS15cDensityEstBase", !56, i64 0, !66, i64 104, !66, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !66, i64 144, !64, i64 152, !67, i64 156, !61, i64 160}
!56 = !{!"_ZTS7cStdDev", !57, i64 0, !65, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96}
!57 = !{!"_ZTS10cStatistic", !58, i64 0, !61, i64 40, !61, i64 48, !64, i64 56}
!58 = !{!"_ZTS12cOwnedObject", !59, i64 0, !61, i64 24, !64, i64 32}
!59 = !{!"_ZTS12cNamedObject", !60, i64 0, !61, i64 8, !63, i64 16, !63, i64 18}
!60 = !{!"_ZTS7cObject"}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !51, i64 0}
!63 = !{!"short", !62, i64 0}
!64 = !{!"int", !62, i64 0}
!65 = !{!"long", !62, i64 0}
!66 = !{!"double", !62, i64 0}
!67 = !{!"bool", !62, i64 0}
!68 = !{!69, !64, i64 184}
!69 = !{!"_ZTS13cVarHistogram", !70, i64 0, !64, i64 184, !64, i64 188, !61, i64 192}
!70 = !{!"_ZTS14cHistogramBase", !55, i64 0, !64, i64 168, !61, i64 176}
!71 = !{!69, !64, i64 188}
!72 = !{!69, !61, i64 192}
!73 = !{!70, !64, i64 168}
!74 = !{!66, !66, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!70, !61, i64 176}
!79 = !{!55, !61, i64 160}
!80 = !{!56, !65, i64 64}
!81 = !{!55, !66, i64 104}
!82 = distinct !{!82, !76, !77}
!83 = distinct !{!83, !76, !77}
!84 = !{!64, !64, i64 0}
!85 = distinct !{!85, !76, !77}
!86 = !{!55, !66, i64 112}
!87 = distinct !{!87, !76, !77}
!88 = !{!55, !67, i64 156}
!89 = !{!55, !65, i64 128}
!90 = !{!55, !65, i64 136}
!91 = distinct !{!91, !76, !77}
!92 = !{!55, !65, i64 120}
!93 = !{!57, !64, i64 56}
!94 = !{!61, !61, i64 0}
!95 = !{!96, !63, i64 64}
!96 = !{!"_ZTS10cComponent", !97, i64 0, !61, i64 56, !63, i64 64, !61, i64 72, !63, i64 80, !63, i64 82, !61, i64 88, !61, i64 96}
!97 = !{!"_ZTS12cDefaultList", !98, i64 0, !61, i64 40, !64, i64 48, !64, i64 52}
!98 = !{!"_ZTS23cNoncopyableOwnedObject", !58, i64 0}
!99 = !{!96, !61, i64 72}
!100 = distinct !{!100, !76, !77}
!101 = distinct !{!101, !76, !77}
!102 = distinct !{!102, !76, !77}
!103 = distinct !{!103, !76, !77}
!104 = !{!"function_entry_count", i64 192538233}
!105 = !{!59, !61, i64 8}
!106 = !{!"branch_weights", i32 0, i32 192538233}
!107 = !{!"function_entry_count", i64 235321}
!108 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!109 = !{!"function_entry_count", i64 542987320}
!110 = !{!58, !61, i64 24}
!111 = !{!"function_entry_count", i64 147484992}
!112 = !{!59, !63, i64 16}
!113 = !{!114, !65, i64 0}
!114 = !{!"_ZTS7SimTime", !65, i64 0}
!115 = !{!56, !66, i64 88}
!116 = !{!56, !66, i64 96}
!117 = !{!56, !66, i64 72}
!118 = !{!56, !66, i64 80}
!119 = !{i8 0, i8 2}
!120 = !{}
!121 = !{!122, !61, i64 0}
!122 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !123, i64 0, !65, i64 8, !62, i64 16}
!123 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!124 = !{!122, !65, i64 8}
!125 = !{!"branch_weights", i32 0, i32 1}
!126 = !{!127, !64, i64 8}
!127 = !{!"_ZTS10cException", !128, i64 0, !64, i64 8, !122, i64 16, !67, i64 48, !122, i64 56, !122, i64 88, !64, i64 120}
!128 = !{!"_ZTSSt9exception"}
!129 = !{!123, !61, i64 0}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!132 = distinct !{!132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!133 = !{!62, !62, i64 0}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!136 = distinct !{!136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!137 = !{!127, !67, i64 48}
!138 = !{!127, !64, i64 120}
!139 = !{!65, !65, i64 0}
!140 = !{!"branch_weights", i32 1257662, i32 631781}
!141 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!142 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!143 = !{!"simulator/cvarhist.cc;_GLOBAL__sub_I_cvarhist.cc"}
