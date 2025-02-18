; ModuleID = 'XalanDiagnosticMemoryManager.cpp'
source_filename = "XalanDiagnosticMemoryManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.xalanc_1_10::XalanDiagnosticMemoryManager" = type { %"class.xercesc_2_7::MemoryManager", ptr, i8, i8, i64, i64, i64, %"class.xalanc_1_10::XalanMap", ptr }
%"class.xercesc_2_7::MemoryManager" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair" = type { ptr, %"struct.xalanc_1_10::XalanDiagnosticMemoryManager::Data" }
%"struct.xalanc_1_10::XalanDiagnosticMemoryManager::Data" = type { i64, i64 }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionD2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS3_ = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_ = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE14compactBucketsEv = comdat any

$_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE = comdat any

$_ZTIN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE = comdat any

$_ZTSN11xercesc_2_713MemoryManagerE = comdat any

$_ZTIN11xercesc_2_713MemoryManagerE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1028XalanDiagnosticMemoryManagerE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanDiagnosticMemoryManagerE, ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD2Ev, ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD0Ev, ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager8allocateEm, ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager10deallocateEPv] }, align 8
@.str = private unnamed_addr constant [24 x i8] c"Detected memory leaks. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" blocks are still allocated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Attempt to allocate \00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" bytes from locked instance \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE = linkonce_odr dso_local constant [61 x i8] c"N11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE\00", comdat, align 1
@_ZTIN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE }, comdat, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Attempt to deallocate address \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" with locked instance \00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Attempt to free unallocated address \00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" with instance \00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Total number of allocations: \00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Total current allocations: \00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Total bytes currently allocated: \00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Peak bytes allocated: \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Block at address \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c" with sequence \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c" bytes long.\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c")  \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManagerE = dso_local constant [46 x i8] c"N11xalanc_1_1028XalanDiagnosticMemoryManagerE\00", align 1
@_ZTSN11xercesc_2_713MemoryManagerE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713MemoryManagerE\00", comdat, align 1
@_ZTIN11xercesc_2_713MemoryManagerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713MemoryManagerE }, comdat, align 8
@_ZTIN11xalanc_1_1028XalanDiagnosticMemoryManagerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManagerE, ptr @_ZTIN11xercesc_2_713MemoryManagerE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanDiagnosticMemoryManager.cpp, ptr null }]

@_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerC1ERN11xercesc_2_713MemoryManagerEbPSo = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr), ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerC2ERN11xercesc_2_713MemoryManagerEbPSo
@_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerC2ERN11xercesc_2_713MemoryManagerEbPSo(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanDiagnosticMemoryManagerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 2
  store i8 %5, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 3
  store i8 0, ptr %8, align 1, !tbaa !56
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %1, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 3
  store float 7.500000e-01, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 4
  store i64 29, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 5
  store i64 0, ptr %13, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6
  store ptr %1, ptr %14, align 8, !tbaa !61
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store ptr %1, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 7, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %1, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 8, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  store i64 50, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 8
  store ptr %3, ptr %21, align 8, !tbaa !64
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanDiagnosticMemoryManagerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str, i64 noundef 23)
          to label %11 unwind label %19

11:                                               ; preds = %9
  %12 = load i64, ptr %2, align 8, !tbaa !60
  %13 = and i64 %12, 4294967295
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %13)
          to label %15 unwind label %19

15:                                               ; preds = %11
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.1, i64 noundef 29)
          to label %17 unwind label %19

17:                                               ; preds = %15, %5, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %18) #17
  ret void

19:                                               ; preds = %15, %11, %9
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  invoke void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !65
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66, !noalias !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !67
  %13 = load ptr, ptr %12, align 8, !tbaa !39, !noalias !67
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !67
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !66, !noalias !67
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !70, !noalias !67
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !73, !noalias !67
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !66, !noalias !67
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70, !noalias !74
  %27 = load ptr, ptr %8, align 8, !tbaa !66, !noalias !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !75
  %31 = load ptr, ptr %30, align 8, !tbaa !39, !noalias !75
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !75
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !66, !noalias !75
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !70, !noalias !75
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !73, !noalias !75
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !66, !noalias !75
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !78
  %43 = load ptr, ptr %22, align 8, !tbaa !57
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !79

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #17
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #17
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #17
  ret void

51:                                               ; preds = %29, %41
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

53:                                               ; preds = %1, %11
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager8allocateEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !56, !range !82, !noundef !74
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.2, i64 noundef 20)
  %13 = and i64 %1, 4294967295
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %13)
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.3, i64 noundef 28)
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %0)
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.4, i64 noundef 2)
  br label %18

18:                                               ; preds = %11, %7
  %19 = tail call ptr @__cxa_allocate_exception(i64 1) #17
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE, ptr nonnull @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionD2Ev) #20
  unreachable

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %1)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !84
  %29 = add i64 %28, %1
  store i64 %29, ptr %27, align 8, !tbaa !84
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 5
  %31 = load i64, ptr %30, align 8, !tbaa !85
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i64 %29, ptr %30, align 8, !tbaa !85
  br label %34

34:                                               ; preds = %33, %20
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !86
  %38 = add i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !86
  store ptr %26, ptr %3, align 8, !tbaa !87
  %39 = getelementptr inbounds %"struct.std::pair", ptr %3, i64 0, i32 1
  store i64 %1, ptr %39, align 8, !tbaa.struct !90
  %40 = getelementptr inbounds %"struct.std::pair", ptr %3, i64 0, i32 1, i32 1
  store i64 %37, ptr %40, align 8, !tbaa.struct !92
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS3_(ptr noundef nonnull align 8 dereferenceable(136) %35, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %39)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !38 {
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  store ptr %1, ptr %3, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !56, !range !82, !noundef !74
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.5, i64 noundef 30)
  %15 = load ptr, ptr %3, align 8, !tbaa !42
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %15)
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.6, i64 noundef 22)
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %0)
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.4, i64 noundef 2)
  br label %20

20:                                               ; preds = %13, %9
  %21 = tail call ptr @__cxa_allocate_exception(i64 1) #17
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionE, ptr nonnull @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager13LockExceptionD2Ev) #20
  unreachable

22:                                               ; preds = %2
  %23 = icmp eq ptr %1, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !66, !noalias !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !61, !noalias !93
  %32 = load ptr, ptr %31, align 8, !tbaa !39, !noalias !93
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !noalias !93
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32), !noalias !93
  store ptr %35, ptr %26, align 8, !tbaa !66, !noalias !93
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !70, !noalias !93
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %35, i64 0, i32 1
  store ptr %35, ptr %37, align 8, !tbaa !73, !noalias !93
  br label %38

