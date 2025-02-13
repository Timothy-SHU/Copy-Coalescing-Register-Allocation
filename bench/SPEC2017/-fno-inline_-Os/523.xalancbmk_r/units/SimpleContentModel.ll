; ModuleID = 'SimpleContentModel.cpp'
source_filename = "SimpleContentModel.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SimpleContentModel" = type { %"class.xercesc_2_7::XMLContentModel", ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::XMLContentModel" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SubstitutionGroupComparator" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE = comdat any

$_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev = comdat any

$_ZN11xercesc_2_75QName6setURIEj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@.str = private unnamed_addr constant [23 x i8] c"SimpleContentModel.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = and i32 %6, 15
  switch i32 %7, label %222 [
    i32 0, label %8
    i32 1, label %34
    i32 2, label %57
    i32 3, label %93
    i32 4, label %129
    i32 5, label %175
  ], !prof !51

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %238, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 4, !tbaa !52, !range !53, !noundef !54
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %1, align 8, !tbaa !55
  %15 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  br i1 %13, label %21, label %16

16:                                               ; preds = %10
  %17 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %18 = load ptr, ptr %15, align 8, !tbaa !56
  %19 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %18) #7
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %17, ptr noundef %19) #7
  br i1 %20, label %32, label %238

21:                                               ; preds = %10
  %22 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %23 = load ptr, ptr %15, align 8, !tbaa !56
  %24 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %23) #7
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %238

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8, !tbaa !55
  %28 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #7
  %29 = load ptr, ptr %15, align 8, !tbaa !56
  %30 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %29) #7
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %28, ptr noundef %30) #7
  br i1 %31, label %32, label %238

32:                                               ; preds = %26, %16
  %33 = icmp eq i32 %2, 1
  br i1 %33, label %229, label %238

34:                                               ; preds = %4
  switch i32 %2, label %238 [
    i32 1, label %35
    i32 0, label %229
  ]

35:                                               ; preds = %34
  %36 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %37 = load i8, ptr %36, align 4, !tbaa !52, !range !53, !noundef !54
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %1, align 8, !tbaa !55
  %40 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  br i1 %38, label %46, label %41

41:                                               ; preds = %35
  %42 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #7
  %43 = load ptr, ptr %40, align 8, !tbaa !56
  %44 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %43) #7
  %45 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %42, ptr noundef %44) #7
  br i1 %45, label %229, label %238

46:                                               ; preds = %35
  %47 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %39) #7
  %48 = load ptr, ptr %40, align 8, !tbaa !56
  %49 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %48) #7
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %238

51:                                               ; preds = %46
  %52 = load ptr, ptr %1, align 8, !tbaa !55
  %53 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %52) #7
  %54 = load ptr, ptr %40, align 8, !tbaa !56
  %55 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %54) #7
  %56 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %53, ptr noundef %55) #7
  br i1 %56, label %229, label %238

57:                                               ; preds = %4
  %58 = icmp eq i32 %2, 0
  br i1 %58, label %229, label %59, !prof !57

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %61 = load i8, ptr %60, align 4, !tbaa !52, !range !53, !noundef !54
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %64 = zext i32 %2 to i64
  br i1 %62, label %76, label %65, !prof !58

65:                                               ; preds = %59, %73
  %66 = phi i64 [ %74, %73 ], [ 0, %59 ]
  %67 = getelementptr inbounds ptr, ptr %1, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !55
  %69 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %68) #7
  %70 = load ptr, ptr %63, align 8, !tbaa !56
  %71 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %70) #7
  %72 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %69, ptr noundef %71) #7
  br i1 %72, label %73, label %230

73:                                               ; preds = %65
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, %64
  br i1 %75, label %229, label %65, !llvm.loop !59

76:                                               ; preds = %59, %90
  %77 = phi i64 [ %91, %90 ], [ 0, %59 ]
  %78 = getelementptr inbounds ptr, ptr %1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !55
  %80 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %79) #7
  %81 = load ptr, ptr %63, align 8, !tbaa !56
  %82 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %81) #7
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %234, !prof !61

84:                                               ; preds = %76
  %85 = load ptr, ptr %78, align 8, !tbaa !55
  %86 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %85) #7
  %87 = load ptr, ptr %63, align 8, !tbaa !56
  %88 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %87) #7
  %89 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %86, ptr noundef %88) #7
  br i1 %89, label %90, label %234, !prof !61

