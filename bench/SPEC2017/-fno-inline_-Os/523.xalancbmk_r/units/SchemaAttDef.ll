; ModuleID = 'SchemaAttDef.cpp'
source_filename = "SchemaAttDef.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.0" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::UnionDatatypeValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjEC2ERKS1_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjED2Ev = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE = comdat any

$_ZN11xercesc_2_712SchemaAttDef5resetEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef17getDOMTypeInfoUriEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef18getDOMTypeInfoNameEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator5resetEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef16getTypeAnonymousEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef22getMemberTypeAnonymousEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef16getMemberTypeUriEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getTypeUriEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef22getValidationAttemptedEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef17getMemberTypeNameEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef11getTypeNameEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv = comdat any

@_ZTVN11xercesc_2_712SchemaAttDefE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SchemaAttDefE, ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev, ptr @_ZN11xercesc_2_712SchemaAttDefD0Ev, ptr @_ZNK11xercesc_2_712SchemaAttDef14isSerializableEv, ptr @_ZN11xercesc_2_712SchemaAttDef9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_712SchemaAttDef12getProtoTypeEv, ptr @_ZNK11xercesc_2_712SchemaAttDef11getFullNameEv, ptr @_ZN11xercesc_2_712SchemaAttDef5resetEv, ptr @_ZNK11xercesc_2_712SchemaAttDef17getDOMTypeInfoUriEv, ptr @_ZNK11xercesc_2_712SchemaAttDef18getDOMTypeInfoNameEv] }, align 8
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"SchemaAttDef\00", align 1
@_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_712SchemaAttDef12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SchemaAttDefE = dso_local constant [30 x i8] c"N11xercesc_2_712SchemaAttDefE\00", align 1
@_ZTIN11xercesc_2_79XMLAttDefE = external constant ptr
@_ZTIN11xercesc_2_712SchemaAttDefE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SchemaAttDefE, ptr @_ZTIN11xercesc_2_79XMLAttDefE }, align 8
@_ZN11xercesc_2_75QName10classQNameE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712SchemaAttDefC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712SchemaAttDefC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32, ptr), ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE
@_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr), ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE
@_ZN11xercesc_2_712SchemaAttDefC1EPKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKS0_
@_ZN11xercesc_2_712SchemaAttDefD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef11getFullNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i32 noundef 4, ptr noundef %1) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  %4 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !60
  store i32 %4, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  store i32 1, ptr %5, align 4, !tbaa !62
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 1, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %4, i32 noundef %5, ptr noundef %6) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  %9 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !60
  store i32 %9, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  store i32 1, ptr %10, align 4, !tbaa !62
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 1, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  store i32 0, ptr %12, align 4, !tbaa !65
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %6) #10
          to label %15 unwind label %18

15:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %6) #10
          to label %16 unwind label %20

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  store ptr %14, ptr %17, align 8, !tbaa !43
  ret void

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %6) #11
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  resume { ptr, i32 } %23
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  %11 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !60
  store i32 %11, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  store i32 1, ptr %12, align 4, !tbaa !62
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 1, ptr %13, align 8, !tbaa !63
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 4, !tbaa !65
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  %16 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %8) #10
          to label %17 unwind label %20

17:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %8) #10
          to label %18 unwind label %22

18:                                               ; preds = %17
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  store ptr %16, ptr %19, align 8, !tbaa !43
  ret void

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %8) #11
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  resume { ptr, i32 } %25
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #10
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #10
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #10
  %6 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #10
  %7 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #10
  tail call void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  %9 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !60
  store i32 %9, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 2
  %12 = load <2 x i32>, ptr %11, align 4, !tbaa !66
  store <2 x i32> %12, ptr %10, align 4, !tbaa !66
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !65
  store i32 %15, ptr %13, align 4, !tbaa !65
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  store ptr null, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 6
  %19 = load <2 x ptr>, ptr %18, align 8, !tbaa !67
  store <2 x ptr> %19, ptr %17, align 8, !tbaa !67
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  store ptr %22, ptr %20, align 8, !tbaa !68
  %23 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  store ptr null, ptr %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  store ptr %26, ptr %24, align 8, !tbaa !70
  %27 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #10
  %28 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  %29 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %28) #10
          to label %30 unwind label %48

30:                                               ; preds = %2
  %31 = tail call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #10
  %32 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #10
  %33 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #10
  %34 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34) #10
          to label %35 unwind label %50

35:                                               ; preds = %30
  store ptr %29, ptr %16, align 8, !tbaa !43
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %37) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  %44 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %43) #10
          to label %45 unwind label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr %36, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_713ValueVectorOfIjEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %46) #10
          to label %47 unwind label %52

