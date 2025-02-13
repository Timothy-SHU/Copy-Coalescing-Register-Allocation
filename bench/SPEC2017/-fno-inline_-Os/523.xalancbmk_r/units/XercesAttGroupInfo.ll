; ModuleID = 'XercesAttGroupInfo.cpp'
source_filename = "XercesAttGroupInfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XercesAttGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_718XercesAttGroupInfoE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XercesAttGroupInfoE, ptr @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev, ptr @_ZN11xercesc_2_718XercesAttGroupInfoD0Ev, ptr @_ZNK11xercesc_2_718XercesAttGroupInfo14isSerializableEv, ptr @_ZN11xercesc_2_718XercesAttGroupInfo9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_718XercesAttGroupInfo12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [19 x i8] c"XercesAttGroupInfo\00", align 1
@_ZN11xercesc_2_718XercesAttGroupInfo23classXercesAttGroupInfoE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_718XercesAttGroupInfo12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718XercesAttGroupInfoE = dso_local constant [36 x i8] c"N11xercesc_2_718XercesAttGroupInfoE\00", align 1
@_ZTIN11xercesc_2_718XercesAttGroupInfoE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XercesAttGroupInfoE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE = external global %"class.xercesc_2_7::XProtoType", align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_718XercesAttGroupInfoC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesAttGroupInfoC1EjjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoC2EjjPNS_13MemoryManagerE
@_ZN11xercesc_2_718XercesAttGroupInfoD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  store i32 %2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XercesAttGroupInfoE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #8
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #8
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(120) %19) #8
  br label %25

25:                                               ; preds = %21, %17
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_718XercesAttGroupInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718XercesAttGroupInfo17containsAttributeEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %20
  %11 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !50
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %11) #7
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #7
  %15 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %18, ptr noundef %1) #7
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %10
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %10, !llvm.loop !53

23:                                               ; preds = %20, %17, %7, %3
  %24 = phi i1 [ false, %3 ], [ false, %7 ], [ false, %20 ], [ true, %17 ]
  ret i1 %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !55
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !55
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !71
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !73 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !74

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !75
  %8 = load i16, ptr %1, align 2, !tbaa !75
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !77

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !78

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !75
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !79

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !80

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !75
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !81

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !82

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !75
  %28 = load i16, ptr %26, align 2, !tbaa !75
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !83, !llvm.loop !84

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_718XercesAttGroupInfo9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %20
  %11 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !50
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %11) #7
  %14 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %13) #7
  %15 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %18) #7
  br i1 %19, label %23, label %20

20:                                               ; preds = %10, %17
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %10, !llvm.loop !87

23:                                               ; preds = %17, %20, %7, %3
  %24 = phi ptr [ null, %3 ], [ null, %7 ], [ %13, %17 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718XercesAttGroupInfo12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0) #7
  tail call void @_ZN11xercesc_2_718XercesAttGroupInfoC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0) #7
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XercesAttGroupInfo14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_718XercesAttGroupInfo12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_718XercesAttGroupInfo23classXercesAttGroupInfoE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XercesAttGroupInfo9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %22

5:                                                ; preds = %2
  %6 = load i8, ptr %4, align 8, !tbaa !38, !range !88, !noundef !89
  %7 = icmp ne i8 %6, 0
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %7) #7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10) #7
  %12 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #7
  %15 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  %17 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  %19 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %20) #7
  br label %32

22:                                               ; preds = %2
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #7
  %24 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 2
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %24) #7
  %26 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 3
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %26) #7
  %28 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %28, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  %29 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %29, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  %30 = getelementptr inbounds %"class.xercesc_2_7::XercesAttGroupInfo", ptr %0, i64 0, i32 6
  %31 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %30) #7
  br label %32

32:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load i16, ptr %0, align 8, !tbaa !90
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !34 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #7
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE) #7
  store ptr %3, ptr %1, align 8, !tbaa !59
  ret ptr %0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !93 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #11
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_718XercesAttGroupInfoE", !40, i64 0, !41, i64 8, !43, i64 12, !43, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!40 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!41 = !{!"bool", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!39, !43, i64 12}
!46 = !{!39, !43, i64 16}
!47 = !{!39, !44, i64 48}
!48 = !{!"function_entry_count", i64 1068727}
!49 = !{!"function_entry_count", i64 5836268}
!50 = !{!39, !44, i64 24}
!51 = !{!39, !44, i64 32}
!52 = !{!39, !44, i64 40}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!56, !43, i64 12}
!56 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12SchemaAttDefEEE", !41, i64 8, !43, i64 12, !43, i64 16, !44, i64 24, !44, i64 32}
!57 = !{!56, !44, i64 32}
!58 = !{!56, !44, i64 24}
!59 = !{!44, !44, i64 0}
!60 = !{!"function_entry_count", i64 9774}
!61 = !{!62, !44, i64 72}
!62 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !63, i64 0, !43, i64 56, !67, i64 60, !68, i64 64, !69, i64 68, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112}
!63 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !40, i64 0, !64, i64 8, !65, i64 12, !66, i64 16, !41, i64 20, !41, i64 21, !43, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!64 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !42, i64 0}
!65 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !42, i64 0}
!66 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !42, i64 0}
!67 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !42, i64 0}
!68 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !42, i64 0}
!69 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !42, i64 0}
!70 = !{!"function_entry_count", i64 6553673}
!71 = !{!72, !43, i64 20}
!72 = !{!"_ZTSN11xercesc_2_75QNameE", !40, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!73 = !{!"function_entry_count", i64 1231717351}
!74 = !{!"branch_weights", i32 621, i32 -1469098093}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !42, i64 0}
!77 = !{!"branch_weights", i32 408901017, i32 1}
!78 = !{!"branch_weights", i32 267, i32 4}
!79 = !{!"branch_weights", i32 1, i32 4}
!80 = !{!"branch_weights", i32 156, i32 112}
!81 = !{!"branch_weights", i32 1, i32 112}
!82 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!83 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!84 = distinct !{!84, !54}
!85 = !{!"function_entry_count", i64 2192223}
!86 = !{!72, !44, i64 32}
!87 = distinct !{!87, !54}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!91, !76, i64 0}
!91 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !76, i64 0, !76, i64 2, !44, i64 8, !44, i64 16, !44, i64 24, !92, i64 32, !92, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !43, i64 96}
!92 = !{!"long", !42, i64 0}
!93 = !{!"function_entry_count", i64 1069174}
!94 = !{!95, !44, i64 40}
!95 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !96, i64 8, !44, i64 16, !43, i64 24, !44, i64 32, !44, i64 40}
!96 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