38:                                               ; preds = %24, %29
  %39 = load ptr, ptr %26, align 8, !tbaa !66, !noalias !93
  %40 = load ptr, ptr %4, align 8, !tbaa !98
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = load ptr, ptr %3, align 8, !tbaa !42
  %46 = load ptr, ptr %44, align 8, !tbaa !39
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %45)
  %49 = load ptr, ptr %4, align 8, !tbaa !98
  %50 = load ptr, ptr %49, align 8, !tbaa !78
  %51 = getelementptr inbounds %"struct.std::pair", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !100
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 6
  %54 = load i64, ptr %53, align 8, !tbaa !84
  %55 = sub i64 %54, %52
  store i64 %55, ptr %53, align 8, !tbaa !84
  store ptr %49, ptr %5, align 8, !tbaa !98
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull %5)
  br label %67

56:                                               ; preds = %38
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull @.str.7, i64 noundef 36)
  %62 = load ptr, ptr %3, align 8, !tbaa !42
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %62)
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull @.str.8, i64 noundef 15)
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull %0)
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull @.str.4, i64 noundef 2)
  br label %67

67:                                               ; preds = %56, %60, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %68

68:                                               ; preds = %22, %67
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !60
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !65
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds i8, ptr %2, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !101
  %16 = sext i8 %15 to i64
  %17 = xor i64 %13, %16
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %10, !llvm.loop !102

20:                                               ; preds = %10
  %21 = urem i64 %17, %9
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %23, i64 %21, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %23, i64 %21, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !106
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %25, i64 %27
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %2, align 8
  br label %32

32:                                               ; preds = %30, %44
  %33 = phi i1 [ %29, %30 ], [ %46, %44 ]
  %34 = phi ptr [ %25, %30 ], [ %45, %44 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !107, !range !82, !noundef !74
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load ptr, ptr %35, align 8, !tbaa !78
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = icmp eq ptr %31, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr %35, ptr %0, align 8, !tbaa !98
  br i1 %33, label %47, label %62

44:                                               ; preds = %39, %32
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %34, i64 1
  %46 = icmp eq ptr %45, %28
  br i1 %46, label %47, label %32, !llvm.loop !108

47:                                               ; preds = %44, %20, %43, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !66, !noalias !112
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !61, !noalias !112
  %54 = load ptr, ptr %53, align 8, !tbaa !39, !noalias !112
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8, !noalias !112
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 32), !noalias !112
  store ptr %57, ptr %48, align 8, !tbaa !66, !noalias !112
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %57, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !70, !noalias !112
  %59 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %57, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !73, !noalias !112
  br label %60

60:                                               ; preds = %47, %51
  %61 = load ptr, ptr %48, align 8, !tbaa !66, !noalias !112
  store ptr %61, ptr %0, align 8, !tbaa !98, !alias.scope !109
  br label %62

62:                                               ; preds = %43, %60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5eraseENS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66, !noalias !115
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !115
  %10 = load ptr, ptr %9, align 8, !tbaa !39, !noalias !115
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8, !noalias !115
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 32), !noalias !115
  store ptr %13, ptr %4, align 8, !tbaa !66, !noalias !115
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %13, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !70, !noalias !115
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %13, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !73, !noalias !115
  br label %16

16:                                               ; preds = %2, %7
  %17 = load ptr, ptr %4, align 8, !tbaa !66, !noalias !115
  %18 = load ptr, ptr %1, align 8, !tbaa !98
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  store ptr %18, ptr %3, align 8, !tbaa !98
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !120
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8, !tbaa !120
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !63
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  store i64 0, ptr %21, align 8, !tbaa !120
  br label %28

28:                                               ; preds = %27, %20, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanDiagnosticMemoryManager14dumpStatisticsEPSom(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 align 2 !prof !38 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr %8, ptr %1
  %10 = icmp eq ptr %9, null
  br i1 %10, label %164, label %11

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.9, i64 noundef 29)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !86
  %15 = and i64 %14, 4294967295
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %15)
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.4, i64 noundef 2)
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.10, i64 noundef 27)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !60
  %21 = and i64 %20, 4294967295
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %21)
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.4, i64 noundef 2)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.11, i64 noundef 33)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 6
  %26 = load i64, ptr %25, align 8, !tbaa !84
  %27 = and i64 %26, 4294967295
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %27)
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.4, i64 noundef 2)
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.12, i64 noundef 22)
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 5
  %32 = load i64, ptr %31, align 8, !tbaa !85
  %33 = and i64 %32, 4294967295
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef %33)
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull @.str.4, i64 noundef 2)
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !66, !noalias !121
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %11
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !61, !noalias !121
  %42 = load ptr, ptr %41, align 8, !tbaa !39, !noalias !121
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8, !noalias !121
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef 32), !noalias !121
  store ptr %45, ptr %36, align 8, !tbaa !66, !noalias !121
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %45, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !70, !noalias !121
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %45, i64 0, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !73, !noalias !121
  br label %48

48:                                               ; preds = %11, %39
  %49 = load ptr, ptr %36, align 8, !tbaa !66, !noalias !121
  %50 = getelementptr %"class.std::ios_base", ptr %9, i64 0, i32 3
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanDiagnosticMemoryManager", ptr %0, i64 0, i32 7, i32 6
  %52 = icmp eq i64 %2, 0
  %53 = getelementptr %"class.std::ios_base", ptr %9, i64 0, i32 2
  %54 = getelementptr %"class.std::ios_base", ptr %9, i64 0, i32 2
  br label %55

55:                                               ; preds = %154, %48
  %56 = phi ptr [ %49, %48 ], [ %58, %154 ]
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !70, !noalias !74
  %59 = load ptr, ptr %36, align 8, !tbaa !66, !noalias !126
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load ptr, ptr %51, align 8, !tbaa !61, !noalias !126
  %63 = load ptr, ptr %62, align 8, !tbaa !39, !noalias !126
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8, !noalias !126
  %66 = call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %62, i64 noundef 32), !noalias !126
  store ptr %66, ptr %36, align 8, !tbaa !66, !noalias !126
  %67 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %66, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !70, !noalias !126
  %68 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %66, i64 0, i32 1
  store ptr %66, ptr %68, align 8, !tbaa !73, !noalias !126
  br label %69

69:                                               ; preds = %55, %61
  %70 = load ptr, ptr %36, align 8, !tbaa !66, !noalias !126
  %71 = icmp eq ptr %58, %70
  br i1 %71, label %164, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %58, align 8, !tbaa !78
  %74 = load ptr, ptr %73, align 8, !tbaa !87
  %75 = getelementptr inbounds %"struct.std::pair", ptr %73, i64 0, i32 1
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.13, i64 noundef 17)
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %74)
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull @.str.14, i64 noundef 15)
  %79 = load ptr, ptr %77, align 8, !tbaa !39
  %80 = getelementptr i8, ptr %79, i64 -24
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds i8, ptr %77, i64 %81
  %83 = getelementptr inbounds %"class.std::ios_base", ptr %82, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !131
  %85 = and i32 %84, -75
  %86 = or disjoint i32 %85, 2
  store i32 %86, ptr %83, align 4, !tbaa !131
  %87 = getelementptr inbounds %"struct.std::pair", ptr %73, i64 0, i32 1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !133
  %89 = and i64 %88, 4294967295
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %77, i64 noundef %89)
  %91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull @.str.15, i64 noundef 4)
  %92 = load i64, ptr %75, align 8, !tbaa !134
  %93 = and i64 %92, 4294967295
  %94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef %93)
  %95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull @.str.16, i64 noundef 13)
  %96 = getelementptr inbounds i8, ptr %74, i64 8
  br i1 %52, label %154, label %97

