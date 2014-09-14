//
//  OptionalExt.swift
//  AgeOfLaika
//
//  Created by Kenneth Wilcox on 9/13/14.
//  Copyright (c) 2014 Kenneth Wilcox. All rights reserved.
//

import Foundation

extension Optional {
  func or(defaultValue: T) -> T {
    switch(self) {
    case .None:
      return defaultValue
    case .Some(let value):
      return value
    }
  }
}