90:                                               ; preds = %84
  %91 = add nuw nsw i64 %77, 1
  %92 = icmp eq i64 %91, %64
  br i1 %92, label %229, label %76, !prof !62, !llvm.loop !63

93:                                               ; preds = %4
  %94 = icmp eq i32 %2, 0
  br i1 %94, label %238, label %95, !prof !64

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %97 = load i8, ptr %96, align 4, !tbaa !52, !range !53, !noundef !54
  %98 = icmp eq i8 %97, 0
  %99 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %100 = zext i32 %2 to i64
  br i1 %98, label %112, label %101, !prof !65

101:                                              ; preds = %95, %109
  %102 = phi i64 [ %110, %109 ], [ 0, %95 ]
  %103 = getelementptr inbounds ptr, ptr %1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %104) #7
  %106 = load ptr, ptr %99, align 8, !tbaa !56
  %107 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %106) #7
  %108 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %105, ptr noundef %107) #7
  br i1 %108, label %109, label %232

109:                                              ; preds = %101
  %110 = add nuw nsw i64 %102, 1
  %111 = icmp eq i64 %110, %100
  br i1 %111, label %229, label %101, !llvm.loop !66

112:                                              ; preds = %95, %126
  %113 = phi i64 [ %127, %126 ], [ 0, %95 ]
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %115) #7
  %117 = load ptr, ptr %99, align 8, !tbaa !56
  %118 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %117) #7
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %236, !prof !67

120:                                              ; preds = %112
  %121 = load ptr, ptr %114, align 8, !tbaa !55
  %122 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %121) #7
  %123 = load ptr, ptr %99, align 8, !tbaa !56
  %124 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %123) #7
  %125 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %122, ptr noundef %124) #7
  br i1 %125, label %126, label %236, !prof !67

126:                                              ; preds = %120
  %127 = add nuw nsw i64 %113, 1
  %128 = icmp eq i64 %127, %100
  br i1 %128, label %229, label %112, !prof !68, !llvm.loop !69

129:                                              ; preds = %4
  %130 = icmp eq i32 %2, 0
  br i1 %130, label %238, label %131, !prof !70

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %133 = load i8, ptr %132, align 4, !tbaa !52, !range !53, !noundef !54
  %134 = icmp eq i8 %133, 0
  %135 = load ptr, ptr %1, align 8, !tbaa !55
  %136 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  br i1 %134, label %149, label %137, !prof !71

137:                                              ; preds = %131
  %138 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %135) #7
  %139 = load ptr, ptr %136, align 8, !tbaa !56
  %140 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %139) #7
  %141 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %138, ptr noundef %140) #7
  br i1 %141, label %173, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %1, align 8, !tbaa !55
  %144 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %143) #7
  %145 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !72
  %147 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %146) #7
  %148 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %144, ptr noundef %147) #7
  br i1 %148, label %173, label %238

149:                                              ; preds = %131
  %150 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %135) #7
  %151 = load ptr, ptr %136, align 8, !tbaa !56
  %152 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %151) #7
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %160, !prof !71

154:                                              ; preds = %149
  %155 = load ptr, ptr %1, align 8, !tbaa !55
  %156 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %155) #7
  %157 = load ptr, ptr %136, align 8, !tbaa !56
  %158 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %157) #7
  %159 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %156, ptr noundef %158) #7
  br i1 %159, label %173, label %160, !prof !73

160:                                              ; preds = %154, %149
  %161 = load ptr, ptr %1, align 8, !tbaa !55
  %162 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %161) #7
  %163 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !72
  %165 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %164) #7
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %238, !prof !74

167:                                              ; preds = %160
  %168 = load ptr, ptr %1, align 8, !tbaa !55
  %169 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %168) #7
  %170 = load ptr, ptr %163, align 8, !tbaa !72
  %171 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %170) #7
  %172 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %169, ptr noundef %171) #7
  br i1 %172, label %173, label %238, !prof !74

173:                                              ; preds = %154, %167, %137, %142
  %174 = icmp eq i32 %2, 1
  br i1 %174, label %229, label %238, !prof !71