47:                                               ; preds = %45
  store ptr %44, ptr %23, align 8, !tbaa !69
  br label %54

48:                                               ; preds = %42, %2
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %55

50:                                               ; preds = %30
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #11
  br label %55

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #11
  br label %55

54:                                               ; preds = %47, %39, %35
  ret void

55:                                               ; preds = %52, %50, %48
  %56 = phi { ptr, i32 } [ %53, %52 ], [ %49, %48 ], [ %51, %50 ]
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !76
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !86
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !88
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 !prof !42 {
  %3 = load i8, ptr %1, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %3, ptr %0, align 8, !tbaa !90
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !88
  store i32 %6, ptr %4, align 4, !tbaa !88
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !93
  store i32 %9, ptr %7, align 8, !tbaa !93
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !94
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  store ptr %13, ptr %11, align 8, !tbaa !95
  %14 = zext i32 %9 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = load ptr, ptr %13, align 8, !tbaa !58
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15) #10
  store ptr %19, ptr %10, align 8, !tbaa !94
  %20 = load i32, ptr %7, align 8, !tbaa !93
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %22, i1 false)
  %23 = load i32, ptr %4, align 4, !tbaa !88
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = load ptr, ptr %10, align 8, !tbaa !94
  br label %30

29:                                               ; preds = %30, %2
  ret void

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %35, %30 ]
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !60
  %34 = getelementptr inbounds i32, ptr %28, i64 %31
  store i32 %33, ptr %34, align 4, !tbaa !60
  %35 = add nuw nsw i64 %31, 1
  %36 = load i32, ptr %4, align 4, !tbaa !88
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %30, label %29, !llvm.loop !96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #11
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %13, %9
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #10
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_712SchemaAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDef10setAttNameEPKtS2_i(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !42 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SchemaAttDef12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %0) #10
  invoke void @_ZN11xercesc_2_712SchemaAttDefC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %0) #10
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #11
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !42 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712SchemaAttDef12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !42 {
  ret ptr @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !42 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %32

6:                                                ; preds = %2
  %7 = load i32, ptr %5, align 8, !tbaa !61
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %7) #10
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !62
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10) #10
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #10
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %16) #10
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %19) #10
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %22) #10
  %23 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %24) #10
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %26) #10
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_13ValueVectorOfIjEERNS_16XSerializeEngineE(ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %30) #10
  br label %54

32:                                               ; preds = %2
  %33 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %34 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  %35 = load i32, ptr %3, align 4, !tbaa !60
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  store i32 %35, ptr %36, align 4, !tbaa !62
  %37 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  %38 = load i32, ptr %3, align 4, !tbaa !60
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 %38, ptr %39, align 8, !tbaa !63
  %40 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  %41 = load i32, ptr %3, align 4, !tbaa !60
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  store i32 %41, ptr %42, align 4, !tbaa !65
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %44 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %43) #10
  %45 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %46 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  store ptr %45, ptr %46, align 8, !tbaa !99
  %47 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %48 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  store ptr %47, ptr %48, align 8, !tbaa !100
  %49 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %50 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !68
  %51 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_13ValueVectorOfIjEEibRNS_16XSerializeEngineE(ptr noundef nonnull %51, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  %52 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %53 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %52) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %54

54:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = load i16, ptr %0, align 8, !tbaa !101
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !42 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #10
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_13ValueVectorOfIjEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !42 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE) #10
  store ptr %3, ptr %1, align 8, !tbaa !67
  ret ptr %0
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_13ValueVectorOfIjEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !42 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE) #10
  store ptr %3, ptr %1, align 8, !tbaa !67
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SchemaAttDef5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #10
  %7 = icmp eq i32 %6, 25
  br i1 %7, label %15, label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %10) #10
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %2, %5 ], [ %9, %12 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  tail call void @_ZN11xercesc_2_722UnionDatatypeValidator5resetEv(ptr noundef nonnull align 8 dereferenceable(136) %17) #10
  br label %18

18:                                               ; preds = %15, %8, %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 1, ptr %19, align 4, !tbaa !62
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 1, ptr %20, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef16getTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef16getMemberTypeUriEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br label %17

15:                                               ; preds = %9
  %16 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br label %17

17:                                               ; preds = %5, %7, %1, %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %1 ], [ null, %7 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef16getTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef17getMemberTypeNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br label %17

15:                                               ; preds = %9
  %16 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  br label %17

17:                                               ; preds = %5, %7, %1, %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, %1 ], [ null, %7 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !105 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !106
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator5resetEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  store ptr null, ptr %2, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef16getTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %7, %5 ]
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %10) #10
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i1 [ false, %5 ], [ %11, %9 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i1 [ %6, %5 ], [ false, %1 ]
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef16getMemberTypeUriEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #10
  br label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %9) #10
  br label %17