97:                                               ; preds = %72
  %98 = load i64, ptr %75, align 8, !tbaa !134
  %99 = icmp ult i64 %98, %2
  %100 = call i64 @llvm.umin.i64(i64 %98, i64 %2)
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.17, i64 noundef 1)
  %102 = icmp eq i64 %98, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %123, %97
  %104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.18, i64 noundef 3)
  br i1 %99, label %126, label %141

105:                                              ; preds = %97, %123
  %106 = phi i64 [ %124, %123 ], [ 0, %97 ]
  %107 = getelementptr inbounds i8, ptr %96, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !101
  %109 = sext i8 %108 to i32
  %110 = call i32 @isprint(i32 noundef %109) #21
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i8 32, i8 %108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %112, ptr %5, align 1, !tbaa !101
  %113 = load ptr, ptr %9, align 8, !tbaa !39
  %114 = getelementptr i8, ptr %113, i64 -24
  %115 = load i64, ptr %114, align 8
  %116 = getelementptr i8, ptr %53, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !135
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %105
  %120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %5, i64 noundef 1)
  br label %123

121:                                              ; preds = %105
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext %112)
  br label %123

123:                                              ; preds = %119, %121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %124 = add nuw i64 %106, 1
  %125 = icmp eq i64 %124, %100
  br i1 %125, label %103, label %105, !llvm.loop !141

126:                                              ; preds = %103, %138
  %127 = phi i64 [ %139, %138 ], [ %100, %103 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 32, ptr %4, align 1, !tbaa !101
  %128 = load ptr, ptr %9, align 8, !tbaa !39
  %129 = getelementptr i8, ptr %128, i64 -24
  %130 = load i64, ptr %129, align 8
  %131 = getelementptr i8, ptr %54, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !135
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %126
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %4, i64 noundef 1)
  br label %138

136:                                              ; preds = %126
  %137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext 32)
  br label %138

138:                                              ; preds = %134, %136
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %139 = add i64 %127, 1
  %140 = icmp eq i64 %139, %2
  br i1 %140, label %141, label %126, !llvm.loop !142

141:                                              ; preds = %138, %103
  %142 = load ptr, ptr %9, align 8, !tbaa !39
  %143 = getelementptr i8, ptr %142, i64 -24
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr i8, ptr %50, i64 %144
  %146 = load i32, ptr %145, align 8, !tbaa !131
  %147 = and i32 %146, -75
  %148 = or disjoint i32 %147, 8
  store i32 %148, ptr %145, align 4, !tbaa !131
  %149 = icmp eq i64 %98, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = call i64 @llvm.umax.i64(i64 %100, i64 1)
  br label %155

152:                                              ; preds = %155, %141
  %153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.20, i64 noundef 1)
  br label %154

154:                                              ; preds = %152, %72
  br label %55, !llvm.loop !143

155:                                              ; preds = %150, %155
  %156 = phi i64 [ %162, %155 ], [ 0, %150 ]
  %157 = getelementptr inbounds i8, ptr %96, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !101
  %159 = zext i8 %158 to i64
  %160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %159)
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef nonnull @.str.19, i64 noundef 1)
  %162 = add nuw i64 %156, 1
  %163 = icmp eq i64 %162, %151
  br i1 %163, label %152, label %155, !llvm.loop !144

164:                                              ; preds = %69, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !70, !noalias !145
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !66, !noalias !148
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !61, !noalias !148
  %14 = load ptr, ptr %13, align 8, !tbaa !39, !noalias !148
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !148
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !66, !noalias !148
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !70, !noalias !148
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !73, !noalias !148
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !66, !noalias !148
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70, !noalias !151
  %27 = load ptr, ptr %0, align 8, !tbaa !61
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !154

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !155
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = load ptr, ptr %0, align 8, !tbaa !61
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !66
  %46 = load ptr, ptr %0, align 8, !tbaa !61
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %10 = load ptr, ptr %7, align 8, !tbaa !66, !noalias !159
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !159
  %14 = load ptr, ptr %13, align 8, !tbaa !39, !noalias !159
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !159
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !159
  store ptr %17, ptr %7, align 8, !tbaa !66, !noalias !159
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !70, !noalias !159
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !73, !noalias !159
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !66, !noalias !159
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !70, !noalias !159
  store ptr %23, ptr %2, align 8, !tbaa !98, !alias.scope !156
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %24 = load i64, ptr %3, align 8, !tbaa !60
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !162

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !163
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !164

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !103
  %18 = load ptr, ptr %0, align 8, !tbaa !62
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S3_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS6_5EntryEEENS_9XalanListISF_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66, !noalias !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !165
  %9 = load ptr, ptr %8, align 8, !tbaa !39, !noalias !165
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !165
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !165
  store ptr %12, ptr %3, align 8, !tbaa !66, !noalias !165
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !70, !noalias !165
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !73, !noalias !165
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !66, !noalias !165
  %17 = load ptr, ptr %1, align 8, !tbaa !98
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !70
  %25 = load ptr, ptr %20, align 8, !tbaa !70
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %25, i64 0, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !73
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  store ptr %28, ptr %22, align 8, !tbaa !73
  store ptr %16, ptr %20, align 8, !tbaa !70
  %29 = load ptr, ptr %27, align 8, !tbaa !73
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %17, ptr %30, align 8, !tbaa !70
  store ptr %17, ptr %27, align 8, !tbaa !73
  br label %31

31:                                               ; preds = %15, %19
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", ptr %17, i64 0, i32 1
  store i8 1, ptr %32, align 8, !tbaa !107
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !60
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !60
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !168
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = load ptr, ptr %0, align 8, !tbaa !169
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !66, !noalias !170
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !61, !noalias !170
  %13 = load ptr, ptr %12, align 8, !tbaa !39, !noalias !170
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !170
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !170
  store ptr %16, ptr %7, align 8, !tbaa !66, !noalias !170
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !70, !noalias !170
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !73, !noalias !170
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !66, !noalias !170
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS3_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !65
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  store ptr %18, ptr %5, align 8, !tbaa !169
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !168
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !104
  %27 = load ptr, ptr %5, align 8, !tbaa !169
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !168
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !104
  %41 = load ptr, ptr %5, align 8, !tbaa !169
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #18
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !58
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !60
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !65
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !65
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %70, %62 ]
  %64 = phi i64 [ 0, %60 ], [ %69, %62 ]
  %65 = shl i64 %64, 1
  %66 = getelementptr inbounds i8, ptr %2, i64 %63
  %67 = load i8, ptr %66, align 1, !tbaa !101
  %68 = sext i8 %67 to i64
  %69 = xor i64 %65, %68
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %62, !llvm.loop !102