175:                                              ; preds = %4
  switch i32 %2, label %220 [
    i32 0, label %238
    i32 2, label %176
  ], !prof !75

176:                                              ; preds = %175
  %177 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 4
  %178 = load i8, ptr %177, align 4, !tbaa !52, !range !53, !noundef !54
  %179 = icmp eq i8 %178, 0
  %180 = load ptr, ptr %1, align 8, !tbaa !55
  %181 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  br i1 %179, label %195, label %182, !prof !76

182:                                              ; preds = %176
  %183 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %180) #7
  %184 = load ptr, ptr %181, align 8, !tbaa !56
  %185 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %184) #7
  %186 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %183, ptr noundef %185) #7
  br i1 %186, label %187, label %238

187:                                              ; preds = %182
  %188 = getelementptr inbounds ptr, ptr %1, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !55
  %190 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %189) #7
  %191 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !72
  %193 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %192) #7
  %194 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %190, ptr noundef %193) #7
  br i1 %194, label %229, label %238

195:                                              ; preds = %176
  %196 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %180) #7
  %197 = load ptr, ptr %181, align 8, !tbaa !56
  %198 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %197) #7
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %238, !prof !76

200:                                              ; preds = %195
  %201 = load ptr, ptr %1, align 8, !tbaa !55
  %202 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %201) #7
  %203 = load ptr, ptr %181, align 8, !tbaa !56
  %204 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %203) #7
  %205 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %202, ptr noundef %204) #7
  br i1 %205, label %206, label %238, !prof !76

206:                                              ; preds = %200
  %207 = getelementptr inbounds ptr, ptr %1, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !55
  %209 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %208) #7
  %210 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !72
  %212 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %211) #7
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %214, label %238, !prof !76

214:                                              ; preds = %206
  %215 = load ptr, ptr %207, align 8, !tbaa !55
  %216 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %215) #7
  %217 = load ptr, ptr %210, align 8, !tbaa !72
  %218 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %217) #7
  %219 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %216, ptr noundef %218) #7
  br i1 %219, label %229, label %238, !prof !76

220:                                              ; preds = %175
  %221 = tail call i32 @llvm.umin.i32(i32 %2, i32 2)
  br label %238

222:                                              ; preds = %4
  %223 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %224 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  %225 = load ptr, ptr %224, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %223, ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 22, ptr noundef %225) #7
          to label %226 unwind label %227

226:                                              ; preds = %222
  tail call void @__cxa_throw(ptr nonnull %223, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

227:                                              ; preds = %222
  %228 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %223) #8
  resume { ptr, i32 } %228

229:                                              ; preds = %109, %126, %73, %90, %34, %51, %41, %214, %187, %173, %57, %32
  br label %238

230:                                              ; preds = %65
  %231 = trunc i64 %66 to i32
  br label %238

232:                                              ; preds = %101
  %233 = trunc i64 %102 to i32
  br label %238

234:                                              ; preds = %84, %76
  %235 = trunc i64 %77 to i32
  br label %238

236:                                              ; preds = %120, %112
  %237 = trunc i64 %113 to i32
  br label %238

238:                                              ; preds = %236, %234, %232, %230, %34, %220, %206, %214, %195, %200, %187, %182, %175, %173, %160, %167, %142, %129, %93, %46, %51, %41, %32, %21, %26, %16, %8, %229
  %239 = phi i32 [ -1, %229 ], [ 0, %8 ], [ 0, %16 ], [ 0, %26 ], [ 0, %21 ], [ 1, %32 ], [ 0, %41 ], [ 0, %51 ], [ 0, %46 ], [ 0, %93 ], [ 0, %129 ], [ 0, %142 ], [ 0, %167 ], [ 0, %160 ], [ 1, %173 ], [ %2, %175 ], [ 0, %182 ], [ 1, %187 ], [ 0, %200 ], [ 0, %195 ], [ 1, %214 ], [ 1, %206 ], [ %221, %220 ], [ 1, %34 ], [ %231, %230 ], [ %233, %232 ], [ %235, %234 ], [ %237, %236 ]
  ret i32 %239
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !78 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !79

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !80
  %8 = load i16, ptr %1, align 2, !tbaa !80
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !82

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !83

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !80
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !84

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !85

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !80
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !86

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !87

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !80
  %28 = load i16, ptr %26, align 2, !tbaa !80
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !88, !llvm.loop !89

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !91
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_718SimpleContentModel22validateContentSpecialEPPNS_5QNameEjjPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %7 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %4, ptr noundef %5) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = and i32 %9, 15
  switch i32 %10, label %192 [
    i32 0, label %11
    i32 1, label %39
    i32 2, label %58
    i32 3, label %85
    i32 4, label %112
    i32 5, label %152
  ]