13:                                               ; preds = %7
  %14 = tail call noundef i32 @_ZNK11xercesc_2_712SchemaAttDef22getValidationAttemptedEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  %15 = icmp eq i32 %14, 1
  %16 = select i1 %15, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr null
  br label %17

17:                                               ; preds = %13, %11, %5
  %18 = phi ptr [ %6, %5 ], [ %12, %11 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !112, !range !91, !noundef !92
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SchemaAttDef22getValidationAttemptedEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !63
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef17getMemberTypeNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #10
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #10
  br label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %9) #10
  br label %17

13:                                               ; preds = %7
  %14 = tail call noundef i32 @_ZNK11xercesc_2_712SchemaAttDef22getValidationAttemptedEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
  %15 = icmp eq i32 %14, 1
  %16 = select i1 %15, ptr @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr null
  br label %17

17:                                               ; preds = %13, %11, %5
  %18 = phi ptr [ %6, %5 ], [ %12, %11 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE, i64 13}
!36 = !{ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 13}
!37 = !{ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 13}
!38 = !{ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev, ptr @_ZN11xercesc_2_713ValueVectorOfIjED2Ev, i64 8}
!39 = !{ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 8}
!40 = !{ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev, ptr @_ZN11xercesc_2_79XMLAttDefD2Ev, i64 13}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !54, i64 72}
!44 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !45, i64 0, !53, i64 56, !55, i64 60, !56, i64 64, !57, i64 68, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112}
!45 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !46, i64 0, !47, i64 8, !50, i64 12, !51, i64 16, !52, i64 20, !52, i64 21, !53, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!46 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!47 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !48, i64 0}
!51 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !48, i64 0}
!52 = !{!"bool", !48, i64 0}
!53 = !{!"int", !48, i64 0}
!54 = !{!"any pointer", !48, i64 0}
!55 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !48, i64 0}
!56 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !48, i64 0}
!57 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !48, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !49, i64 0}
!60 = !{!53, !53, i64 0}
!61 = !{!44, !53, i64 56}
!62 = !{!44, !55, i64 60}
!63 = !{!44, !56, i64 64}
!64 = !{!"function_entry_count", i64 13}
!65 = !{!44, !57, i64 68}
!66 = !{!48, !48, i64 0}
!67 = !{!54, !54, i64 0}
!68 = !{!44, !54, i64 96}
!69 = !{!44, !54, i64 104}
!70 = !{!44, !54, i64 112}
!71 = !{!"function_entry_count", i64 19496}
!72 = !{!45, !54, i64 32}
!73 = !{!"function_entry_count", i64 593014}
!74 = !{!45, !50, i64 12}
!75 = !{!"function_entry_count", i64 401820}
!76 = !{!45, !47, i64 8}
!77 = !{!45, !54, i64 40}
!78 = !{!45, !54, i64 48}
!79 = !{!"function_entry_count", i64 9774}
!80 = !{!"function_entry_count", i64 211020}
!81 = !{!82, !54, i64 24}
!82 = !{!"_ZTSN11xercesc_2_75QNameE", !46, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!83 = !{!"function_entry_count", i64 2192223}
!84 = !{!82, !54, i64 32}
!85 = !{!"function_entry_count", i64 6553673}
!86 = !{!82, !53, i64 20}
!87 = !{!"function_entry_count", i64 832990}
!88 = !{!89, !53, i64 4}
!89 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !52, i64 0, !53, i64 4, !53, i64 8, !54, i64 16, !54, i64 24}
!90 = !{!89, !52, i64 0}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!89, !53, i64 8}
!94 = !{!89, !54, i64 16}
!95 = !{!89, !54, i64 24}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"function_entry_count", i64 12}
!99 = !{!44, !54, i64 80}
!100 = !{!44, !54, i64 88}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !103, i64 0, !103, i64 2, !54, i64 8, !54, i64 16, !54, i64 24, !104, i64 32, !104, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !53, i64 96}
!103 = !{!"short", !48, i64 0}
!104 = !{!"long", !48, i64 0}
!105 = !{!"function_entry_count", i64 874884}
!106 = !{!107, !108, i64 28}
!107 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !46, i64 0, !52, i64 8, !52, i64 9, !52, i64 10, !52, i64 11, !103, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !108, i64 28, !109, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96}
!108 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !48, i64 0}
!109 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !48, i64 0}
!110 = !{!111, !54, i64 128}
!111 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !107, i64 0, !52, i64 104, !52, i64 105, !54, i64 112, !54, i64 120, !54, i64 128}
!112 = !{!107, !52, i64 8}
!113 = !{!"function_entry_count", i64 24}
!114 = !{!107, !54, i64 88}
!115 = !{!107, !54, i64 80}