72:                                               ; preds = %62
  %73 = urem i64 %69, %61
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %75 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !57
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %78, i64 noundef 24)
  store ptr %82, ptr %6, align 8, !tbaa !78
  %83 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %83, align 8, !tbaa !107
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %84

84:                                               ; preds = %76, %72
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !66, !noalias !175
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load ptr, ptr %74, align 8, !tbaa !61, !noalias !175
  %90 = load ptr, ptr %89, align 8, !tbaa !39, !noalias !175
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8, !noalias !175
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 32), !noalias !175
  store ptr %93, ptr %85, align 8, !tbaa !66, !noalias !175
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %93, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !70, !noalias !175
  %95 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %93, i64 0, i32 1
  store ptr %93, ptr %95, align 8, !tbaa !73, !noalias !175
  br label %96

96:                                               ; preds = %84, %88
  %97 = load ptr, ptr %85, align 8, !tbaa !66, !noalias !175
  %98 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !73, !noalias !178
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", ptr %99, i64 0, i32 1
  store i8 0, ptr %100, align 8, !tbaa !107
  %101 = load ptr, ptr %99, align 8, !tbaa !78
  %102 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %102, ptr %101, align 8, !tbaa !42
  %103 = icmp eq ptr %3, null
  %104 = load ptr, ptr %99, align 8, !tbaa !78
  %105 = getelementptr inbounds %"struct.std::pair", ptr %104, i64 0, i32 1
  br i1 %103, label %107, label %106

106:                                              ; preds = %96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !90
  br label %108

107:                                              ; preds = %96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  br label %108

108:                                              ; preds = %107, %106
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !66, !noalias !181
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load ptr, ptr %109, align 8, !tbaa !61, !noalias !181
  %115 = load ptr, ptr %114, align 8, !tbaa !39, !noalias !181
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8, !noalias !181
  %118 = call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %114, i64 noundef 32), !noalias !181
  store ptr %118, ptr %110, align 8, !tbaa !66, !noalias !181
  %119 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %118, i64 0, i32 2
  store ptr %118, ptr %119, align 8, !tbaa !70, !noalias !181
  %120 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %118, i64 0, i32 1
  store ptr %118, ptr %120, align 8, !tbaa !73, !noalias !181
  br label %121

121:                                              ; preds = %108, %113
  %122 = load ptr, ptr %110, align 8, !tbaa !66, !noalias !181
  %123 = load ptr, ptr %85, align 8, !tbaa !66, !noalias !184
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load ptr, ptr %74, align 8, !tbaa !61, !noalias !184
  %127 = load ptr, ptr %126, align 8, !tbaa !39, !noalias !184
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !184
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !184
  store ptr %130, ptr %85, align 8, !tbaa !66, !noalias !184
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !70, !noalias !184
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !73, !noalias !184
  br label %133

133:                                              ; preds = %121, %125
  %134 = load ptr, ptr %85, align 8, !tbaa !66, !noalias !184
  %135 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !73, !noalias !187
  %137 = icmp eq ptr %122, %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %136, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !70
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %136, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !73
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %140, ptr %143, align 8, !tbaa !70
  %144 = load ptr, ptr %139, align 8, !tbaa !70
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %144, i64 0, i32 1
  store ptr %142, ptr %145, align 8, !tbaa !73
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %122, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !73
  store ptr %147, ptr %141, align 8, !tbaa !73
  store ptr %122, ptr %139, align 8, !tbaa !70
  %148 = load ptr, ptr %146, align 8, !tbaa !73
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %148, i64 0, i32 2
  store ptr %136, ptr %149, align 8, !tbaa !70
  store ptr %136, ptr %146, align 8, !tbaa !73
  br label %150

150:                                              ; preds = %133, %138
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !103
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %152, i64 %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %154 = load ptr, ptr %110, align 8, !tbaa !66, !noalias !190
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load ptr, ptr %109, align 8, !tbaa !61, !noalias !190
  %158 = load ptr, ptr %157, align 8, !tbaa !39, !noalias !190
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8, !noalias !190
  %161 = call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %157, i64 noundef 32), !noalias !190
  store ptr %161, ptr %110, align 8, !tbaa !66, !noalias !190
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %161, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !70, !noalias !190
  %163 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %161, i64 0, i32 1
  store ptr %161, ptr %163, align 8, !tbaa !73, !noalias !190
  br label %164

164:                                              ; preds = %150, %156
  %165 = load ptr, ptr %110, align 8, !tbaa !66, !noalias !190
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %166 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !73, !noalias !193
  store ptr %167, ptr %7, align 8, !tbaa !98, !alias.scope !193
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %168 = load i64, ptr %52, align 8, !tbaa !60
  %169 = add i64 %168, 1
  store i64 %169, ptr %52, align 8, !tbaa !60
  %170 = load ptr, ptr %110, align 8, !tbaa !66, !noalias !196
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load ptr, ptr %109, align 8, !tbaa !61, !noalias !196
  %174 = load ptr, ptr %173, align 8, !tbaa !39, !noalias !196
  %175 = getelementptr inbounds ptr, ptr %174, i64 2
  %176 = load ptr, ptr %175, align 8, !noalias !196
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %173, i64 noundef 32), !noalias !196
  store ptr %177, ptr %110, align 8, !tbaa !66, !noalias !196
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %177, i64 0, i32 2
  store ptr %177, ptr %178, align 8, !tbaa !70, !noalias !196
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %177, i64 0, i32 1
  store ptr %177, ptr %179, align 8, !tbaa !73, !noalias !196
  br label %180

180:                                              ; preds = %164, %172
  %181 = load ptr, ptr %110, align 8, !tbaa !66, !noalias !196
  %182 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !73, !noalias !199
  store ptr %183, ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !65
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !163
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !103
  %22 = load i64, ptr %6, align 8, !tbaa !65
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !65
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !65
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !202

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %36 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %36, ptr %5, align 8, !tbaa !62
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !65
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !163
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !39
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !103
  %45 = load i64, ptr %37, align 8, !tbaa !65
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !103
  %50 = load i64, ptr %37, align 8, !tbaa !65
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !103
  %54 = load i64, ptr %37, align 8, !tbaa !65
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !103
  %57 = load i64, ptr %6, align 8, !tbaa !65
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !62
  %61 = load i64, ptr %6, align 8, !tbaa !65
  %62 = load i64, ptr %13, align 8, !tbaa !163
  %63 = load ptr, ptr %9, align 8, !tbaa !103
  %64 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %64, ptr %0, align 8, !tbaa !62
  %65 = load i64, ptr %37, align 8, !tbaa !65
  store i64 %65, ptr %6, align 8, !tbaa !65
  %66 = load i64, ptr %38, align 8, !tbaa !163
  store i64 %66, ptr %13, align 8, !tbaa !163
  %67 = load ptr, ptr %44, align 8, !tbaa !103
  store ptr %67, ptr %9, align 8, !tbaa !103
  store ptr %60, ptr %5, align 8, !tbaa !62
  store i64 %61, ptr %37, align 8, !tbaa !65
  store i64 %62, ptr %38, align 8, !tbaa !163
  store ptr %63, ptr %44, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %69