11:                                               ; preds = %6
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %204, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %1, align 8, !tbaa !55
  %15 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #7
  %16 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %17) #7
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load ptr, ptr %1, align 8, !tbaa !55
  %22 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #7
  %23 = load ptr, ptr %16, align 8, !tbaa !56
  %24 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %23) #7
  %25 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %22, ptr noundef %24) #7
  br i1 %25, label %37, label %26

26:                                               ; preds = %20, %13
  %27 = load ptr, ptr %1, align 8, !tbaa !55
  %28 = load ptr, ptr %16, align 8, !tbaa !56
  %29 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %27, ptr noundef %28) #7
          to label %30 unwind label %35

30:                                               ; preds = %26
  br i1 %29, label %37, label %204

31:                                               ; preds = %77
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %206

33:                                               ; preds = %104
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %206

35:                                               ; preds = %196, %185, %166, %145, %140, %53, %26
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %206

37:                                               ; preds = %30, %20
  %38 = icmp eq i32 %2, 1
  br i1 %38, label %199, label %204

39:                                               ; preds = %6
  switch i32 %2, label %204 [
    i32 1, label %40
    i32 0, label %199
  ]

40:                                               ; preds = %39
  %41 = load ptr, ptr %1, align 8, !tbaa !55
  %42 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %41) #7
  %43 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %44) #7
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load ptr, ptr %1, align 8, !tbaa !55
  %49 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %48) #7
  %50 = load ptr, ptr %43, align 8, !tbaa !56
  %51 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %50) #7
  %52 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %49, ptr noundef %51) #7
  br i1 %52, label %199, label %53

53:                                               ; preds = %47, %40
  %54 = load ptr, ptr %1, align 8, !tbaa !55
  %55 = load ptr, ptr %43, align 8, !tbaa !56
  %56 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %54, ptr noundef %55) #7
          to label %57 unwind label %35

57:                                               ; preds = %53
  br i1 %56, label %199, label %204

58:                                               ; preds = %6
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %199, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %62 = zext i32 %2 to i64
  br label %63

63:                                               ; preds = %60, %82
  %64 = phi i64 [ 0, %60 ], [ %83, %82 ]
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  %67 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %66) #7
  %68 = load ptr, ptr %61, align 8, !tbaa !56
  %69 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %68) #7
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load ptr, ptr %65, align 8, !tbaa !55
  %73 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %72) #7
  %74 = load ptr, ptr %61, align 8, !tbaa !56
  %75 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %74) #7
  %76 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %73, ptr noundef %75) #7
  br i1 %76, label %82, label %77

77:                                               ; preds = %71, %63
  %78 = load ptr, ptr %65, align 8, !tbaa !55
  %79 = load ptr, ptr %61, align 8, !tbaa !56
  %80 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %78, ptr noundef %79) #7
          to label %81 unwind label %31

81:                                               ; preds = %77
  br i1 %80, label %82, label %200

82:                                               ; preds = %71, %81
  %83 = add nuw nsw i64 %64, 1
  %84 = icmp eq i64 %83, %62
  br i1 %84, label %199, label %63, !llvm.loop !100

85:                                               ; preds = %6
  %86 = icmp eq i32 %2, 0
  br i1 %86, label %204, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %89 = zext i32 %2 to i64
  br label %90

90:                                               ; preds = %87, %109
  %91 = phi i64 [ 0, %87 ], [ %110, %109 ]
  %92 = getelementptr inbounds ptr, ptr %1, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !55
  %94 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %93) #7
  %95 = load ptr, ptr %88, align 8, !tbaa !56
  %96 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %95) #7
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load ptr, ptr %92, align 8, !tbaa !55
  %100 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %99) #7
  %101 = load ptr, ptr %88, align 8, !tbaa !56
  %102 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %101) #7
  %103 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %100, ptr noundef %102) #7
  br i1 %103, label %109, label %104

