// Copyright 2021 gorse Project Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package config

import (
	"github.com/zhenghaoz/gorse/model/cf"
	"github.com/zhenghaoz/gorse/model/ctr"
	"github.com/zhenghaoz/gorse/storage/cache"
	"github.com/zhenghaoz/gorse/storage/data"
)

type Settings struct {
	Config *Config

	// database clients
	CacheClient cache.Database
	DataClient  data.Database

	// recommendation models
	RankingModel        cf.MatrixFactorization
	RankingModelVersion int64
	ClickModel          ctr.FactorizationMachine
	ClickModelVersion   int64
}

func NewSettings() *Settings {
	return &Settings{
		Config:      GetDefaultConfig(),
		CacheClient: cache.NoDatabase{},
		DataClient:  data.NoDatabase{},
	}
}