70:                                               ; preds = %33
  %71 = ptrtoint ptr %11 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 5
  %75 = icmp ugt i64 %74, %2
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = sub i64 %2, %74
  %78 = icmp eq i64 %74, %2
  br i1 %78, label %79, label %81

79:                                               ; preds = %81, %76
  %80 = icmp eq ptr %11, %1
  br i1 %80, label %85, label %87

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %83, %81 ], [ 0, %76 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !203

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !204

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !205

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !206

104:                                              ; preds = %100, %96
  %105 = ptrtoint ptr %98 to i64
  %106 = sub i64 %105, %72
  %107 = ashr exact i64 %106, 5
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %109
  %110 = phi i64 [ %116, %109 ], [ %107, %104 ]
  %111 = phi ptr [ %114, %109 ], [ %11, %104 ]
  %112 = phi ptr [ %113, %109 ], [ %98, %104 ]
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !207

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !205

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !60
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  store ptr %11, ptr %3, align 8, !tbaa !169
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %79

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !168
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !104
  %20 = load ptr, ptr %3, align 8, !tbaa !169
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !66, !noalias !208
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !61, !noalias !208
  %34 = load ptr, ptr %33, align 8, !tbaa !39, !noalias !208
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !208
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %93

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !66, !noalias !208
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !70, !noalias !208
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !73, !noalias !208
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %75, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %75 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !42, !noalias !74
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !70, !noalias !74
  store ptr %47, ptr %4, align 8, !tbaa !98
  %48 = load ptr, ptr %29, align 8, !tbaa !66, !noalias !211
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !61, !noalias !211
  %52 = load ptr, ptr %51, align 8, !tbaa !39, !noalias !211
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !211
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %95

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !66, !noalias !211
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !70, !noalias !211
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !73, !noalias !211
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !66, !noalias !211
  %61 = load ptr, ptr %4, align 8, !tbaa !98
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !78
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %73, %65 ]
  %67 = phi i64 [ 0, %63 ], [ %72, %65 ]
  %68 = shl i64 %67, 1
  %69 = getelementptr inbounds i8, ptr %64, i64 %66
  %70 = load i8, ptr %69, align 1, !tbaa !101
  %71 = sext i8 %70 to i64
  %72 = xor i64 %68, %71
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %75, label %65, !llvm.loop !102

75:                                               ; preds = %65
  %76 = urem i64 %72, %9
  %77 = load ptr, ptr %42, align 8, !tbaa !103
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %77, i64 %76
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %97, !llvm.loop !214

79:                                               ; preds = %1
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i64, ptr %13, align 8, !tbaa !168
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %14, align 8, !tbaa !104
  %85 = load ptr, ptr %3, align 8, !tbaa !169
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %83
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #18
  unreachable

92:                                               ; preds = %79, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %117

93:                                               ; preds = %32
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %115

95:                                               ; preds = %50
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %115

97:                                               ; preds = %75
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %115

99:                                               ; preds = %59
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !62
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !65
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !163
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !103
  %108 = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %108, ptr %100, align 8, !tbaa !62
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !65
  store i64 %110, ptr %102, align 8, !tbaa !65
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !163
  store i64 %112, ptr %104, align 8, !tbaa !163
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !103
  store ptr %114, ptr %106, align 8, !tbaa !103
  store ptr %101, ptr %2, align 8, !tbaa !62
  store i64 %103, ptr %109, align 8, !tbaa !65
  store i64 %105, ptr %111, align 8, !tbaa !163
  store ptr %107, ptr %113, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  ret void

115:                                              ; preds = %97, %95, %93
  %116 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  br label %117

117:                                              ; preds = %115, %92
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %80, %92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  resume { ptr, i32 } %118
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !73
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !66
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !61
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !66
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !73
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !66
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #7 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66, !noalias !215
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !61, !noalias !215
  %8 = load ptr, ptr %7, align 8, !tbaa !39, !noalias !215
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !215
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !215
  store ptr %11, ptr %3, align 8, !tbaa !66, !noalias !215
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !70, !noalias !215
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !73, !noalias !215
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !66, !noalias !215
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !61
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !155
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !218
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  store ptr %33, ptr %31, align 8, !tbaa !42
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !42
  %35 = load ptr, ptr %32, align 8, !tbaa !73
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !70
  store ptr %29, ptr %32, align 8, !tbaa !73
  store ptr %30, ptr %16, align 8, !tbaa !155
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !65
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !163
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !103
  %28 = load i64, ptr %12, align 8, !tbaa !65
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !65
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !65
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !220

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %42, ptr %5, align 8, !tbaa !62
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !65
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !163
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !39
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !103
  %51 = load i64, ptr %43, align 8, !tbaa !65
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !103
  %56 = load i64, ptr %43, align 8, !tbaa !65
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !103
  %60 = load i64, ptr %43, align 8, !tbaa !65
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !103
  %63 = load i64, ptr %12, align 8, !tbaa !65
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !62
  %67 = load i64, ptr %12, align 8, !tbaa !65
  %68 = load i64, ptr %19, align 8, !tbaa !163
  %69 = load ptr, ptr %15, align 8, !tbaa !103
  %70 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %70, ptr %0, align 8, !tbaa !62
  %71 = load i64, ptr %43, align 8, !tbaa !65
  store i64 %71, ptr %12, align 8, !tbaa !65
  %72 = load i64, ptr %44, align 8, !tbaa !163
  store i64 %72, ptr %19, align 8, !tbaa !163
  %73 = load ptr, ptr %50, align 8, !tbaa !103
  store ptr %73, ptr %15, align 8, !tbaa !103
  store ptr %66, ptr %5, align 8, !tbaa !62
  store i64 %67, ptr %43, align 8, !tbaa !65
  store i64 %68, ptr %44, align 8, !tbaa !163
  store ptr %69, ptr %50, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !221

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !222

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !223

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !224

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %78
  %117 = ashr exact i64 %116, 5
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %121, %114
  %120 = icmp sgt i64 %9, 0
  br i1 %120, label %130, label %139