104:                                              ; preds = %98, %90
  %105 = load ptr, ptr %92, align 8, !tbaa !55
  %106 = load ptr, ptr %88, align 8, !tbaa !56
  %107 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %105, ptr noundef %106) #7
          to label %108 unwind label %33

108:                                              ; preds = %104
  br i1 %107, label %109, label %202

109:                                              ; preds = %98, %108
  %110 = add nuw nsw i64 %91, 1
  %111 = icmp eq i64 %110, %89
  br i1 %111, label %199, label %90, !llvm.loop !101

112:                                              ; preds = %6
  %113 = icmp eq i32 %2, 0
  br i1 %113, label %204, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr %1, align 8, !tbaa !55
  %116 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %115) #7
  %117 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !56
  %119 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %118) #7
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load ptr, ptr %1, align 8, !tbaa !55
  %123 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %122) #7
  %124 = load ptr, ptr %117, align 8, !tbaa !56
  %125 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %124) #7
  %126 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %123, ptr noundef %125) #7
  br i1 %126, label %150, label %127

127:                                              ; preds = %121, %114
  %128 = load ptr, ptr %1, align 8, !tbaa !55
  %129 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %128) #7
  %130 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !72
  %132 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %131) #7
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load ptr, ptr %1, align 8, !tbaa !55
  %136 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %135) #7
  %137 = load ptr, ptr %130, align 8, !tbaa !72
  %138 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %137) #7
  %139 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %136, ptr noundef %138) #7
  br i1 %139, label %150, label %140

140:                                              ; preds = %134, %127
  %141 = load ptr, ptr %1, align 8, !tbaa !55
  %142 = load ptr, ptr %117, align 8, !tbaa !56
  %143 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %141, ptr noundef %142) #7
          to label %144 unwind label %35

144:                                              ; preds = %140
  br i1 %143, label %150, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr %1, align 8, !tbaa !55
  %147 = load ptr, ptr %130, align 8, !tbaa !72
  %148 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %146, ptr noundef %147) #7
          to label %149 unwind label %35

149:                                              ; preds = %145
  br i1 %148, label %150, label %204

150:                                              ; preds = %144, %149, %134, %121
  %151 = icmp eq i32 %2, 1
  br i1 %151, label %199, label %204

152:                                              ; preds = %6
  switch i32 %2, label %190 [
    i32 0, label %204
    i32 2, label %153
  ]

153:                                              ; preds = %152
  %154 = load ptr, ptr %1, align 8, !tbaa !55
  %155 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %154) #7
  %156 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !56
  %158 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %157) #7
  %159 = icmp eq i32 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load ptr, ptr %1, align 8, !tbaa !55
  %162 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %161) #7
  %163 = load ptr, ptr %156, align 8, !tbaa !56
  %164 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %163) #7
  %165 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %162, ptr noundef %164) #7
  br i1 %165, label %171, label %166

166:                                              ; preds = %160, %153
  %167 = load ptr, ptr %1, align 8, !tbaa !55
  %168 = load ptr, ptr %156, align 8, !tbaa !56
  %169 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %167, ptr noundef %168) #7
          to label %170 unwind label %35

170:                                              ; preds = %166
  br i1 %169, label %171, label %204

171:                                              ; preds = %170, %160
  %172 = getelementptr inbounds ptr, ptr %1, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !55
  %174 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %173) #7
  %175 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !72
  %177 = call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %176) #7
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load ptr, ptr %172, align 8, !tbaa !55
  %181 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %180) #7
  %182 = load ptr, ptr %175, align 8, !tbaa !72
  %183 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %182) #7
  %184 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %181, ptr noundef %183) #7
  br i1 %184, label %199, label %185

185:                                              ; preds = %179, %171
  %186 = load ptr, ptr %172, align 8, !tbaa !55
  %187 = load ptr, ptr %175, align 8, !tbaa !72
  %188 = invoke noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %186, ptr noundef %187) #7
          to label %189 unwind label %35

189:                                              ; preds = %185
  br i1 %188, label %199, label %204

190:                                              ; preds = %152
  %191 = call i32 @llvm.umin.i32(i32 %2, i32 2)
  br label %204

