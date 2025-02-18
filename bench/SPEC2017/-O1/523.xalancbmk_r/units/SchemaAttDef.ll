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

$_ZN11xercesc_2_713ValueVectorOfIjEC2ERKS1_ = comdat any

$_ZN11xercesc_2_712SchemaAttDef5resetEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef17getDOMTypeInfoUriEv = comdat any

$_ZNK11xercesc_2_712SchemaAttDef18getDOMTypeInfoNameEv = comdat any

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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !42 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef11getFullNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i32 noundef 4, ptr noundef %1)
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

declare void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %4, i32 noundef %5, ptr noundef %6)
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
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %6)
          to label %15 unwind label %18, !prof !66

15:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %6)
          to label %16 unwind label %20, !prof !66

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
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %6) #9
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  resume { ptr, i32 } %23
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
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
  %16 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %8)
          to label %17 unwind label %20

17:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %8)
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
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %8) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  resume { ptr, i32 } %25
}

declare void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefC2EPKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef %10, ptr noundef %12)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  %14 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !60
  store i32 %14, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !62
  store i32 %17, ptr %15, align 4, !tbaa !62
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !63
  store i32 %20, ptr %18, align 8, !tbaa !63
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !65
  store i32 %23, ptr %21, align 4, !tbaa !65
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  store ptr null, ptr %24, align 8, !tbaa !43
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  store ptr %27, ptr %25, align 8, !tbaa !72
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  store ptr %30, ptr %28, align 8, !tbaa !73
  %31 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %32 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  store ptr %33, ptr %31, align 8, !tbaa !74
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  store ptr null, ptr %34, align 8, !tbaa !75
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  store ptr %37, ptr %35, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %41)
          to label %43 unwind label %65

43:                                               ; preds = %2
  %44 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %39, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !79
  %48 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %39, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !80
  %50 = load ptr, ptr %40, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %42, ptr noundef %45, ptr noundef %47, i32 noundef %49, ptr noundef %50)
          to label %51 unwind label %67

51:                                               ; preds = %43
  store ptr %42, ptr %24, align 8, !tbaa !43
  %52 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %1, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = icmp eq ptr %53, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %53, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !81
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %40, align 8, !tbaa !71
  %61 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %60)
          to label %62 unwind label %65

62:                                               ; preds = %59
  %63 = load ptr, ptr %52, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_713ValueVectorOfIjEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %64 unwind label %69

64:                                               ; preds = %62
  store ptr %61, ptr %34, align 8, !tbaa !75
  br label %71

65:                                               ; preds = %59, %2
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %72

67:                                               ; preds = %43
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %42, ptr noundef %41) #9
  br label %72

69:                                               ; preds = %62
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %61, ptr noundef %60) #9
  br label %72

71:                                               ; preds = %64, %55, %51
  ret void

72:                                               ; preds = %69, %67, %65
  %73 = phi { ptr, i32 } [ %70, %69 ], [ %66, %65 ], [ %68, %67 ]
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  resume { ptr, i32 } %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 !prof !42 {
  %3 = load i8, ptr %1, align 8, !tbaa !83, !range !84, !noundef !85
  store i8 %3, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !81
  store i32 %6, ptr %4, align 4, !tbaa !81
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !86
  store i32 %9, ptr %7, align 8, !tbaa !86
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !87
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  store ptr %13, ptr %11, align 8, !tbaa !88
  %14 = zext i32 %9 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = load ptr, ptr %13, align 8, !tbaa !58
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15)
  store ptr %19, ptr %10, align 8, !tbaa !87
  %20 = load i32, ptr %7, align 8, !tbaa !86
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %22, i1 false)
  %23 = load i32, ptr %4, align 4, !tbaa !81
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = load ptr, ptr %10, align 8, !tbaa !87
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
  %36 = load i32, ptr %4, align 4, !tbaa !81
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %30, label %29, !llvm.loop !89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !92

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #9, !prof !93
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !66

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.0", ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = load ptr, ptr %15, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17)
          to label %24 unwind label %21, !prof !94

21:                                               ; preds = %13
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #10
  unreachable

24:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #9
  br label %25

25:                                               ; preds = %24, %9
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDefD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_712SchemaAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDef10setAttNameEPKtS2_i(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !42 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712SchemaAttDef12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %0)
  invoke void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0, i32 noundef 4, ptr noundef %0)
          to label %3 unwind label %9

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_712SchemaAttDefE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %2, i64 0, i32 1
  %5 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !60
  store i32 %5, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %2, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %2, i64 0, i32 3
  store i32 1, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %2, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false)
  ret ptr %2

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #9
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712SchemaAttDef14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !42 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712SchemaAttDef12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !42 {
  ret ptr @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712SchemaAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !42 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %4 = load i16, ptr %1, align 8, !tbaa !95
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  br i1 %5, label %7, label %31

7:                                                ; preds = %2
  %8 = load i32, ptr %6, align 8, !tbaa !61
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !62
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17)
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %20)
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %22)
  %23 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %24)
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %26)
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_13ValueVectorOfIjEERNS_16XSerializeEngineE(ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %30)
  br label %53