121:                                              ; preds = %114, %121
  %122 = phi i64 [ %128, %121 ], [ %117, %114 ]
  %123 = phi ptr [ %126, %121 ], [ %17, %114 ]
  %124 = phi ptr [ %125, %121 ], [ %108, %114 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !207

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !223

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !163
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !62
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !65
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !65
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %22 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE10doPushBackERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !62
  %25 = load i64, ptr %4, align 8, !tbaa !65
  %26 = load i64, ptr %6, align 8, !tbaa !163
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %29, ptr %0, align 8, !tbaa !62
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !65
  store i64 %31, ptr %4, align 8, !tbaa !65
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !163
  store i64 %33, ptr %6, align 8, !tbaa !163
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  store ptr %35, ptr %27, align 8, !tbaa !103
  store ptr %24, ptr %3, align 8, !tbaa !62
  store i64 %25, ptr %30, align 8, !tbaa !65
  store i64 %26, ptr %32, align 8, !tbaa !163
  store ptr %28, ptr %34, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !62
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %12, ptr %0, align 8, !tbaa !62
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !65
  store i64 %14, ptr %6, align 8, !tbaa !65
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !163
  store i64 %16, ptr %8, align 8, !tbaa !163
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  store ptr %18, ptr %10, align 8, !tbaa !103
  store ptr %5, ptr %3, align 8, !tbaa !62
  store i64 %7, ptr %13, align 8, !tbaa !65
  store i64 %9, ptr %15, align 8, !tbaa !163
  store ptr %11, ptr %17, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2ERKSL_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !62
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !163
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !103
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = load i64, ptr %9, align 8, !tbaa !65
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_PKSI_SO_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !62
  %28 = load i64, ptr %6, align 8, !tbaa !65
  %29 = load i64, ptr %7, align 8, !tbaa !163
  %30 = load ptr, ptr %8, align 8, !tbaa !103
  %31 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %31, ptr %0, align 8, !tbaa !62
  %32 = load i64, ptr %14, align 8, !tbaa !65
  store i64 %32, ptr %6, align 8, !tbaa !65
  %33 = load i64, ptr %15, align 8, !tbaa !163
  store i64 %33, ptr %7, align 8, !tbaa !163
  %34 = load ptr, ptr %21, align 8, !tbaa !103
  store ptr %34, ptr %8, align 8, !tbaa !103
  store ptr %27, ptr %5, align 8, !tbaa !62
  store i64 %28, ptr %14, align 8, !tbaa !65
  store i64 %29, ptr %15, align 8, !tbaa !163
  store ptr %30, ptr %21, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !39
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !103
  store i64 %3, ptr %7, align 8, !tbaa !163
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !169
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !106
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !169
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !106
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !168
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !104
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  %24 = load i64, ptr %9, align 8, !tbaa !106
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !169
  %28 = load i64, ptr %6, align 8, !tbaa !106
  %29 = load i64, ptr %7, align 8, !tbaa !168
  %30 = load ptr, ptr %8, align 8, !tbaa !104
  %31 = load ptr, ptr %5, align 8, !tbaa !169
  store ptr %31, ptr %0, align 8, !tbaa !169
  %32 = load i64, ptr %14, align 8, !tbaa !106
  store i64 %32, ptr %6, align 8, !tbaa !106
  %33 = load i64, ptr %15, align 8, !tbaa !168
  store i64 %33, ptr %7, align 8, !tbaa !168
  %34 = load ptr, ptr %21, align 8, !tbaa !104
  store ptr %34, ptr %8, align 8, !tbaa !104
  store ptr %27, ptr %5, align 8, !tbaa !169
  store i64 %28, ptr %14, align 8, !tbaa !106
  store i64 %29, ptr %15, align 8, !tbaa !168
  store ptr %30, ptr %21, align 8, !tbaa !104
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !39
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !168
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !104
  %50 = load ptr, ptr %5, align 8, !tbaa !169
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !39
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !104
  store i64 %3, ptr %7, align 8, !tbaa !168
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !106
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !168
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !104
  %28 = load i64, ptr %12, align 8, !tbaa !106
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !98
  store ptr %34, ptr %32, align 8, !tbaa !98
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !225

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !169
  store ptr %42, ptr %5, align 8, !tbaa !169
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !106
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !168
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !39
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !104
  %51 = load i64, ptr %43, align 8, !tbaa !106
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !104
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !104
  %56 = load i64, ptr %43, align 8, !tbaa !106
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !104
  %60 = load i64, ptr %43, align 8, !tbaa !106
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !104
  %63 = load i64, ptr %12, align 8, !tbaa !106
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !169
  %67 = load i64, ptr %12, align 8, !tbaa !106
  %68 = load i64, ptr %19, align 8, !tbaa !168
  %69 = load ptr, ptr %15, align 8, !tbaa !104
  %70 = load ptr, ptr %5, align 8, !tbaa !169
  store ptr %70, ptr %0, align 8, !tbaa !169
  %71 = load i64, ptr %43, align 8, !tbaa !106
  store i64 %71, ptr %12, align 8, !tbaa !106
  %72 = load i64, ptr %44, align 8, !tbaa !168
  store i64 %72, ptr %19, align 8, !tbaa !168
  %73 = load ptr, ptr %50, align 8, !tbaa !104
  store ptr %73, ptr %15, align 8, !tbaa !104
  store ptr %66, ptr %5, align 8, !tbaa !169
  store i64 %67, ptr %43, align 8, !tbaa !106
  store i64 %68, ptr %44, align 8, !tbaa !168
  store ptr %69, ptr %50, align 8, !tbaa !104
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !39
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !168
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !104
  %89 = load ptr, ptr %5, align 8, !tbaa !169
  %90 = load ptr, ptr %89, align 8, !tbaa !39
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !226

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !227

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !98
  store ptr %122, ptr %120, align 8, !tbaa !98
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !228

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !229

135:                                              ; preds = %131, %127
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %136, %99
  %138 = ashr exact i64 %137, 3
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %142, %135
  %141 = icmp sgt i64 %9, 0
  br i1 %141, label %151, label %161

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %149, %142 ], [ %138, %135 ]
  %144 = phi ptr [ %147, %142 ], [ %17, %135 ]
  %145 = phi ptr [ %146, %142 ], [ %129, %135 ]
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !98
  store ptr %148, ptr %147, align 8, !tbaa !98
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !230

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !98
  store ptr %155, ptr %153, align 8, !tbaa !98
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !228

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !106
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !168
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %13, ptr %12, align 8, !tbaa !98
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !106
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE10doPushBackERKSF_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !169
  %24 = load i64, ptr %4, align 8, !tbaa !106
  %25 = load i64, ptr %6, align 8, !tbaa !168
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  %28 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %28, ptr %0, align 8, !tbaa !169
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !106
  store i64 %30, ptr %4, align 8, !tbaa !106
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !168
  store i64 %32, ptr %6, align 8, !tbaa !168
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !104
  store ptr %34, ptr %26, align 8, !tbaa !104
  store ptr %23, ptr %3, align 8, !tbaa !169
  store i64 %24, ptr %29, align 8, !tbaa !106
  store i64 %25, ptr %31, align 8, !tbaa !168
  store ptr %27, ptr %33, align 8, !tbaa !104
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !39
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !168
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !104
  %52 = load ptr, ptr %3, align 8, !tbaa !169
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !169
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !168
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %12, ptr %0, align 8, !tbaa !169
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !106
  store i64 %14, ptr %6, align 8, !tbaa !106
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !168
  store i64 %16, ptr %8, align 8, !tbaa !168
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  store ptr %18, ptr %10, align 8, !tbaa !104
  store ptr %5, ptr %3, align 8, !tbaa !169
  store i64 %7, ptr %13, align 8, !tbaa !106
  store i64 %9, ptr %15, align 8, !tbaa !168
  store ptr %11, ptr %17, align 8, !tbaa !104
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEaSERKSI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !168
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !106
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !169
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !169
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !106
  %16 = load i64, ptr %6, align 8, !tbaa !168
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = load ptr, ptr %3, align 8, !tbaa !169
  store ptr %19, ptr %0, align 8, !tbaa !169
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !106
  store i64 %21, ptr %14, align 8, !tbaa !106
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !168
  store i64 %23, ptr %6, align 8, !tbaa !168
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  store ptr %25, ptr %17, align 8, !tbaa !104
  store ptr %13, ptr %3, align 8, !tbaa !169
  store i64 %15, ptr %20, align 8, !tbaa !106
  store i64 %16, ptr %22, align 8, !tbaa !168
  store ptr %18, ptr %24, align 8, !tbaa !104
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !104
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !106
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !104
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEE6insertEPSF_PKSF_SL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !106
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !106
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !104
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !104
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !98
  store ptr %68, ptr %66, align 8, !tbaa !98
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !228

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEC2EmRKSI_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !62
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  store ptr %3, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEE6insertEPSI_mRKSI_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !62
  %14 = load i64, ptr %6, align 8, !tbaa !65
  %15 = load i64, ptr %12, align 8, !tbaa !163
  %16 = load ptr, ptr %11, align 8, !tbaa !103
  %17 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %17, ptr %0, align 8, !tbaa !62
  %18 = load i64, ptr %7, align 8, !tbaa !65
  store i64 %18, ptr %6, align 8, !tbaa !65
  %19 = load i64, ptr %10, align 8, !tbaa !163
  store i64 %19, ptr %12, align 8, !tbaa !163
  %20 = load ptr, ptr %9, align 8, !tbaa !103
  store ptr %20, ptr %11, align 8, !tbaa !103
  store ptr %13, ptr %5, align 8, !tbaa !62
  store i64 %14, ptr %7, align 8, !tbaa !65
  store i64 %15, ptr %10, align 8, !tbaa !163
  store ptr %16, ptr %9, align 8, !tbaa !103
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE14compactBucketsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !103
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 3
  br label %14