192:                                              ; preds = %6
  %193 = call ptr @__cxa_allocate_exception(i64 48) #8
  %194 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 5
  %195 = load ptr, ptr %194, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %193, ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 22, ptr noundef %195) #7
          to label %196 unwind label %197

196:                                              ; preds = %192
  invoke void @__cxa_throw(ptr nonnull %193, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
          to label %208 unwind label %35

197:                                              ; preds = %192
  %198 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %193) #8
  br label %206

199:                                              ; preds = %109, %82, %39, %47, %57, %189, %179, %150, %58, %37
  br label %204

200:                                              ; preds = %81
  %201 = trunc i64 %64 to i32
  br label %204

202:                                              ; preds = %108
  %203 = trunc i64 %91 to i32
  br label %204

204:                                              ; preds = %202, %200, %39, %190, %189, %170, %152, %150, %149, %112, %85, %57, %37, %30, %11, %199
  %205 = phi i32 [ -1, %199 ], [ 0, %11 ], [ 0, %30 ], [ 1, %37 ], [ 0, %57 ], [ 0, %85 ], [ 0, %112 ], [ 0, %149 ], [ 1, %150 ], [ %2, %152 ], [ 0, %170 ], [ 1, %189 ], [ %191, %190 ], [ 1, %39 ], [ %201, %200 ], [ %203, %202 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  ret i32 %205

206:                                              ; preds = %31, %35, %33, %197
  %207 = phi { ptr, i32 } [ %198, %197 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  resume { ptr, i32 } %207

208:                                              ; preds = %196
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !97 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr %1, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.xercesc_2_7::SubstitutionGroupComparator", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !104
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_727SubstitutionGroupComparator14isEquivalentToEPNS_5QNameES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !97 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_718SimpleContentModel28getContentLeafNameTypeVectorEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !105 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718SimpleContentModel30checkUniqueParticleAttributionEPNS_13SchemaGrammarEPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_12XMLValidatorEPjPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %8 = alloca %"class.xercesc_2_7::SubstitutionGroupComparator", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %10) #7
  %12 = load i32, ptr @_ZN11xercesc_2_715XMLContentModel10gEOCFakeIdE, align 4, !tbaa !106
  %13 = icmp eq i32 %11, %12
  %14 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4
  %15 = icmp eq i32 %11, %14
  %16 = select i1 %13, i1 true, i1 %15
  %17 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4
  %18 = icmp eq i32 %11, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = load ptr, ptr %9, align 8, !tbaa !56
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds i32, ptr %5, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !106
  tail call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %21, i32 noundef %24) #7
  br label %25

25:                                               ; preds = %20, %7
  %26 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #7
  %29 = icmp eq i32 %28, %12
  %30 = icmp eq i32 %28, %14
  %31 = select i1 %29, i1 true, i1 %30
  %32 = icmp eq i32 %28, %17
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %26, align 8, !tbaa !72
  %36 = zext i32 %28 to i64
  %37 = getelementptr inbounds i32, ptr %5, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !106
  tail call void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %35, i32 noundef %38) #7
  br label %39

39:                                               ; preds = %34, %25
  %40 = getelementptr inbounds %"class.xercesc_2_7::SimpleContentModel", ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !43
  %42 = and i32 %41, 15
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorC2EPNS_15GrammarResolverEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %2, ptr noundef %3) #7
  %45 = load ptr, ptr %9, align 8, !tbaa !56
  %46 = load ptr, ptr %26, align 8, !tbaa !72
  %47 = invoke noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef %1, i32 noundef 0, ptr noundef %45, i32 noundef 0, ptr noundef %46, ptr noundef nonnull %8) #7
          to label %48 unwind label %56

48:                                               ; preds = %44
  br i1 %47, label %49, label %58

49:                                               ; preds = %48
  %50 = load ptr, ptr %9, align 8, !tbaa !56
  %51 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %50) #7
          to label %52 unwind label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr %26, align 8, !tbaa !72
  %54 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %53) #7
          to label %55 unwind label %56

55:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 88, ptr noundef %6, ptr noundef %51, ptr noundef %54, ptr noundef null) #7
          to label %58 unwind label %56

56:                                               ; preds = %55, %52, %49, %44
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  resume { ptr, i32 } %57