31:                                               ; preds = %2
  %32 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %33 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %34 = load i32, ptr %3, align 4, !tbaa !60
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  store i32 %34, ptr %35, align 4, !tbaa !62
  %36 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %37 = load i32, ptr %3, align 4, !tbaa !60
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 %37, ptr %38, align 8, !tbaa !63
  %39 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %40 = load i32, ptr %3, align 4, !tbaa !60
  %41 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 4
  store i32 %40, ptr %41, align 4, !tbaa !65
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %43 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE)
  store ptr %43, ptr %42, align 8, !tbaa !99
  %44 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %45 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  store ptr %44, ptr %45, align 8, !tbaa !72
  %46 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  store ptr %46, ptr %47, align 8, !tbaa !73
  %48 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %49 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  store ptr %48, ptr %49, align 8, !tbaa !74
  %50 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 9
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_13ValueVectorOfIjEEibRNS_16XSerializeEngineE(ptr noundef nonnull %50, i32 noundef 8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %51 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 10
  %52 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE)
  store ptr %52, ptr %51, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %53

53:                                               ; preds = %31, %7
  ret void
}

declare void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_13ValueVectorOfIjEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_13ValueVectorOfIjEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SchemaAttDef5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %3, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = icmp eq i32 %7, 25
  br i1 %8, label %17, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %11, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = icmp eq i32 %15, 25
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %5
  %18 = phi ptr [ %3, %5 ], [ %11, %13 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %18, i64 0, i32 5
  store ptr null, ptr %19, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %17, %9, %13
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 1, ptr %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  store i32 1, ptr %22, align 8, !tbaa !63
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %7, %5 ], [ %11, %9 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !106, !range !84, !noundef !85
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %9, %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %20, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !106, !range !84, !noundef !85
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  br i1 %21, label %30, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %20, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  br label %46

30:                                               ; preds = %18, %26
  br i1 %8, label %34, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %7, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  br label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %36, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !107
  br label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !63
  %44 = icmp eq i32 %43, 1
  %45 = select i1 %44, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr null
  br label %46

46:                                               ; preds = %41, %38, %31, %13, %22, %1, %27
  %47 = phi ptr [ %29, %27 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %1 ], [ null, %22 ], [ null, %13 ], [ %33, %31 ], [ %40, %38 ], [ %45, %41 ]
  ret ptr %47
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %7, %5 ], [ %11, %9 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !106, !range !84, !noundef !85
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %9, %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %20, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !106, !range !84, !noundef !85
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  br i1 %21, label %30, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %20, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  br label %46

30:                                               ; preds = %18, %26
  br i1 %8, label %34, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %7, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  br label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %36, i64 0, i32 16
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  br label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !63
  %44 = icmp eq i32 %43, 1
  %45 = select i1 %44, ptr @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr null
  br label %46

46:                                               ; preds = %41, %38, %31, %13, %22, %1, %27
  %47 = phi ptr [ %29, %27 ], [ @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, %1 ], [ null, %22 ], [ null, %13 ], [ %33, %31 ], [ %40, %38 ], [ %45, %41 ]
  ret ptr %47
}

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE, i64 13}
!36 = !{ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 13}
!37 = !{ptr @_ZN11xercesc_2_712SchemaAttDefC2EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE, i64 13}
!38 = !{ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev, ptr @_ZN11xercesc_2_79XMLAttDefD2Ev, i64 13}
!39 = !{ptr @_ZN11xercesc_2_712SchemaAttDefD0Ev, ptr @_ZN11xercesc_2_712SchemaAttDefD2Ev, i64 13}
!40 = !{ptr @_ZN11xercesc_2_712SchemaAttDefD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 13}
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
!66 = !{!"branch_weights", i32 13, i32 0}
!67 = !{!45, !54, i64 32}
!68 = !{!45, !50, i64 12}
!69 = !{!45, !47, i64 8}
!70 = !{!45, !54, i64 40}
!71 = !{!45, !54, i64 48}
!72 = !{!44, !54, i64 80}
!73 = !{!44, !54, i64 88}
!74 = !{!44, !54, i64 96}
!75 = !{!44, !54, i64 104}
!76 = !{!44, !54, i64 112}
!77 = !{!78, !54, i64 24}
!78 = !{!"_ZTSN11xercesc_2_75QNameE", !46, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48}
!79 = !{!78, !54, i64 32}
!80 = !{!78, !53, i64 20}
!81 = !{!82, !53, i64 4}
!82 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !52, i64 0, !53, i64 4, !53, i64 8, !54, i64 16, !54, i64 24}
!83 = !{!82, !52, i64 0}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!82, !53, i64 8}
!87 = !{!82, !54, i64 16}
!88 = !{!82, !54, i64 24}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!"branch_weights", i32 0, i32 13}
!93 = !{!"VP", i32 0, i64 13, i64 7173745605608799217, i64 13}
!94 = !{!"VP", i32 0, i64 12, i64 -7405368087501025645, i64 12}
!95 = !{!96, !97, i64 0}
!96 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !97, i64 0, !97, i64 2, !54, i64 8, !54, i64 16, !54, i64 24, !98, i64 32, !98, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !53, i64 96}
!97 = !{!"short", !48, i64 0}
!98 = !{!"long", !48, i64 0}
!99 = !{!54, !54, i64 0}
!100 = !{!101, !102, i64 28}
!101 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !46, i64 0, !52, i64 8, !52, i64 9, !52, i64 10, !52, i64 11, !97, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !102, i64 28, !103, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96}
!102 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !48, i64 0}
!103 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !48, i64 0}
!104 = !{!105, !54, i64 128}
!105 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !101, i64 0, !52, i64 104, !52, i64 105, !54, i64 112, !54, i64 120, !54, i64 128}
!106 = !{!101, !52, i64 8}
!107 = !{!101, !54, i64 88}
!108 = !{!101, !54, i64 80}