13:                                               ; preds = %72, %1
  ret void

14:                                               ; preds = %7, %72
  %15 = phi ptr [ %8, %7 ], [ %73, %72 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %15, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !106
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %19
  br label %23

23:                                               ; preds = %21, %40
  %24 = phi ptr [ %43, %40 ], [ %22, %21 ]
  %25 = phi ptr [ %42, %40 ], [ %17, %21 ]
  %26 = phi i64 [ %41, %40 ], [ %19, %21 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !98
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<void *, xalanc_1_10::XalanDiagnosticMemoryManager::Data>::Entry", ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !107, !range !82, !noundef !74
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %25, i64 1
  br i1 %30, label %40, label %32

32:                                               ; preds = %23
  %33 = ptrtoint ptr %24 to i64
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %33, %34
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %31, i64 %35, i1 false), !tbaa !98
  br label %38

38:                                               ; preds = %32, %37
  %39 = add i64 %26, -1
  store i64 %39, ptr %18, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %23, %38
  %41 = phi i64 [ %39, %38 ], [ %26, %23 ]
  %42 = phi ptr [ %25, %38 ], [ %31, %23 ]
  %43 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %41
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %23, !llvm.loop !231

45:                                               ; preds = %40, %14
  %46 = phi i64 [ %19, %14 ], [ %41, %40 ]
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %15, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !168
  %49 = sub i64 %48, %46
  %50 = icmp ugt i64 %49, %46
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = icmp eq i64 %46, 0
  %53 = select i1 %52, i64 5, i64 %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  %54 = load ptr, ptr %9, align 8, !tbaa !57
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEC2ERKSI_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %53)
  %55 = load ptr, ptr %15, align 8, !tbaa !169
  %56 = load i64, ptr %18, align 8, !tbaa !106
  %57 = load i64, ptr %47, align 8, !tbaa !168
  %58 = load ptr, ptr %16, align 8, !tbaa !104
  %59 = load ptr, ptr %2, align 8, !tbaa !169
  store ptr %59, ptr %15, align 8, !tbaa !169
  %60 = load i64, ptr %10, align 8, !tbaa !106
  store i64 %60, ptr %18, align 8, !tbaa !106
  %61 = load i64, ptr %11, align 8, !tbaa !168
  store i64 %61, ptr %47, align 8, !tbaa !168
  %62 = load ptr, ptr %12, align 8, !tbaa !104
  store ptr %62, ptr %16, align 8, !tbaa !104
  store ptr %55, ptr %2, align 8, !tbaa !169
  store i64 %56, ptr %10, align 8, !tbaa !106
  store i64 %57, ptr %11, align 8, !tbaa !168
  store ptr %58, ptr %12, align 8, !tbaa !104
  %63 = icmp eq i64 %57, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load ptr, ptr %55, align 8, !tbaa !39
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %58)
          to label %71 unwind label %68

68:                                               ; preds = %64
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #18
  unreachable

71:                                               ; preds = %51, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  br label %72