58:                                               ; preds = %55, %48
  call void @_ZN11xercesc_2_727SubstitutionGroupComparatorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  br label %59

59:                                               ; preds = %58, %39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75QName6setURIEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !107 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !91
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_721XercesElementWildcard8conflictEPNS_13SchemaGrammarENS_15ContentSpecNode9NodeTypesEPNS_5QNameES4_S6_PNS_27SubstitutionGroupComparatorE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !97 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !111 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind optsize }

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
!35 = !{ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 68}
!36 = !{ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 177886}
!37 = !{ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 355716}
!38 = !{ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 355704}
!39 = !{ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @__cxa_allocate_exception, i64 1}
!40 = !{ptr @_ZNK11xercesc_2_718SimpleContentModel15validateContentEPPNS_5QNameEjj, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 86886}
!43 = !{!44, !49, i64 24}
!44 = !{!"_ZTSN11xercesc_2_718SimpleContentModelE", !45, i64 0, !46, i64 8, !46, i64 16, !49, i64 24, !50, i64 28, !46, i64 32}
!45 = !{!"_ZTSN11xercesc_2_715XMLContentModelE"}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !47, i64 0}
!50 = !{!"bool", !47, i64 0}
!51 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 17257, i32 10459, i32 52673, i32 6501}
!52 = !{!44, !50, i64 28}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!46, !46, i64 0}
!56 = !{!44, !46, i64 8}
!57 = !{!"branch_weights", i32 5062, i32 12196}
!58 = !{!"branch_weights", i32 12196, i32 1}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"branch_weights", i32 35870, i32 1}
!62 = !{!"branch_weights", i32 12196, i32 23674}
!63 = distinct !{!63, !60}
!64 = !{!"branch_weights", i32 1, i32 10459}
!65 = !{!"branch_weights", i32 10459, i32 1}
!66 = distinct !{!66, !60}
!67 = !{!"branch_weights", i32 65923, i32 1}
!68 = !{!"branch_weights", i32 10459, i32 55464}
!69 = distinct !{!69, !60}
!70 = !{!"branch_weights", i32 1, i32 52673}
!71 = !{!"branch_weights", i32 52673, i32 1}
!72 = !{!44, !46, i64 16}
!73 = !{!"branch_weights", i32 42226, i32 10448}
!74 = !{!"branch_weights", i32 10448, i32 1}
!75 = !{!"branch_weights", i32 6501, i32 6502, i32 42263001}
!76 = !{!"branch_weights", i32 6501, i32 1}
!77 = !{!44, !46, i64 32}
!78 = !{!"function_entry_count", i64 1231717351}
!79 = !{!"branch_weights", i32 621, i32 -1469098093}
!80 = !{!81, !81, i64 0}
!81 = !{!"short", !47, i64 0}
!82 = !{!"branch_weights", i32 408901017, i32 1}
!83 = !{!"branch_weights", i32 267, i32 4}
!84 = !{!"branch_weights", i32 1, i32 4}
!85 = !{!"branch_weights", i32 156, i32 112}
!86 = !{!"branch_weights", i32 1, i32 112}
!87 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!88 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!89 = distinct !{!89, !60}
!90 = !{!"function_entry_count", i64 6553673}
!91 = !{!92, !94, i64 20}
!92 = !{!"_ZTSN11xercesc_2_75QNameE", !93, i64 0, !94, i64 8, !94, i64 12, !94, i64 16, !94, i64 20, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48}
!93 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!94 = !{!"int", !47, i64 0}
!95 = !{!"function_entry_count", i64 2192223}
!96 = !{!92, !46, i64 32}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !48, i64 0}
!100 = distinct !{!100, !60}
!101 = distinct !{!101, !60}
!102 = !{!103, !46, i64 0}
!103 = !{!"_ZTSN11xercesc_2_727SubstitutionGroupComparatorE", !46, i64 0, !46, i64 8}
!104 = !{!103, !46, i64 8}
!105 = !{!"function_entry_count", i64 167463}
!106 = !{!94, !94, i64 0}
!107 = !{!"function_entry_count", i64 76}
!108 = !{!109, !46, i64 40}
!109 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !110, i64 8, !46, i64 16, !94, i64 24, !46, i64 32, !46, i64 40}
!110 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !47, i64 0}
!111 = !{!"function_entry_count", i64 5836268}