72:                                               ; preds = %71, %45
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %15, i64 1
  %74 = load ptr, ptr %3, align 8, !tbaa !103
  %75 = load i64, ptr %4, align 8, !tbaa !65
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %74, i64 %75
  %77 = icmp eq ptr %73, %76
  br i1 %77, label %13, label %14, !llvm.loop !232
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanDiagnosticMemoryManager.cpp() #12 section ".text.startup" !prof !233 !PGOFuncName !234 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_XalanDiagnosticMemoryManager.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_XalanDiagnosticMemoryManager.cpp, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !41, i64 0}
!45 = !{!46, !48, i64 16}
!46 = !{!"_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManagerE", !47, i64 0, !43, i64 8, !48, i64 16, !48, i64 17, !49, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !43, i64 184}
!47 = !{!"_ZTSN11xercesc_2_713MemoryManagerE"}
!48 = !{!"bool", !44, i64 0}
!49 = !{!"long", !44, i64 0}
!50 = !{!"_ZTSN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEEE", !51, i64 0, !52, i64 1, !43, i64 8, !53, i64 16, !49, i64 24, !49, i64 32, !54, i64 40, !54, i64 64, !55, i64 88, !49, i64 120, !49, i64 128}
!51 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPvEE"}
!52 = !{!"_ZTSSt8equal_toIPvE"}
!53 = !{!"float", !44, i64 0}
!54 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !43, i64 0, !43, i64 8, !43, i64 16}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !43, i64 0, !49, i64 8, !49, i64 16, !43, i64 24}
!56 = !{!46, !48, i64 17}
!57 = !{!50, !43, i64 8}
!58 = !{!50, !53, i64 16}
!59 = !{!50, !49, i64 24}
!60 = !{!50, !49, i64 32}
!61 = !{!54, !43, i64 0}
!62 = !{!55, !43, i64 0}
!63 = !{!50, !49, i64 128}
!64 = !{!46, !43, i64 184}
!65 = !{!55, !49, i64 8}
!66 = !{!54, !43, i64 8}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!69 = distinct !{!69, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!70 = !{!71, !43, i64 24}
!71 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !72, i64 0, !43, i64 16, !43, i64 24}
!72 = !{!"_ZTSN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5EntryE", !43, i64 0, !48, i64 8}
!73 = !{!71, !43, i64 16}
!74 = !{}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!78 = !{!72, !43, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{i8 0, i8 2}
!83 = !{!46, !43, i64 8}
!84 = !{!46, !49, i64 40}
!85 = !{!46, !49, i64 32}
!86 = !{!46, !49, i64 24}
!87 = !{!88, !43, i64 0}
!88 = !{!"_ZTSSt4pairIKPvN11xalanc_1_1028XalanDiagnosticMemoryManager4DataEE", !43, i64 0, !89, i64 8}
!89 = !{!"_ZTSN11xalanc_1_1028XalanDiagnosticMemoryManager4DataE", !49, i64 0, !49, i64 8}
!90 = !{i64 0, i64 8, !91, i64 8, i64 8, !91}
!91 = !{!49, !49, i64 0}
!92 = !{i64 0, i64 8, !91}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!95 = distinct !{!95, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!96 = distinct !{!96, !97, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!97 = distinct !{!97, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!98 = !{!99, !43, i64 0}
!99 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEE", !43, i64 0}
!100 = !{!88, !49, i64 8}
!101 = !{!44, !44, i64 0}
!102 = distinct !{!102, !80, !81}
!103 = !{!55, !43, i64 24}
!104 = !{!105, !43, i64 24}
!105 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEE", !43, i64 0, !49, i64 8, !49, i64 16, !43, i64 24}
!106 = !{!105, !49, i64 8}
!107 = !{!72, !48, i64 8}
!108 = distinct !{!108, !80, !81}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!111 = distinct !{!111, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!112 = !{!113, !110}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!117 = distinct !{!117, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!118 = distinct !{!118, !119, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!119 = distinct !{!119, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!120 = !{!50, !49, i64 120}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!123 = distinct !{!123, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!124 = distinct !{!124, !125, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!125 = distinct !{!125, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!126 = !{!127, !129}
!127 = distinct !{!127, !128, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!128 = distinct !{!128, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!129 = distinct !{!129, !130, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!130 = distinct !{!130, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!131 = !{!132, !132, i64 0}
!132 = !{!"_ZTSSt13_Ios_Fmtflags", !44, i64 0}
!133 = !{!89, !49, i64 8}
!134 = !{!89, !49, i64 0}
!135 = !{!136, !49, i64 16}
!136 = !{!"_ZTSSt8ios_base", !49, i64 8, !49, i64 16, !132, i64 24, !137, i64 28, !137, i64 32, !43, i64 40, !138, i64 48, !44, i64 64, !139, i64 192, !43, i64 200, !140, i64 208}
!137 = !{!"_ZTSSt12_Ios_Iostate", !44, i64 0}
!138 = !{!"_ZTSNSt8ios_base6_WordsE", !43, i64 0, !49, i64 8}
!139 = !{!"int", !44, i64 0}
!140 = !{!"_ZTSSt6locale", !43, i64 0}
!141 = distinct !{!141, !80, !81}
!142 = distinct !{!142, !80, !81}
!143 = distinct !{!143, !80, !81}
!144 = distinct !{!144, !80, !81}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!147 = distinct !{!147, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!150 = distinct !{!150, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi: argument 0"}
!153 = distinct !{!153, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEppEi"}
!154 = distinct !{!154, !80, !81}
!155 = !{!54, !43, i64 16}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!158 = distinct !{!158, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!159 = !{!160, !157}
!160 = distinct !{!160, !161, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!161 = distinct !{!161, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!162 = distinct !{!162, !80, !81}
!163 = !{!55, !49, i64 16}
!164 = distinct !{!164, !80, !81}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!167 = distinct !{!167, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!168 = !{!105, !49, i64 16}
!169 = !{!105, !43, i64 0}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!173 = distinct !{!173, !174, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!174 = distinct !{!174, !"_ZN11xalanc_1_108XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!177 = distinct !{!177, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!180 = distinct !{!180, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!183 = distinct !{!183, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!186 = distinct !{!186, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!189 = distinct !{!189, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!192 = distinct !{!192, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!195 = distinct !{!195, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!198 = distinct !{!198, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv: argument 0"}
!201 = distinct !{!201, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS9_E4NodeEEmmEv"}
!202 = distinct !{!202, !80, !81}
!203 = distinct !{!203, !80, !81}
!204 = distinct !{!204, !80, !81}
!205 = distinct !{!205, !80, !81}
!206 = distinct !{!206, !80, !81}
!207 = distinct !{!207, !80, !81}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!213 = distinct !{!213, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!214 = distinct !{!214, !80, !81}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!217 = distinct !{!217, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPvNS_28XalanDiagnosticMemoryManager4DataENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!218 = !{i64 0, i64 8, !42, i64 8, i64 1, !219}
!219 = !{!48, !48, i64 0}
!220 = distinct !{!220, !80, !81}
!221 = distinct !{!221, !80, !81}
!222 = distinct !{!222, !80, !81}
!223 = distinct !{!223, !80, !81}
!224 = distinct !{!224, !80, !81}
!225 = distinct !{!225, !80, !81}
!226 = distinct !{!226, !80, !81}
!227 = distinct !{!227, !80, !81}
!228 = distinct !{!228, !80, !81}
!229 = distinct !{!229, !80, !81}
!230 = distinct !{!230, !80, !81}
!231 = distinct !{!231, !80, !81}
!232 = distinct !{!232, !80, !81}
!233 = !{!"function_entry_count", i64 1}
!234 = !{!"XalanDiagnosticMemoryManager.cpp;_GLOBAL__sub_I_XalanDiagnosticMemoryManager.cpp"}
